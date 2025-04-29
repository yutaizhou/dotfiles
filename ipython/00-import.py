print("\n=== Importing modules ===")

import functools as ft
import itertools as it
import math
import os
import sys
from collections import Counter, defaultdict, deque, namedtuple
from copy import deepcopy
from dataclasses import dataclass
from datetime import datetime
from functools import partial
from pathlib import Path
from typing import NamedTuple

print(
    "imported ft, it, math, os, sys, collections, deepcopy, dataclass, datetime, partial, Path"
)

import matplotlib.pyplot as plt
import numpy as np
import numpy.linalg as npl
import numpy.random as npr
import scipy as sp

print("imported np, sp, plt")

try:
    from einops import rearrange, reduce, repeat

    print("imported einops (rearrange, reduce, repeat)")
except ModuleNotFoundError:
    print("einops not installed")


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


def import_flax_linen():
    try:
        import flax
        import optax
        from flax import linen as nn

        print("imported flax (linen), optax")
    except ModuleNotFoundError:
        print("flax / optax not installed")


def import_flax_nnx():
    try:
        import flax
        import optax
        from flax import nnx

        print("imported flax (nnx), optax")
    except ModuleNotFoundError:
        print("flax / optax not installed")


def import_torch():
    try:
        import torch
        import torch.nn as nn
        import torch.nn.functional as F

        print("imported torch")
    except ModuleNotFoundError:
        print("torch not installed")


print(
    "More available modules:\n",
    "  import_flax_linen()\n",
    "  import_flax_nnx()\n",
    "  import_torch()\n",
)
print("=== Importing finished ===")
