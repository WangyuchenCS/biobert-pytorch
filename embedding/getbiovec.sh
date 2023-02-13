


# data_type = 'hESC','hHEP','mDC','mESC','mHSC-E','mHSC-GM','mHSC-L' # 六个数据集
# num = [500,1000]
# 使用Huggingface38的环境
export MAX_LENGTH=384
export DATA_PATH=C:/Users/research/Desktop/Github_GRI_project/data_split/Specific/hESC/TFs_1000/bio_name.txt
export OUTPUT_PATH=C:/Users/research/Desktop/Github_GRI_project/data_split/Specific/hESC/TFs_1000/bio_name_emb768.h5
export BATCH_SIZE=64

python run_embedding.py \
    --model_name_or_path dmis-lab/biobert-base-cased-v1.2 \
    --max_seq_length  ${MAX_LENGTH} \
    --data_path ${DATA_PATH} \
    --output_path ${OUTPUT_PATH} \
    --batch_size ${BATCH_SIZE} \
    --pooling mean
    # --keep_text_order False


# C:\Users\research\Desktop\Github_GRI_project\biobert-pytorch\embedding\getbiovec.sh
# ./getbiovec.sh