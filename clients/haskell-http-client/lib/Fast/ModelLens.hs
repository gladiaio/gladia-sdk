{-
   FastAPI

   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI Version: 3.0.2
   FastAPI API version: 0.1.0
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Fast.Lens
-}

{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Fast.ModelLens where

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Data, Typeable)
import qualified Data.Map as Map
import qualified Data.Set as Set
import qualified Data.Time as TI

import Data.Text (Text)

import Prelude (($), (.),(<$>),(<*>),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

import Fast.Model
import Fast.Core


-- * BodyApplyImageImageBackgroundRemovalPost

-- | 'bodyApplyImageImageBackgroundRemovalPostImage' Lens
bodyApplyImageImageBackgroundRemovalPostImageL :: Lens_' BodyApplyImageImageBackgroundRemovalPost (FilePath)
bodyApplyImageImageBackgroundRemovalPostImageL f BodyApplyImageImageBackgroundRemovalPost{..} = (\bodyApplyImageImageBackgroundRemovalPostImage -> BodyApplyImageImageBackgroundRemovalPost { bodyApplyImageImageBackgroundRemovalPostImage, ..} ) <$> f bodyApplyImageImageBackgroundRemovalPostImage
{-# INLINE bodyApplyImageImageBackgroundRemovalPostImageL #-}



-- * BodyApplyImageImageColorizationPost

-- | 'bodyApplyImageImageColorizationPostImage' Lens
bodyApplyImageImageColorizationPostImageL :: Lens_' BodyApplyImageImageColorizationPost (FilePath)
bodyApplyImageImageColorizationPostImageL f BodyApplyImageImageColorizationPost{..} = (\bodyApplyImageImageColorizationPostImage -> BodyApplyImageImageColorizationPost { bodyApplyImageImageColorizationPostImage, ..} ) <$> f bodyApplyImageImageColorizationPostImage
{-# INLINE bodyApplyImageImageColorizationPostImageL #-}



-- * BodyApplyImageImageFaceBluringPost

-- | 'bodyApplyImageImageFaceBluringPostImage' Lens
bodyApplyImageImageFaceBluringPostImageL :: Lens_' BodyApplyImageImageFaceBluringPost (FilePath)
bodyApplyImageImageFaceBluringPostImageL f BodyApplyImageImageFaceBluringPost{..} = (\bodyApplyImageImageFaceBluringPostImage -> BodyApplyImageImageFaceBluringPost { bodyApplyImageImageFaceBluringPostImage, ..} ) <$> f bodyApplyImageImageFaceBluringPostImage
{-# INLINE bodyApplyImageImageFaceBluringPostImageL #-}



-- * BodyApplyImageImageSuperResolutionPost

-- | 'bodyApplyImageImageSuperResolutionPostImage' Lens
bodyApplyImageImageSuperResolutionPostImageL :: Lens_' BodyApplyImageImageSuperResolutionPost (FilePath)
bodyApplyImageImageSuperResolutionPostImageL f BodyApplyImageImageSuperResolutionPost{..} = (\bodyApplyImageImageSuperResolutionPostImage -> BodyApplyImageImageSuperResolutionPost { bodyApplyImageImageSuperResolutionPostImage, ..} ) <$> f bodyApplyImageImageSuperResolutionPostImage
{-# INLINE bodyApplyImageImageSuperResolutionPostImageL #-}



-- * BodyApplyImageImageUncolorizationPost

-- | 'bodyApplyImageImageUncolorizationPostImage' Lens
bodyApplyImageImageUncolorizationPostImageL :: Lens_' BodyApplyImageImageUncolorizationPost (FilePath)
bodyApplyImageImageUncolorizationPostImageL f BodyApplyImageImageUncolorizationPost{..} = (\bodyApplyImageImageUncolorizationPostImage -> BodyApplyImageImageUncolorizationPost { bodyApplyImageImageUncolorizationPostImage, ..} ) <$> f bodyApplyImageImageUncolorizationPostImage
{-# INLINE bodyApplyImageImageUncolorizationPostImageL #-}



-- * BodyApplyImageTextAsciifyPost

-- | 'bodyApplyImageTextAsciifyPostImage' Lens
bodyApplyImageTextAsciifyPostImageL :: Lens_' BodyApplyImageTextAsciifyPost (FilePath)
bodyApplyImageTextAsciifyPostImageL f BodyApplyImageTextAsciifyPost{..} = (\bodyApplyImageTextAsciifyPostImage -> BodyApplyImageTextAsciifyPost { bodyApplyImageTextAsciifyPostImage, ..} ) <$> f bodyApplyImageTextAsciifyPostImage
{-# INLINE bodyApplyImageTextAsciifyPostImageL #-}



-- * BodyApplyImageTextOcrPost

-- | 'bodyApplyImageTextOcrPostImage' Lens
bodyApplyImageTextOcrPostImageL :: Lens_' BodyApplyImageTextOcrPost (FilePath)
bodyApplyImageTextOcrPostImageL f BodyApplyImageTextOcrPost{..} = (\bodyApplyImageTextOcrPostImage -> BodyApplyImageTextOcrPost { bodyApplyImageTextOcrPostImage, ..} ) <$> f bodyApplyImageTextOcrPostImage
{-# INLINE bodyApplyImageTextOcrPostImageL #-}



-- * HTTPValidationError

-- | 'hTTPValidationErrorDetail' Lens
hTTPValidationErrorDetailL :: Lens_' HTTPValidationError (Maybe [ValidationError])
hTTPValidationErrorDetailL f HTTPValidationError{..} = (\hTTPValidationErrorDetail -> HTTPValidationError { hTTPValidationErrorDetail, ..} ) <$> f hTTPValidationErrorDetail
{-# INLINE hTTPValidationErrorDetailL #-}



-- * ValidationError

-- | 'validationErrorLoc' Lens
validationErrorLocL :: Lens_' ValidationError ([Text])
validationErrorLocL f ValidationError{..} = (\validationErrorLoc -> ValidationError { validationErrorLoc, ..} ) <$> f validationErrorLoc
{-# INLINE validationErrorLocL #-}

-- | 'validationErrorMsg' Lens
validationErrorMsgL :: Lens_' ValidationError (Text)
validationErrorMsgL f ValidationError{..} = (\validationErrorMsg -> ValidationError { validationErrorMsg, ..} ) <$> f validationErrorMsg
{-# INLINE validationErrorMsgL #-}

-- | 'validationErrorType' Lens
validationErrorTypeL :: Lens_' ValidationError (Text)
validationErrorTypeL f ValidationError{..} = (\validationErrorType -> ValidationError { validationErrorType, ..} ) <$> f validationErrorType
{-# INLINE validationErrorTypeL #-}


