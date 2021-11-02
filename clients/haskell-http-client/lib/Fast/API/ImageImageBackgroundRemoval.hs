{-
   FastAPI

   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI Version: 3.0.2
   FastAPI API version: 0.1.0
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Fast.API.ImageImageBackgroundRemoval
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Fast.API.ImageImageBackgroundRemoval where

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


-- ** ImageImageBackgroundRemoval

-- *** applyImageImageBackgroundRemovalPost

-- | @POST \/image\/image\/background-removal\/@
-- 
-- Apply model for the background-removal task for a given models
-- 
applyImageImageBackgroundRemovalPost 
  :: (Consumes ApplyImageImageBackgroundRemovalPost MimeMultipartFormData)
  => Image -- ^ "image"
  -> FastRequest ApplyImageImageBackgroundRemovalPost MimeMultipartFormData A.Value MimeJSON
applyImageImageBackgroundRemovalPost (Image image) =
  _mkRequest "POST" ["/image/image/background-removal/"]
    `_addMultiFormPart` NH.partFileSource "image" image

data ApplyImageImageBackgroundRemovalPost  
instance HasOptionalParam ApplyImageImageBackgroundRemovalPost Model where
  applyOptionalParam req (Model xs) =
    req `setQuery` toQuery ("model", Just xs)

-- | @multipart/form-data@
instance Consumes ApplyImageImageBackgroundRemovalPost MimeMultipartFormData

-- | @application/json@
instance Produces ApplyImageImageBackgroundRemovalPost MimeJSON


-- *** getVersionsImageImageBackgroundRemovalGet

-- | @GET \/image\/image\/background-removal\/@
-- 
-- Get list of models available for background-removal
-- 
getVersionsImageImageBackgroundRemovalGet 
  :: FastRequest GetVersionsImageImageBackgroundRemovalGet MimeNoContent A.Value MimeJSON
getVersionsImageImageBackgroundRemovalGet =
  _mkRequest "GET" ["/image/image/background-removal/"]

data GetVersionsImageImageBackgroundRemovalGet  
-- | @application/json@
instance Produces GetVersionsImageImageBackgroundRemovalGet MimeJSON

