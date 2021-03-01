${T5_ENV}/bin/t5_mesh_transformer \
    --gin_param="utils.run.mesh_shape = 'model:2,batch:2'" \
    --gin_param="utils.run.mesh_devices = ['gpu:0','gpu:1','gpu:2','gpu:3']" \
    --model_dir="${MODEL_DIR}/large/" --t5_tfds_data_dir=${DATA_DIR} --batch_size="1024" --gin_file="${MODEL_DIR}/large/operative_config.gin" \
    --gin_file="${GIN_DIR}/learning_rate_schedules/constant_0_001.gin" \
    --gin_param="utils.run.train_dataset_fn = @t5.models.mesh_transformer.tsv_dataset_fn" --gin_param="tsv_dataset_fn.filename = '${DATA_FILE}'" --gin_param="tokens_per_batch=512"
