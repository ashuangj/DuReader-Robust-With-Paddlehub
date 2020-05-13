export FLAGS_eager_delete_tensor_gb=0.0
export CUDA_VISIBLE_DEVICES=0,1,2,3

DATASET_PATH="../data"

python -u reading_comprehension.py \
                   --dataset_path=${DATASET_PATH} \
                   --batch_size=8 \
                   --use_gpu=True \
                   --checkpoint_dir="./ckpt_dureader" \
                   --learning_rate=3e-5 \
                   --weight_decay=0.01 \
                   --warmup_proportion=0.1 \
                   --num_epoch=2 \
                   --max_seq_len=512 \
                   --use_data_parallel=True