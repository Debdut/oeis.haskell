module Graham.A292145 (a292145) where
import HelperSequences.A013929 (a013929)
import Graham.A292144 (a292144)

a292145 = a292144 . a013929
