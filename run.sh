#!/usr/bin/env bash
DATA_DIR="data"

MODEL_DIR="bert_pretrain"
OUTPUT_DIR="output/save_dict"
PREDICT_DIR="data/"
MAX_LENGTH=128

echo "Start running"

if [ $# == 0 ]; then
    python run.py \
    --data_dir=${DATA_DIR} \
    --model_dir=${MODEL_DIR} \
    --output_dir=${OUTPUT_DIR} \
    --predict_path=${PREDICT_DIR} \
    --do_train=True \
    --max_length=${MAX_LENGTH} \
    --batch_size=16 \
    --learning_rate=1e-5 \
    --epochs=10 \
    --seed=2021
elif [ $1 == "predict" ]; then
  python run.py \
      --data_dir=${DATA_DIR} \
      --model_dir=${MODEL_DIR} \
      --output_dir=${OUTPUT_DIR} \
      --predict_path=${PREDICT_DIR} \
      --do_train=False \
      --max_length=${MAX_LENGTH} \
      --batch_size=16 \
      --learning_rate=1e-5 \
      --epochs=10 \
      --seed=2021
fi