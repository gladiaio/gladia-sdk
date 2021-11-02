use hyper;
use serde;
use serde_json;

#[derive(Debug)]
pub enum Error<T> {
    UriError(hyper::error::UriError),
    Hyper(hyper::Error),
    Serde(serde_json::Error),
    ApiError(ApiError<T>),
}

#[derive(Debug)]
pub struct ApiError<T> {
    pub code: hyper::StatusCode,
    pub content: Option<T>,
}

impl<'de, T> From<(hyper::StatusCode, &'de [u8])> for Error<T> 
    where T: serde::Deserialize<'de> {
    fn from(e: (hyper::StatusCode, &'de [u8])) -> Self {
        if e.1.len() == 0 {
            return Error::ApiError(ApiError{
                code: e.0,
                content: None,
            });
        }
        match serde_json::from_slice::<T>(e.1) {
            Ok(t) => Error::ApiError(ApiError{
                code: e.0,
                content: Some(t),
            }),
            Err(e) => {
                Error::from(e)
            }
        }
    }
}

impl<T> From<hyper::Error> for Error<T> {
    fn from(e: hyper::Error) -> Self {
        return Error::Hyper(e)
    }
}

impl<T> From<serde_json::Error> for Error<T> {
    fn from(e: serde_json::Error) -> Self {
        return Error::Serde(e)
    }
}

use super::models::*;

mod request;

mod image_image_background_removal_api;
pub use self::image_image_background_removal_api::{ ImageImageBackgroundRemovalApi, ImageImageBackgroundRemovalApiClient };
mod image_image_colorization_api;
pub use self::image_image_colorization_api::{ ImageImageColorizationApi, ImageImageColorizationApiClient };
mod image_image_face_bluring_api;
pub use self::image_image_face_bluring_api::{ ImageImageFaceBluringApi, ImageImageFaceBluringApiClient };
mod image_image_restoration_api;
pub use self::image_image_restoration_api::{ ImageImageRestorationApi, ImageImageRestorationApiClient };
mod image_image_super_resolution_api;
pub use self::image_image_super_resolution_api::{ ImageImageSuperResolutionApi, ImageImageSuperResolutionApiClient };
mod image_image_uncolorization_api;
pub use self::image_image_uncolorization_api::{ ImageImageUncolorizationApi, ImageImageUncolorizationApiClient };
mod image_text_asciify_api;
pub use self::image_text_asciify_api::{ ImageTextAsciifyApi, ImageTextAsciifyApiClient };
mod image_text_ocr_api;
pub use self::image_text_ocr_api::{ ImageTextOcrApi, ImageTextOcrApiClient };
mod text_text_autocorrect_api;
pub use self::text_text_autocorrect_api::{ TextTextAutocorrectApi, TextTextAutocorrectApiClient };
mod text_text_boolean_question_generation_api;
pub use self::text_text_boolean_question_generation_api::{ TextTextBooleanQuestionGenerationApi, TextTextBooleanQuestionGenerationApiClient };
mod text_text_dependency_tracking_api;
pub use self::text_text_dependency_tracking_api::{ TextTextDependencyTrackingApi, TextTextDependencyTrackingApiClient };
mod text_text_emotion_recognition_api;
pub use self::text_text_emotion_recognition_api::{ TextTextEmotionRecognitionApi, TextTextEmotionRecognitionApiClient };
mod text_text_entity_extraction_api;
pub use self::text_text_entity_extraction_api::{ TextTextEntityExtractionApi, TextTextEntityExtractionApiClient };
mod text_text_hate_speech_detection_api;
pub use self::text_text_hate_speech_detection_api::{ TextTextHateSpeechDetectionApi, TextTextHateSpeechDetectionApiClient };
mod text_text_keyword_extraction_api;
pub use self::text_text_keyword_extraction_api::{ TextTextKeywordExtractionApi, TextTextKeywordExtractionApiClient };
mod text_text_language_detection_api;
pub use self::text_text_language_detection_api::{ TextTextLanguageDetectionApi, TextTextLanguageDetectionApiClient };
mod text_text_language_generation_api;
pub use self::text_text_language_generation_api::{ TextTextLanguageGenerationApi, TextTextLanguageGenerationApiClient };
mod text_text_lemmatization_api;
pub use self::text_text_lemmatization_api::{ TextTextLemmatizationApi, TextTextLemmatizationApiClient };
mod text_text_named_entity_recognition_api;
pub use self::text_text_named_entity_recognition_api::{ TextTextNamedEntityRecognitionApi, TextTextNamedEntityRecognitionApiClient };
mod text_text_next_sentence_prediction_api;
pub use self::text_text_next_sentence_prediction_api::{ TextTextNextSentencePredictionApi, TextTextNextSentencePredictionApiClient };
mod text_text_next_word_prediction_api;
pub use self::text_text_next_word_prediction_api::{ TextTextNextWordPredictionApi, TextTextNextWordPredictionApiClient };
mod text_text_plural_api;
pub use self::text_text_plural_api::{ TextTextPluralApi, TextTextPluralApiClient };
mod text_text_programming_language_generation_api;
pub use self::text_text_programming_language_generation_api::{ TextTextProgrammingLanguageGenerationApi, TextTextProgrammingLanguageGenerationApiClient };
mod text_text_programming_language_identification_api;
pub use self::text_text_programming_language_identification_api::{ TextTextProgrammingLanguageIdentificationApi, TextTextProgrammingLanguageIdentificationApiClient };
mod text_text_question_answering_api;
pub use self::text_text_question_answering_api::{ TextTextQuestionAnsweringApi, TextTextQuestionAnsweringApiClient };
mod text_text_sentence_pair_modeling_api;
pub use self::text_text_sentence_pair_modeling_api::{ TextTextSentencePairModelingApi, TextTextSentencePairModelingApiClient };
mod text_text_sentence_paraphraser_api;
pub use self::text_text_sentence_paraphraser_api::{ TextTextSentenceParaphraserApi, TextTextSentenceParaphraserApiClient };
mod text_text_sentiment_analysis_api;
pub use self::text_text_sentiment_analysis_api::{ TextTextSentimentAnalysisApi, TextTextSentimentAnalysisApiClient };
mod text_text_similarity_api;
pub use self::text_text_similarity_api::{ TextTextSimilarityApi, TextTextSimilarityApiClient };
mod text_text_summarization_api;
pub use self::text_text_summarization_api::{ TextTextSummarizationApi, TextTextSummarizationApiClient };
mod text_text_translation_api;
pub use self::text_text_translation_api::{ TextTextTranslationApi, TextTextTranslationApiClient };
mod text_text_transliteration_api;
pub use self::text_text_transliteration_api::{ TextTextTransliterationApi, TextTextTransliterationApiClient };
mod text_text_word_alignment_api;
pub use self::text_text_word_alignment_api::{ TextTextWordAlignmentApi, TextTextWordAlignmentApiClient };
mod video_video_frame_interpolation_api;
pub use self::video_video_frame_interpolation_api::{ VideoVideoFrameInterpolationApi, VideoVideoFrameInterpolationApiClient };

pub mod configuration;
pub mod client;
