from typing import Optional, Any
from dataclasses import dataclass

from pathlib import Path
import json
import sympy
import numpy as np

from huggingface_hub import snapshot_download

from typing import Optional, Any
from dataclasses import dataclass
import sympy


@dataclass
class Equation:
    symbols: list
    symbol_descs: list
    symbol_properties: list
    expression: str
    desc: Optional[str] = None

    sympy_format: Optional[sympy.Expr] = None
    lambda_format: Optional[callable] = None
    program_format: Optional[str] = None

@dataclass
class SEDTask:
    name: str
    symbols: list
    symbol_descs: list
    symbol_properties: list
    samples: Any
    desc: Optional[str] = None

@dataclass
class Problem:
    dataset_identifier: str
    equation_idx: str
    gt_equation: Equation
    samples: Any

    def create_task(self) -> SEDTask:
        return SEDTask(name=self.equation_idx,
                        symbols=self.gt_equation.symbols,
                        symbol_descs=self.gt_equation.symbol_descs,
                        symbol_properties=self.gt_equation.symbol_properties,
                        samples=self.samples['train'])
    @property
    def train_samples(self):
        return self.samples['train']
    
    @property
    def test_samples(self):
        return self.samples['test']
    

FEYNMAN_REPO_ID = "nnheui/sed_feynman"
TRANSFORMED_FEYNMAN_REPO_ID = "nnheui/sed_transformed_feynman"

def _download(repo_id):
    return snapshot_download(repo_id=repo_id, 
                      repo_type="dataset")

class FeynmanDataModule:
    def __init__(self):
        self._dataset_dir = Path(_download(repo_id=FEYNMAN_REPO_ID))
        self._dataset_identifier = 'feynman'
    
    def setup(self, description_path=None):
        if description_path is None:
            with open(self._dataset_dir / 'equations.jsonl', 'r') as f:
                equations = [json.loads(line) for line in f.readlines()]
        else:
            with open(description_path, 'r') as f:
                equations = [json.loads(line) for line in f.readlines()]
        sample_dir = self._dataset_dir / "samples"
        self.problems = [Problem(dataset_identifier=self._dataset_identifier,
                                 equation_idx = e['name'],
                                 gt_equation=Equation(
                                    symbols=e['symbols'],
                                    symbol_descs=e['symbol_descs'],
                                    symbol_properties=e['symbol_properties'],
                                    expression=e['expression'],
                                 ),
                                 samples=np.load(sample_dir / (e['name'] + ".npz"))
        ) for e in equations]
    
        self.name2id = {p.equation_idx: i for i,p in enumerate(self.problems)}

    @property
    def name(self):
        return "feynman_100000"

class TransformedFeynmanDataModule:
    def __init__(self):
        self._dataset_dir = Path(_download(repo_id=TRANSFORMED_FEYNMAN_REPO_ID))
        self._dataset_identifier = 'transformed_feynman'
    
    def setup(self, description_path=None):
        if description_path is None:
            with open(self._dataset_dir / 'equations.jsonl', 'r') as f:
                equations = [json.loads(line) for line in f.readlines()]
        else:
            with open(description_path, 'r') as f:
                equations = [json.loads(line) for line in f.readlines()]
        sample_dir = self._dataset_dir / "samples"
        self.problems = [Problem(dataset_identifier=self._dataset_identifier,
                                 equation_idx = e['name'],
                                 gt_equation=Equation(
                                    symbols=e['symbols'],
                                    symbol_descs=e['symbol_descs'],
                                    symbol_properties=e['symbol_properties'],
                                    expression=e['expression'],
                                 ),
                                 samples=np.load(sample_dir / (e['name'] + ".npz"))
        ) for e in equations]

        self.name2id = {p.equation_idx: i for i,p in enumerate(self.problems)}

    @property
    def name(self):
        return "invfeynman_100000"