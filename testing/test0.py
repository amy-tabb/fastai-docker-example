import torch
from fastai.vision import *
from fastai.metrics import error_rate

print("Is cuda available?", torch.cuda.is_available())

print("Is cuDNN version:", torch.backends.cudnn.version())

print("cuDNN enabled? ", torch.backends.cudnn.enabled)

x = torch.rand(5, 3)
print(x)

