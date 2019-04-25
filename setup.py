from distutils.core import setup
from Cython.Build import cythonize

setup(ext_modules=cythonize("rms.pyx", annotate=True))
