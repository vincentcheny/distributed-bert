#!/usr/bin/env bash

python3 run_pretraining.py \
  --input_file=sample.tfrecord \
  --output_dir=sample_wiki_uncased_L-12_H-768_A-12 \
  --do_train=True \
  --do_eval=True \
  --bert_config_file=bert_config.json \
  --init_checkpoint=bert_model.ckpt \
  --train_batch_size=32 \
  --max_seq_length=128 \
  --max_predictions_per_seq=20 \
  --num_train_steps=1000 \
  --num_warmup_steps=10 \
  --multi_worker=true \
  --learning_rate=2e-5