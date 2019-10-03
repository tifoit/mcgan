MODEL_NAME=$1
THEANO_FLAGS='device=gpu0, floatX=float32, nvcc.fastmath=True' python train_mcgan.py --model_name $MODEL_NAME
THEANO_FLAGS='device=gpu0, floatX=float32, nvcc.fastmath=True' python batchnorm_mcgan.py --model_name $MODEL_NAME
THEANO_FLAGS='device=gpu0, floatX=float32, nvcc.fastmath=True' python train_predict_z.py --model_name $MODEL_NAME
THEANO_FLAGS='device=gpu0, floatX=float32, nvcc.fastmath=True' python batchnorm_precit_z.py --model_name $MODEL_NAME
python pack_model.py --model_name $MODEL_NAME

