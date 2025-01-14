

# python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10004/v1" --exp_idx 10 --dataset_path data/FeynmanEquations.csv  --dataset "Feynman" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.01 --llm_crossover_weight 0.01 --llm_gen_random_weight 0.01

# p = 0.005
# 
python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10001/v1" --exp_idx 50 --dataset_path data/FeynmanEquations.csv  --dataset "Feynman" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10

# p = 0.01
# 
python -m experiments.main --use_llm --use_prompt_evol --model "meta-llama/Llama-3.1-8B-Instruct" --api_key "vllm_api.key" --model_url "http://localhost:10003/v1" --exp_idx 51 --dataset_path data/FeynmanEquations.csv  --dataset "InvFeynman" --prompts_path prompts/  --start_idx 0 --use_hints --hints_path hints.json --llm_mutate_weight 0.005 --llm_crossover_weight 0.005 --llm_gen_random_weight 0.005 --num_iterations 25 --num_populations 10