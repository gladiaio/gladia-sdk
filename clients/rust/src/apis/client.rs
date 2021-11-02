use std::rc::Rc;

use hyper;
use super::configuration::Configuration;

pub struct APIClient<C: hyper::client::Connect> {
    configuration: Rc<Configuration<C>>,
    image_image_background_removal_api: Box<::apis::ImageImageBackgroundRemovalApi>,
    image_image_colorization_api: Box<::apis::ImageImageColorizationApi>,
    image_image_face_bluring_api: Box<::apis::ImageImageFaceBluringApi>,
    image_image_restoration_api: Box<::apis::ImageImageRestorationApi>,
    image_image_super_resolution_api: Box<::apis::ImageImageSuperResolutionApi>,
    image_image_uncolorization_api: Box<::apis::ImageImageUncolorizationApi>,
    image_text_asciify_api: Box<::apis::ImageTextAsciifyApi>,
    image_text_ocr_api: Box<::apis::ImageTextOcrApi>,
    text_text_autocorrect_api: Box<::apis::TextTextAutocorrectApi>,
    text_text_boolean_question_generation_api: Box<::apis::TextTextBooleanQuestionGenerationApi>,
    text_text_dependency_tracking_api: Box<::apis::TextTextDependencyTrackingApi>,
    text_text_emotion_recognition_api: Box<::apis::TextTextEmotionRecognitionApi>,
    text_text_entity_extraction_api: Box<::apis::TextTextEntityExtractionApi>,
    text_text_hate_speech_detection_api: Box<::apis::TextTextHateSpeechDetectionApi>,
    text_text_keyword_extraction_api: Box<::apis::TextTextKeywordExtractionApi>,
    text_text_language_detection_api: Box<::apis::TextTextLanguageDetectionApi>,
    text_text_language_generation_api: Box<::apis::TextTextLanguageGenerationApi>,
    text_text_lemmatization_api: Box<::apis::TextTextLemmatizationApi>,
    text_text_named_entity_recognition_api: Box<::apis::TextTextNamedEntityRecognitionApi>,
    text_text_next_sentence_prediction_api: Box<::apis::TextTextNextSentencePredictionApi>,
    text_text_next_word_prediction_api: Box<::apis::TextTextNextWordPredictionApi>,
    text_text_plural_api: Box<::apis::TextTextPluralApi>,
    text_text_programming_language_generation_api: Box<::apis::TextTextProgrammingLanguageGenerationApi>,
    text_text_programming_language_identification_api: Box<::apis::TextTextProgrammingLanguageIdentificationApi>,
    text_text_question_answering_api: Box<::apis::TextTextQuestionAnsweringApi>,
    text_text_sentence_pair_modeling_api: Box<::apis::TextTextSentencePairModelingApi>,
    text_text_sentence_paraphraser_api: Box<::apis::TextTextSentenceParaphraserApi>,
    text_text_sentiment_analysis_api: Box<::apis::TextTextSentimentAnalysisApi>,
    text_text_similarity_api: Box<::apis::TextTextSimilarityApi>,
    text_text_summarization_api: Box<::apis::TextTextSummarizationApi>,
    text_text_translation_api: Box<::apis::TextTextTranslationApi>,
    text_text_transliteration_api: Box<::apis::TextTextTransliterationApi>,
    text_text_word_alignment_api: Box<::apis::TextTextWordAlignmentApi>,
    video_video_frame_interpolation_api: Box<::apis::VideoVideoFrameInterpolationApi>,
}

