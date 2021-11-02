{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import Fast.Model
import Fast.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (T.pack k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays
    
-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)
    
arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models
 
instance Arbitrary BodyApplyImageImageBackgroundRemovalPost where
  arbitrary = sized genBodyApplyImageImageBackgroundRemovalPost

genBodyApplyImageImageBackgroundRemovalPost :: Int -> Gen BodyApplyImageImageBackgroundRemovalPost
genBodyApplyImageImageBackgroundRemovalPost n =
  BodyApplyImageImageBackgroundRemovalPost
    <$> arbitrary -- bodyApplyImageImageBackgroundRemovalPostImage :: FilePath
  
instance Arbitrary BodyApplyImageImageColorizationPost where
  arbitrary = sized genBodyApplyImageImageColorizationPost

genBodyApplyImageImageColorizationPost :: Int -> Gen BodyApplyImageImageColorizationPost
genBodyApplyImageImageColorizationPost n =
  BodyApplyImageImageColorizationPost
    <$> arbitrary -- bodyApplyImageImageColorizationPostImage :: FilePath
  
instance Arbitrary BodyApplyImageImageFaceBluringPost where
  arbitrary = sized genBodyApplyImageImageFaceBluringPost

genBodyApplyImageImageFaceBluringPost :: Int -> Gen BodyApplyImageImageFaceBluringPost
genBodyApplyImageImageFaceBluringPost n =
  BodyApplyImageImageFaceBluringPost
    <$> arbitrary -- bodyApplyImageImageFaceBluringPostImage :: FilePath
  
instance Arbitrary BodyApplyImageImageRestorationPost where
  arbitrary = sized genBodyApplyImageImageRestorationPost

genBodyApplyImageImageRestorationPost :: Int -> Gen BodyApplyImageImageRestorationPost
genBodyApplyImageImageRestorationPost n =
  BodyApplyImageImageRestorationPost
    <$> arbitrary -- bodyApplyImageImageRestorationPostImage :: FilePath
  
instance Arbitrary BodyApplyImageImageSuperResolutionPost where
  arbitrary = sized genBodyApplyImageImageSuperResolutionPost

genBodyApplyImageImageSuperResolutionPost :: Int -> Gen BodyApplyImageImageSuperResolutionPost
genBodyApplyImageImageSuperResolutionPost n =
  BodyApplyImageImageSuperResolutionPost
    <$> arbitrary -- bodyApplyImageImageSuperResolutionPostImage :: FilePath
  
instance Arbitrary BodyApplyImageImageUncolorizationPost where
  arbitrary = sized genBodyApplyImageImageUncolorizationPost

genBodyApplyImageImageUncolorizationPost :: Int -> Gen BodyApplyImageImageUncolorizationPost
genBodyApplyImageImageUncolorizationPost n =
  BodyApplyImageImageUncolorizationPost
    <$> arbitrary -- bodyApplyImageImageUncolorizationPostImage :: FilePath
  
instance Arbitrary BodyApplyImageTextAsciifyPost where
  arbitrary = sized genBodyApplyImageTextAsciifyPost

genBodyApplyImageTextAsciifyPost :: Int -> Gen BodyApplyImageTextAsciifyPost
genBodyApplyImageTextAsciifyPost n =
  BodyApplyImageTextAsciifyPost
    <$> arbitrary -- bodyApplyImageTextAsciifyPostImage :: FilePath
  
instance Arbitrary BodyApplyImageTextOcrPost where
  arbitrary = sized genBodyApplyImageTextOcrPost

genBodyApplyImageTextOcrPost :: Int -> Gen BodyApplyImageTextOcrPost
genBodyApplyImageTextOcrPost n =
  BodyApplyImageTextOcrPost
    <$> arbitrary -- bodyApplyImageTextOcrPostImage :: FilePath
  
instance Arbitrary BodyApplyVideoVideoFrameInterpolationPost where
  arbitrary = sized genBodyApplyVideoVideoFrameInterpolationPost

genBodyApplyVideoVideoFrameInterpolationPost :: Int -> Gen BodyApplyVideoVideoFrameInterpolationPost
genBodyApplyVideoVideoFrameInterpolationPost n =
  BodyApplyVideoVideoFrameInterpolationPost
    <$> arbitrary -- bodyApplyVideoVideoFrameInterpolationPostVideo :: FilePath
  
instance Arbitrary HTTPValidationError where
  arbitrary = sized genHTTPValidationError

genHTTPValidationError :: Int -> Gen HTTPValidationError
genHTTPValidationError n =
  HTTPValidationError
    <$> arbitraryReducedMaybe n -- hTTPValidationErrorDetail :: Maybe [ValidationError]
  
instance Arbitrary ValidationError where
  arbitrary = sized genValidationError

genValidationError :: Int -> Gen ValidationError
genValidationError n =
  ValidationError
    <$> arbitrary -- validationErrorLoc :: [Text]
    <*> arbitrary -- validationErrorMsg :: Text
    <*> arbitrary -- validationErrorType :: Text
  



instance Arbitrary E'Model where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model10 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model11 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model12 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model13 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model14 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model15 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model16 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model17 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model18 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model19 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model2 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model20 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model21 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model22 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model23 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model3 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model4 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model5 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model6 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model7 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model8 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Model9 where
  arbitrary = arbitraryBoundedEnum

