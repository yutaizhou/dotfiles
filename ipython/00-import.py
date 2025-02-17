import functools as ft
import itertools as it
import os
import sys
from collections import Counter, defaultdict, deque, namedtuple
from copy import deepcopy
from dataclasses import dataclass
from functools import partial

print("\n=== Importing modules ===")
import matplotlib.pyplot as plt
import numpy as np
import numpy.random as npr
import numpy.linalg as npl
import scipy as sp
print("imported np, sp, plt")

try:
    from einops import rearrange, reduce, repeat
    print("imported einops (rearrange, reduce, repeat)")
except ModuleNotFoundError:
    print("einops not installed")

try:
    import jax
    import jax.numpy as jnp
    import jax.numpy.linalg as jnl
    import jax.nn as jnn
    import jax.random as jr
    import jax.scipy as jsp
    print("imported jax (jnp, jr, jsp), initialized key + subkey")
    key = jr.key(0)
    key, subkey = jr.split(key)
except ModuleNotFoundError:
    print("jax not installed")

try:
    import flax
    import optax
    from flax import nnx
    print("imported flax (nnx), optax")
except ModuleNotFoundError:
    print("flax / optax not installed")


try:
    import torch
    import torch.nn as nn
    import torch.nn.functional as F
    print("imported torch")
except ModuleNotFoundError:
    print("torch not installed")
print("=== Importing finished ===")
