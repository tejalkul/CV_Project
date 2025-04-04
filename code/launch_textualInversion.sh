# export MODEL_NAME="runwayml/stable-diffusion-v1-5"
# # export MODEL_NAME="duongna/stable-diffusion-v1-4-flax"
# export INPUT_GENRE="Impressionism"

# export OUTPUT_DIR="embeddings/${INPUT_GENRE}"
# export INPUT_DATA_DIR="wikiart_curated/kaggle/working/wikiart_curated/${INPUT_GENRE}"


# export TEXTUAL_INVERSION_FILE="diffusers/examples/textual_inversion/textual_inversion.py"
# python ${TEXTUAL_INVERSION_FILE} \
# --pretrained_model_name_or_path=${MODEL_NAME} \
# --train_data_dir=${INPUT_DATA_DIR} \
# --learnable_property="style" \
# --placeholder_token="<impressionism-style>" \
# --initializer_token="painting" \
# --resolution=256 \
# --train_batch_size=1 \
# --gradient_accumulation_steps=1 \
# --max_train_steps=1000 \
# --learning_rate=5e-4 \
# --scale_lr \
# --lr_scheduler="constant" \
# --lr_warmup_steps=0 \
# --push_to_hub \
# --output_dir=${OUTPUT_DIR} \
# --mixed_precision=fp16 \
# --enable_xformers_memory_efficient_attention


# !/bin/bash

# export MODEL_NAME="runwayml/stable-diffusion-v1-5"
# # export INPUT_GENRE="Abstract_Expressionism"
# # export INPUT_GENRE="Action_painting"
# export INPUT_GENRE="Analytical_Cubism"
# export INPUT_DATA_DIR="wikiart_curated/kaggle/working/wikiart_curated/${INPUT_GENRE}"
# export OUTPUT_DIR="embeddings/${INPUT_GENRE}"
# export TEXTUAL_INVERSION_FILE="diffusers/examples/textual_inversion/textual_inversion.py"
# export INITIALIZER="painting"

# python ${TEXTUAL_INVERSION_FILE} \
# --pretrained_model_name_or_path=${MODEL_NAME} \
# --train_data_dir=${INPUT_DATA_DIR} \
# --learnable_property="style" \
# --placeholder_token="<${INPUT_GENRE}-style>" \
# --initializer_token="${INITIALIZER}" \
# --resolution=256 \
# --train_batch_size=1 \
# --gradient_accumulation_steps=1 \
# --max_train_steps=1000 \
# --learning_rate=5e-4 \
# --scale_lr \
# --lr_scheduler="constant" \
# --lr_warmup_steps=0 \
# --push_to_hub \
# --output_dir=${OUTPUT_DIR} \
# --mixed_precision=fp16 \
# --enable_xformers_memory_efficient_attention

# Dreambooth dataset

# export MODEL_NAME="runwayml/stable-diffusion-v1-5"
# export INPUT_GENRE="Cat"
# export INPUT_DATA_DIR="dataset/cat"
# export OUTPUT_DIR="embeddings/dreambooth/${INPUT_GENRE}"
# export TEXTUAL_INVERSION_FILE="diffusers/examples/textual_inversion/textual_inversion.py"
# export INITIALIZER="cat"


# python ${TEXTUAL_INVERSION_FILE} \
# --pretrained_model_name_or_path=${MODEL_NAME} \
# --train_data_dir=${INPUT_DATA_DIR} \
# --learnable_property="object" \
# --placeholder_token="<${INPUT_GENRE}>" \
# --initializer_token="${INITIALIZER}" \
# --resolution=256 \
# --train_batch_size=1 \
# --gradient_accumulation_steps=4 \
# --max_train_steps=3000 \
# --learning_rate=5e-4 \
# --scale_lr \
# --lr_scheduler="constant" \
# --lr_warmup_steps=0 \
# --push_to_hub \
# --output_dir=${OUTPUT_DIR} \
# --mixed_precision=fp16 \
# --enable_xformers_memory_efficient_attention


# export MODEL_NAME="runwayml/stable-diffusion-v1-5"
# export INPUT_GENRE="shiny_sneaker"
# export INPUT_DATA_DIR="dataset/shiny_sneaker"
# export OUTPUT_DIR="embeddings/dreambooth/${INPUT_GENRE}"
# export TEXTUAL_INVERSION_FILE="diffusers/examples/textual_inversion/textual_inversion.py"
# export INITIALIZER="shiny_sneaker"


# python ${TEXTUAL_INVERSION_FILE} \
# --pretrained_model_name_or_path=${MODEL_NAME} \
# --train_data_dir=${INPUT_DATA_DIR} \
# --learnable_property="object" \
# --placeholder_token="<${INPUT_GENRE}>" \
# --initializer_token="${INITIALIZER}" \
# --resolution=256 \
# --train_batch_size=1 \
# --gradient_accumulation_steps=4 \
# --max_train_steps=1000 \
# --learning_rate=5e-4 \
# --scale_lr \
# --lr_scheduler="constant" \
# --lr_warmup_steps=0 \
# --push_to_hub \
# --output_dir=${OUTPUT_DIR} \
# --mixed_precision=fp16 \
# --enable_xformers_memory_efficient_attention


export MODEL_NAME="runwayml/stable-diffusion-v1-5"
export INPUT_GENRE="pink_sunglasses"
export INPUT_DATA_DIR="dataset/pink_sunglasses"
export OUTPUT_DIR="embeddings/dreambooth/${INPUT_GENRE}"
export TEXTUAL_INVERSION_FILE="diffusers/examples/textual_inversion/textual_inversion.py"
export INITIALIZER="sunglasses"


python ${TEXTUAL_INVERSION_FILE} \
--pretrained_model_name_or_path=${MODEL_NAME} \
--train_data_dir=${INPUT_DATA_DIR} \
--learnable_property="object" \
--placeholder_token="<${INPUT_GENRE}>" \
--initializer_token="${INITIALIZER}" \
--resolution=256 \
--train_batch_size=2 \
--gradient_accumulation_steps=4 \
--max_train_steps=1000 \
--learning_rate=5e-4 \
--scale_lr \
--lr_scheduler="constant" \
--lr_warmup_steps=0 \
--push_to_hub \
--output_dir=${OUTPUT_DIR} \
--mixed_precision=fp16 \
--enable_xformers_memory_efficient_attention
