${T5_ENV}/bin/t5_mesh_transformer \
    --gcp_project="${PROJECT}" \
    --gin_param="utils.run.mesh_shape = 'model:2,batch:2'" \
    --gin_param="utils.run.mesh_devices = ['gpu:0','gpu:1','gpu:2','gpu:3']" \
    --model_dir="${MODEL_DIR}/finetuned" --gin_file="${MODEL_DIR}/large/operative_config.gin" --gin_file="${GIN_DIR}/sample_decode.gin" --gin_file="${GIN_DIR}/infer.gin" --gin_param="utils.run.mode = 'infer'" --gin_param="infer_checkpoint_step = 13157000" --gin_param="input_filename = '${INPUT_FILE}'" --gin_param="output_filename = '${OUTPUT_FILE}'" \
    --gin_param="SentencePieceVocabulary.sentencepiece_model_file = '${MODEL_DIR}/sentencepiece.model'" \
    --pdb
