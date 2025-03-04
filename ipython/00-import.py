print("\n=== Importing modules ===")

import functools as ft
import itertools as it
import os
import sys
from collections import Counter, defaultdict, deque, namedtuple
from copy import deepcopy
from dataclasses import dataclass
from datetime import datetime
from functools import partial
from pathlib import Path

print(
    "imported ft, it, os, sys, collections, deepcopy, dataclass, datetime, partial, Path"
)

import matplotlib.pyplot as plt
import numpy as np
import numpy.linalg as npl
import numpy.random as npr
import scipy as sp

print("imported np, sp, plt")


try:
    os.environ["JAX_PLATFORMS"] = "cpu"
    os.environ["JAX_DISABLE_JIT"] = "1"
    os.environ["XLA_PYTHON_CLIENT_PREALLOCATE"] = "false"

    import jax
    import jax.nn as jnn
    import jax.numpy as jnp
    import jax.numpy.linalg as jnpl
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

try:
    from einops import rearrange, reduce, repeat

    print("imported einops (rearrange, reduce, repeat)")
except ModuleNotFoundError:
    print("einops not installed")


print("=== Importing finished ===")
