#!/bin/bash
python run_pretraining.py\
 --task_index=$1
 --input_file=./tf_examples.tfrecord\ 
 --output_dir=./pretraining_output \
 --do_train=True \
 --do_eval=True \
 --bert_config_file=./bert_config.json \
 --num_train_steps=20 \
 --num_warmup_steps=10 \
 --learning_rate=2e-5 \
 --multi_worker=True
