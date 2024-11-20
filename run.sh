python train.py --batch_size=32 --compile=True  --max_iters=20 --eval_only=True  > train_pt2_eval_$(mydate).log 2>&1 ;
python train.py --batch_size=32 --compile=False  --max_iters=20 --eval_only=True  > train_eager_eval_$(mydate).log 2>&1

python train.py --batch_size=32 --compile=True  --max_iters=20   > train_pt2_cold$(mydate).log 2>&1 ;
python train.py --batch_size=32 --compile=False  --max_iters=20  > train_eager_cold$(mydate).log 2>&1;
notify done

# for cold compile time

python train.py --batch_size=32 --compile=True  --max_iters=5 --log_interval=2
python train.py --batch_size=32 --compile=False  --max_iters=5 --log_interval=2
#reduce overhead
python train2.py --batch_size=32 --compile=True  --max_iters=5 --log_interval=2

python train-max.py --batch_size=32 --compile=True  --max_iters=5 --log_interval=2
