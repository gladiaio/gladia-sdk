# coding: utf-8

# flake8: noqa

"""
    FastAPI

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)  # noqa: E501

    The version of the OpenAPI document: 0.1.0
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

__version__ = "1.0.0"

# import apis into sdk package
from openapi_client.api.image_image_background_removal_api import ImageImageBackgroundRemovalApi
from openapi_client.api.image_image_colorization_api import ImageImageColorizationApi
from openapi_client.api.image_image_face_bluring_api import ImageImageFaceBluringApi
from openapi_client.api.image_image_super_resolution_api import ImageImageSuperResolutionApi
from openapi_client.api.image_image_uncolorization_api import ImageImageUncolorizationApi
from openapi_client.api.image_text_asciify_api import ImageTextAsciifyApi
from openapi_client.api.image_text_ocr_api import ImageTextOcrApi
from openapi_client.api.text_text_autocorrect_api import TextTextAutocorrectApi
from openapi_client.api.text_text_emotion_recognition_api import TextTextEmotionRecognitionApi
from openapi_client.api.text_text_entity_extraction_api import TextTextEntityExtractionApi
from openapi_client.api.text_text_hate_speech_detection_api import TextTextHateSpeechDetectionApi
from openapi_client.api.text_text_keyword_extraction_api import TextTextKeywordExtractionApi
from openapi_client.api.text_text_language_detection_api import TextTextLanguageDetectionApi
from openapi_client.api.text_text_language_generation_api import TextTextLanguageGenerationApi
from openapi_client.api.text_text_lemmatization_api import TextTextLemmatizationApi
from openapi_client.api.text_text_named_entity_recognition_api import TextTextNamedEntityRecognitionApi
from openapi_client.api.text_text_next_sentence_prediction_api import TextTextNextSentencePredictionApi
from openapi_client.api.text_text_next_word_prediction_api import TextTextNextWordPredictionApi
from openapi_client.api.text_text_plural_api import TextTextPluralApi
from openapi_client.api.text_text_programming_language_generation_api import TextTextProgrammingLanguageGenerationApi
from openapi_client.api.text_text_question_answering_api import TextTextQuestionAnsweringApi
from openapi_client.api.text_text_sentence_paraphraser_api import TextTextSentenceParaphraserApi
from openapi_client.api.text_text_sentiment_analysis_api import TextTextSentimentAnalysisApi
from openapi_client.api.text_text_similarity_api import TextTextSimilarityApi
from openapi_client.api.text_text_word_alignment_api import TextTextWordAlignmentApi

# import ApiClient
from openapi_client.api_client import ApiClient
from openapi_client.configuration import Configuration
from openapi_client.exceptions import OpenApiException
from openapi_client.exceptions import ApiTypeError
from openapi_client.exceptions import ApiValueError
from openapi_client.exceptions import ApiKeyError
from openapi_client.exceptions import ApiException
# import models into sdk package
from openapi_client.models.body_apply_image_image_background_removal_post import BodyApplyImageImageBackgroundRemovalPost
from openapi_client.models.body_apply_image_image_colorization_post import BodyApplyImageImageColorizationPost
from openapi_client.models.body_apply_image_image_face_bluring_post import BodyApplyImageImageFaceBluringPost
from openapi_client.models.body_apply_image_image_super_resolution_post import BodyApplyImageImageSuperResolutionPost
from openapi_client.models.body_apply_image_image_uncolorization_post import BodyApplyImageImageUncolorizationPost
from openapi_client.models.body_apply_image_text_asciify_post import BodyApplyImageTextAsciifyPost
from openapi_client.models.body_apply_image_text_ocr_post import BodyApplyImageTextOcrPost
from openapi_client.models.http_validation_error import HTTPValidationError
from openapi_client.models.validation_error import ValidationError

