import torch
from fastai.vision import *
from fastai.metrics import error_rate

print("Is cuda available?", torch.cuda.is_available())

x = torch.rand(5, 3)
print(x)



