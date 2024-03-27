#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python ../../src/train_bash.py \
    --stage sft \
    --do_eval \
    --model_name_or_path /data0/ryang/Llama-2-7b-hf \
    --adapter_name_or_path /data0/ryang/saves/LLaMA2-7B/lora/commonsense \
    --dataset commonsense \
    --dataset_dir ../../data \
    --template default \
    --finetuning_type lora \
    --output_dir ../../saves/LLaMA2-7B/lora/predict \
    --overwrite_cache \
    --overwrite_output_dir \
    --cutoff_len 1024 \
    --preprocessing_num_workers 16 \
    --per_device_eval_batch_size 1 \
    --max_samples 20 \
    --predict_with_generate