impl<C: hyper::client::Connect> APIClient<C> {
    pub fn new(configuration: Configuration<C>) -> APIClient<C> {
        let rc = Rc::new(configuration);

        APIClient {
            configuration: rc.clone(),
            image_image_background_removal_api: Box::new(::apis::ImageImageBackgroundRemovalApiClient::new(rc.clone())),
            image_image_colorization_api: Box::new(::apis::ImageImageColorizationApiClient::new(rc.clone())),
            image_image_face_bluring_api: Box::new(::apis::ImageImageFaceBluringApiClient::new(rc.clone())),
            image_image_restoration_api: Box::new(::apis::ImageImageRestorationApiClient::new(rc.clone())),
            image_image_super_resolution_api: Box::new(::apis::ImageImageSuperResolutionApiClient::new(rc.clone())),
            image_image_uncolorization_api: Box::new(::apis::ImageImageUncolorizationApiClient::new(rc.clone())),
            image_text_asciify_api: Box::new(::apis::ImageTextAsciifyApiClient::new(rc.clone())),
            image_text_ocr_api: Box::new(::apis::ImageTextOcrApiClient::new(rc.clone())),
            text_text_autocorrect_api: Box::new(::apis::TextTextAutocorrectApiClient::new(rc.clone())),
            text_text_boolean_question_generation_api: Box::new(::apis::TextTextBooleanQuestionGenerationApiClient::new(rc.clone())),
            text_text_dependency_tracking_api: Box::new(::apis::TextTextDependencyTrackingApiClient::new(rc.clone())),
            text_text_emotion_recognition_api: Box::new(::apis::TextTextEmotionRecognitionApiClient::new(rc.clone())),
            text_text_entity_extraction_api: Box::new(::apis::TextTextEntityExtractionApiClient::new(rc.clone())),
            text_text_hate_speech_detection_api: Box::new(::apis::TextTextHateSpeechDetectionApiClient::new(rc.clone())),
            text_text_keyword_extraction_api: Box::new(::apis::TextTextKeywordExtractionApiClient::new(rc.clone())),
            text_text_language_detection_api: Box::new(::apis::TextTextLanguageDetectionApiClient::new(rc.clone())),
            text_text_language_generation_api: Box::new(::apis::TextTextLanguageGenerationApiClient::new(rc.clone())),
            text_text_lemmatization_api: Box::new(::apis::TextTextLemmatizationApiClient::new(rc.clone())),
            text_text_named_entity_recognition_api: Box::new(::apis::TextTextNamedEntityRecognitionApiClient::new(rc.clone())),
            text_text_next_sentence_prediction_api: Box::new(::apis::TextTextNextSentencePredictionApiClient::new(rc.clone())),
            text_text_next_word_prediction_api: Box::new(::apis::TextTextNextWordPredictionApiClient::new(rc.clone())),
            text_text_plural_api: Box::new(::apis::TextTextPluralApiClient::new(rc.clone())),
            text_text_programming_language_generation_api: Box::new(::apis::TextTextProgrammingLanguageGenerationApiClient::new(rc.clone())),
            text_text_programming_language_identification_api: Box::new(::apis::TextTextProgrammingLanguageIdentificationApiClient::new(rc.clone())),
            text_text_question_answering_api: Box::new(::apis::TextTextQuestionAnsweringApiClient::new(rc.clone())),
            text_text_sentence_pair_modeling_api: Box::new(::apis::TextTextSentencePairModelingApiClient::new(rc.clone())),
            text_text_sentence_paraphraser_api: Box::new(::apis::TextTextSentenceParaphraserApiClient::new(rc.clone())),
            text_text_sentiment_analysis_api: Box::new(::apis::TextTextSentimentAnalysisApiClient::new(rc.clone())),
            text_text_similarity_api: Box::new(::apis::TextTextSimilarityApiClient::new(rc.clone())),
            text_text_summarization_api: Box::new(::apis::TextTextSummarizationApiClient::new(rc.clone())),
            text_text_translation_api: Box::new(::apis::TextTextTranslationApiClient::new(rc.clone())),
            text_text_transliteration_api: Box::new(::apis::TextTextTransliterationApiClient::new(rc.clone())),
            text_text_word_alignment_api: Box::new(::apis::TextTextWordAlignmentApiClient::new(rc.clone())),
            video_video_frame_interpolation_api: Box::new(::apis::VideoVideoFrameInterpolationApiClient::new(rc.clone())),
        }
    }

    pub fn image_image_background_removal_api(&self) -> &::apis::ImageImageBackgroundRemovalApi{
        self.image_image_background_removal_api.as_ref()
    }

    pub fn image_image_colorization_api(&self) -> &::apis::ImageImageColorizationApi{
        self.image_image_colorization_api.as_ref()
    }

    pub fn image_image_face_bluring_api(&self) -> &::apis::ImageImageFaceBluringApi{
        self.image_image_face_bluring_api.as_ref()
    }

    pub fn image_image_restoration_api(&self) -> &::apis::ImageImageRestorationApi{
        self.image_image_restoration_api.as_ref()
    }

    pub fn image_image_super_resolution_api(&self) -> &::apis::ImageImageSuperResolutionApi{
        self.image_image_super_resolution_api.as_ref()
    }

    pub fn image_image_uncolorization_api(&self) -> &::apis::ImageImageUncolorizationApi{
        self.image_image_uncolorization_api.as_ref()
    }

    pub fn image_text_asciify_api(&self) -> &::apis::ImageTextAsciifyApi{
        self.image_text_asciify_api.as_ref()
    }

    pub fn image_text_ocr_api(&self) -> &::apis::ImageTextOcrApi{
        self.image_text_ocr_api.as_ref()
    }

