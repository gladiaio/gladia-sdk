{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import Fast.Model
import Fast.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy BodyApplyImageImageBackgroundRemovalPost)
      propMimeEq MimeJSON (Proxy :: Proxy BodyApplyImageImageColorizationPost)
      propMimeEq MimeJSON (Proxy :: Proxy BodyApplyImageImageFaceBluringPost)
      propMimeEq MimeJSON (Proxy :: Proxy BodyApplyImageImageRestorationPost)
      propMimeEq MimeJSON (Proxy :: Proxy BodyApplyImageImageSuperResolutionPost)
      propMimeEq MimeJSON (Proxy :: Proxy BodyApplyImageImageUncolorizationPost)
      propMimeEq MimeJSON (Proxy :: Proxy BodyApplyImageTextAsciifyPost)
      propMimeEq MimeJSON (Proxy :: Proxy BodyApplyImageTextOcrPost)
      propMimeEq MimeJSON (Proxy :: Proxy BodyApplyVideoVideoFrameInterpolationPost)
      propMimeEq MimeJSON (Proxy :: Proxy HTTPValidationError)
      propMimeEq MimeJSON (Proxy :: Proxy ValidationError)
      
