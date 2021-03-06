{-
   FastAPI

   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI Version: 3.0.2
   FastAPI API version: 0.1.0
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Fast.API.ImageImageFaceBluring
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Fast.API.ImageImageFaceBluring where

import Fast.Core
import Fast.MimeTypes
import Fast.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** ImageImageFaceBluring

-- *** applyImageImageFaceBluringPost

-- | @POST \/image\/image\/face-bluring\/@
-- 
-- Apply model for the face-bluring task for a given models
-- 
applyImageImageFaceBluringPost 
  :: (Consumes ApplyImageImageFaceBluringPost MimeMultipartFormData)
  => Image -- ^ "image"
  -> FastRequest ApplyImageImageFaceBluringPost MimeMultipartFormData A.Value MimeJSON
applyImageImageFaceBluringPost (Image image) =
  _mkRequest "POST" ["/image/image/face-bluring/"]
    `_addMultiFormPart` NH.partFileSource "image" image

data ApplyImageImageFaceBluringPost  
instance HasOptionalParam ApplyImageImageFaceBluringPost Model3 where
  applyOptionalParam req (Model3 xs) =
    req `setQuery` toQuery ("model", Just xs)

-- | @multipart/form-data@
instance Consumes ApplyImageImageFaceBluringPost MimeMultipartFormData

-- | @application/json@
instance Produces ApplyImageImageFaceBluringPost MimeJSON


-- *** getVersionsImageImageFaceBluringGet

-- | @GET \/image\/image\/face-bluring\/@
-- 
-- Get list of models available for face-bluring
-- 
getVersionsImageImageFaceBluringGet 
  :: FastRequest GetVersionsImageImageFaceBluringGet MimeNoContent A.Value MimeJSON
getVersionsImageImageFaceBluringGet =
  _mkRequest "GET" ["/image/image/face-bluring/"]

data GetVersionsImageImageFaceBluringGet  
-- | @application/json@
instance Produces GetVersionsImageImageFaceBluringGet MimeJSON

