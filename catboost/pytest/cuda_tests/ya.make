

PYTEST()

TEST_SRCS(
    test_gpu.py
)

IF(SANITIZER_TYPE)
    TAG(ya:not_autocheck)
ENDIF()

DEPENDS(
    catboost/tools/limited_precision_dsv_diff
)

SIZE(MEDIUM)
REQUIREMENTS(network:full)

IF(AUTOCHECK)
    FORK_SUBTESTS()
    SPLIT_FACTOR(20)
ENDIF()

PEERDIR(
    catboost/pytest/lib
    catboost/python-package/lib
    contrib/python/numpy
)

DEPENDS(
    catboost/app
)

DATA(
    arcadia/catboost/pytest/data
)

END()
