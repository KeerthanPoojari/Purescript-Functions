module Main where

import Prelude
import Effect (Effect)
import Effect.Class.Console (logShow)
import Data.Maybe
import Partial.Unsafe (unsafePartial)
import Math

-- Instances
-- Functor Maybe
-- Apply Maybe
-- Applicative Maybe
-- Alt Maybe
-- Plus Maybe
-- Alternative Maybe
-- Bind Maybe
-- Monad Maybe
-- MonadZero Maybe
-- Extend Maybe
-- Invariant Maybe
-- (Semigroup a) => Semigroup (Maybe a)
-- (Semigroup a) => Monoid (Maybe a)
-- (Eq a) => Eq (Maybe a)
-- Eq1 Maybe
-- (Ord a) => Ord (Maybe a)
-- Ord1 Maybe
-- (Bounded a) => Bounded (Maybe a)
-- (Show a) => Show (Maybe a)

maybe1 :: forall a b. b -> (a -> b) -> Maybe a -> b
maybe1 b f j = maybe b f j

fromMaybe1 :: forall a. a -> Maybe a -> a
fromMaybe1 a j = fromMaybe a j

isJust1 :: forall a. Maybe a -> Boolean
isJust1 j = isJust j

isNothing1 :: forall a. Maybe a -> Boolean
isNothing1 j = isNothing j

fromJust1 :: forall a. Partial => Maybe a -> a
fromJust1 j = fromJust j

main :: Effect Unit
main = do
  logShow $ maybe1 4.9 ceil $ Just 4.3
  logShow $ fromMaybe1 4.5 $ Just 4.5
  logShow $ isJust1 $ Just 4.5
  logShow $ isJust1 Nothing
  logShow $ isNothing1 Nothing
  logShow $ isNothing1 $ Just 2
  logShow $ unsafePartial $ fromJust1 $ Just 8