    pub fn text_text_autocorrect_api(&self) -> &::apis::TextTextAutocorrectApi{
        self.text_text_autocorrect_api.as_ref()
    }

    pub fn text_text_boolean_question_generation_api(&self) -> &::apis::TextTextBooleanQuestionGenerationApi{
        self.text_text_boolean_question_generation_api.as_ref()
    }

    pub fn text_text_dependency_tracking_api(&self) -> &::apis::TextTextDependencyTrackingApi{
        self.text_text_dependency_tracking_api.as_ref()
    }

    pub fn text_text_emotion_recognition_api(&self) -> &::apis::TextTextEmotionRecognitionApi{
        self.text_text_emotion_recognition_api.as_ref()
    }

    pub fn text_text_entity_extraction_api(&self) -> &::apis::TextTextEntityExtractionApi{
        self.text_text_entity_extraction_api.as_ref()
    }

    pub fn text_text_hate_speech_detection_api(&self) -> &::apis::TextTextHateSpeechDetectionApi{
        self.text_text_hate_speech_detection_api.as_ref()
    }

    pub fn text_text_keyword_extraction_api(&self) -> &::apis::TextTextKeywordExtractionApi{
        self.text_text_keyword_extraction_api.as_ref()
    }

    pub fn text_text_language_detection_api(&self) -> &::apis::TextTextLanguageDetectionApi{
        self.text_text_language_detection_api.as_ref()
    }

    pub fn text_text_language_generation_api(&self) -> &::apis::TextTextLanguageGenerationApi{
        self.text_text_language_generation_api.as_ref()
    }

    pub fn text_text_lemmatization_api(&self) -> &::apis::TextTextLemmatizationApi{
        self.text_text_lemmatization_api.as_ref()
    }

    pub fn text_text_named_entity_recognition_api(&self) -> &::apis::TextTextNamedEntityRecognitionApi{
        self.text_text_named_entity_recognition_api.as_ref()
    }

    pub fn text_text_next_sentence_prediction_api(&self) -> &::apis::TextTextNextSentencePredictionApi{
        self.text_text_next_sentence_prediction_api.as_ref()
    }

    pub fn text_text_next_word_prediction_api(&self) -> &::apis::TextTextNextWordPredictionApi{
        self.text_text_next_word_prediction_api.as_ref()
    }

    pub fn text_text_plural_api(&self) -> &::apis::TextTextPluralApi{
        self.text_text_plural_api.as_ref()
    }

    pub fn text_text_programming_language_generation_api(&self) -> &::apis::TextTextProgrammingLanguageGenerationApi{
        self.text_text_programming_language_generation_api.as_ref()
    }

    pub fn text_text_programming_language_identification_api(&self) -> &::apis::TextTextProgrammingLanguageIdentificationApi{
        self.text_text_programming_language_identification_api.as_ref()
    }

    pub fn text_text_question_answering_api(&self) -> &::apis::TextTextQuestionAnsweringApi{
        self.text_text_question_answering_api.as_ref()
    }

    pub fn text_text_sentence_pair_modeling_api(&self) -> &::apis::TextTextSentencePairModelingApi{
        self.text_text_sentence_pair_modeling_api.as_ref()
    }

    pub fn text_text_sentence_paraphraser_api(&self) -> &::apis::TextTextSentenceParaphraserApi{
        self.text_text_sentence_paraphraser_api.as_ref()
    }

    pub fn text_text_sentiment_analysis_api(&self) -> &::apis::TextTextSentimentAnalysisApi{
        self.text_text_sentiment_analysis_api.as_ref()
    }

    pub fn text_text_similarity_api(&self) -> &::apis::TextTextSimilarityApi{
        self.text_text_similarity_api.as_ref()
    }

    pub fn text_text_summarization_api(&self) -> &::apis::TextTextSummarizationApi{
        self.text_text_summarization_api.as_ref()
    }

    pub fn text_text_translation_api(&self) -> &::apis::TextTextTranslationApi{
        self.text_text_translation_api.as_ref()
    }

    pub fn text_text_transliteration_api(&self) -> &::apis::TextTextTransliterationApi{
        self.text_text_transliteration_api.as_ref()
    }

    pub fn text_text_word_alignment_api(&self) -> &::apis::TextTextWordAlignmentApi{
        self.text_text_word_alignment_api.as_ref()
    }

    pub fn video_video_frame_interpolation_api(&self) -> &::apis::VideoVideoFrameInterpolationApi{
        self.video_video_frame_interpolation_api.as_ref()
    }

}
