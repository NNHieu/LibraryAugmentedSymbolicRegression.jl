

# python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10004/v1" --exp_idx 10 --dataset_path data/FeynmanEquations.csv  --dataset "Feynman" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.01 --llm_crossover_weight 0.01 --llm_gen_random_weight 0.01

# p = 0.005
# 
python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10001/v1" --exp_idx 50 --dataset_path data/FeynmanEquations.csv  --dataset "Feynman" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10

# p = 0.01
# 
python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10003/v1" --exp_idx 51 --dataset_path data/FeynmanEquations.csv  --dataset "InvFeynman" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10


python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10001/v1" --exp_idx 510 --dataset_path data/FeynmanEquations.csv  --dataset "InvFeynman" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10 --start_idx 50 --end_idx 100

python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10001/v1" --exp_idx 511 --dataset_path data/FeynmanEquations.csv  --dataset "InvFeynman" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10 --start_idx 100 --end_idx 200

python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10001/v1" --exp_idx 512 --dataset_path data/FeynmanEquations.csv  --dataset "InvFeynman" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10 --start_idx 200 --end_idx 300

python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10001/v1" --exp_idx 513 --dataset_path data/FeynmanEquations.csv  --dataset "InvFeynman" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10 --start_idx 300 --end_idx 400

python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10001/v1" --exp_idx 51 --dataset_path data/FeynmanEquations.csv  --dataset "InvFeynman" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10 --start_idx 400 --end_idx 500


python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10001/v1" --exp_idx 52 --dataset_path data/FeynmanEquations.csv  --dataset "Bio" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10

python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10001/v1" --exp_idx 53 --dataset_path data/FeynmanEquations.csv  --dataset "Chem" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10  --start_idx 16

python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10001/v1" --exp_idx 54 --dataset_path data/FeynmanEquations.csv  --dataset "Mat" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10  --start_idx 10

python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10001/v1" --exp_idx 55 --dataset_path data/FeynmanEquations.csv  --dataset "Phy" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10  --start_idx 17


python -m experiments.main --use_llm --use_prompt_evol --model "gpt-4o-mini-2024-07-18" --api_key "openai_api.key" --model_url "https://api.openai.com/v1" --exp_idx 60 --dataset_path data/FeynmanEquations.csv  --dataset "Feynman" --prompts_path prompts/ --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10 --start_idx 0 --end_idx 100

python -m experiments.main --use_llm --use_prompt_evol --model "gpt-4o-mini-2024-07-18" --api_key "openai_api.key" --model_url "https://api.openai.com/v1" --exp_idx 61 --dataset_path data/FeynmanEquations.csv  --dataset "InvFeynman" --prompts_path prompts/ --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10 --start_idx 0 --end_idx 100