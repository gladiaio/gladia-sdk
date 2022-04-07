{-
   FastAPI

   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI Version: 3.0.2
   FastAPI API version: 0.1.0
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Fast.API.TextTextQuestionAnswering
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Fast.API.TextTextQuestionAnswering where

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


-- ** TextTextQuestionAnswering

-- *** applyTextTextQuestionAnsweringPost

-- | @POST \/text\/text\/question-answering\/@
-- 
-- Apply model for the question-answering task for a given models
-- 
applyTextTextQuestionAnsweringPost 
  :: FastRequest ApplyTextTextQuestionAnsweringPost MimeNoContent A.Value MimeJSON
applyTextTextQuestionAnsweringPost =
  _mkRequest "POST" ["/text/text/question-answering/"]

data ApplyTextTextQuestionAnsweringPost  
instance HasOptionalParam ApplyTextTextQuestionAnsweringPost Context where
  applyOptionalParam req (Context xs) =
    req `setQuery` toQuery ("context", Just xs)
instance HasOptionalParam ApplyTextTextQuestionAnsweringPost Question where
  applyOptionalParam req (Question xs) =
    req `setQuery` toQuery ("question", Just xs)
instance HasOptionalParam ApplyTextTextQuestionAnsweringPost Model20 where
  applyOptionalParam req (Model20 xs) =
    req `setQuery` toQuery ("model", Just xs)
-- | @application/json@
instance Produces ApplyTextTextQuestionAnsweringPost MimeJSON


-- *** getVersionsTextTextQuestionAnsweringGet

-- | @GET \/text\/text\/question-answering\/@
-- 
-- Get list of models available for question-answering
-- 
getVersionsTextTextQuestionAnsweringGet 
  :: FastRequest GetVersionsTextTextQuestionAnsweringGet MimeNoContent A.Value MimeJSON
getVersionsTextTextQuestionAnsweringGet =
  _mkRequest "GET" ["/text/text/question-answering/"]

data GetVersionsTextTextQuestionAnsweringGet  
-- | @application/json@
instance Produces GetVersionsTextTextQuestionAnsweringGet MimeJSON

