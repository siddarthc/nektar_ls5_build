

SET(NATIVE_BLAS_LAPACK_SEARCH_PATHS /usr/lib /usr/lib64 /usr/local/lib /usr/local/lib64 /work/02138/siddarth/lonestar/lapack-3.6.0/build/lib)

FIND_LIBRARY(NATIVE_BLAS NAMES blas PATHS ${NATIVE_BLAS_LAPACK_SEARCH_PATHS})
FIND_LIBRARY(NATIVE_LAPACK NAMES lapack PATHS ${NATIVE_BLAS_LAPACK_SEARCH_PATHS})


IF (NATIVE_BLAS AND NATIVE_LAPACK)
  SET(NATIVE_BLAS_LAPACK_FOUND ON)
ENDIF (NATIVE_BLAS AND NATIVE_LAPACK)

IF (NATIVE_BLAS_LAPACK_FOUND)
  IF (NOT NATIVE_BLAS_LAPACK_FIND_QUIETLY)
     MESSAGE(STATUS "Found Native Blas and Lapack")
  ENDIF (NOT NATIVE_BLAS_LAPACK_FIND_QUIETLY)
ELSE(NATIVE_BLAS_LAPACK_FOUND)
  IF (NATIVE_BLAS_LAPACK_FIND_REQUIRED)
     MESSAGE(FATAL_ERROR "Could not find Native blas and lapack libraries.")
  ENDIF (NATIVE_BLAS_LAPACK_FIND_REQUIRED)
ENDIF (NATIVE_BLAS_LAPACK_FOUND)

MARK_AS_ADVANCED(NATIVE_BLAS)
MARK_AS_ADVANCED(NATIVE_LAPACK)

