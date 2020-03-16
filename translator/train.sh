dataset=../translator_data/data/cs
python3 train.py --token_vocab ${dataset}/token_vocab\
                --concept_vocab ${dataset}/concept_vocab\
                --predictable_token_vocab ${dataset}/predictable_token_vocab\
                --relation_vocab ${dataset}/relation_vocab\
                --token_char_vocab ${dataset}/token_char_vocab\
                --concept_char_vocab ${dataset}/concept_char_vocab\
                --train_data ${dataset}/train.txt \
                --dev_data ${dataset}/dev.txt  \
                --rnn_hidden_size 256 \
                --rnn_num_layers 2 \
                --token_char_dim 32\
                --token_dim 300\
                --concept_char_dim 32\
                --concept_dim 300 \
                --rel_dim 100 \
                --cnn_filter 3 256\
                --char2word_dim 128\
                --char2concept_dim 128\
                --embed_dim 512\
                --ff_embed_dim 1024\
                --num_heads 8\
                --snt_layers 1\
                --graph_layers 4\
                --inference_layers 3\
                --dropout 0.2\
                --unk_rate 0.33\
                --epochs 1000\
                --train_batch_size 88888\
                --dev_batch_size 44444 \
                --lr 1e-3 \
                --warmup_steps 4000\
                --print_every 100 \
                --eval_every 1000 \
                --ckpt ckpt\
                --world_size 4\
                --gpus 4\
                --MASTER_ADDR localhost\
                --MASTER_PORT 29505\
                --start_rank 0
