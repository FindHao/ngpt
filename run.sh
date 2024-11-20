python train.py --batch_size=32 --compile=True  --max_iters=20 --eval_only=True  > train_pt2_eval_$(mydate).log 2>&1 ;
python train.py --batch_size=32 --compile=False  --max_iters=20 --eval_only=True  > train_eager_eval_$(mydate).log 2>&1

python train.py --batch_size=32 --compile=True  --max_iters=20   > train_pt2_cold$(mydate).log 2>&1 ;
python train.py --batch_size=32 --compile=False  --max_iters=20  > train_eager_cold$(mydate).log 2>&1;
notify done
