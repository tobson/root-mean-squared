from cython cimport boundscheck, wraparound
from libc.math cimport sqrt

@boundscheck(False)
@wraparound(False)
def rms(double[:, :] a, double[:, :] b):

    cdef int i, j

    cdef double diff, rms2

    m = a.shape[0]
    n = a.shape[1]

    rms2 = 0.0

    for i in range(m):
        for j in range(n):
            diff = a[i,j] - b[i,j]
            rms2 += diff*diff

    return sqrt(rms2)
