{-# LANGUAGE TemplateHaskell #-}

module Data.Functor.Infix.Definitions where

import Control.Monad (msum)
import Data.Functor.Infix.TH (declareInfixFmapForFunctorCompositionOfDegree, declareFlippedInfixFmapForFunctorCompositionOfDegree)

$(fmap msum $ mapM declareInfixFmapForFunctorCompositionOfDegree [1..20])
$(fmap msum $ mapM declareFlippedInfixFmapForFunctorCompositionOfDegree [1..20])
