module Data.AcidBinaryMap.Binary 
  ( Binary
  ) where

import Data.Int (Int64)
import Data.Word (Word8)
import Foreign.Ptr (Ptr)
import System.Posix.Types (ByteCount)

import 

class Binary b where
  getBytes
    :: b
    -> Int64 -- ^Offset
    -> ByteCount -- ^Limit
    -> (Ptr Word8, ByteCount) -- ^The pointer to the bytes, and the number of the availible bytes in this phase. If the number of the availible bytes is zero, the pointer is not used nor examined.

instance Binary 
