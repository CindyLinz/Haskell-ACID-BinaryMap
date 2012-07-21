module Data.AcidBinaryMap
  ( AcidBinarySpace
  ) where

class (Binary b, Monad m) => MonadSpace b m where
  type Transaction b
  runTransaction :: (Transaction b) m a -> m a
  put :: b -> b -> (Transaction s) s m ()
  get :: b -> (Transaction s) s m b
  modify :: b -> (b -> b) -> (Transaction s) s m ()
