library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/image_image_background_removal_api.dart';
part 'api/image_image_colorization_api.dart';
part 'api/image_image_face_bluring_api.dart';
part 'api/image_image_restoration_api.dart';
part 'api/image_image_super_resolution_api.dart';
part 'api/image_image_uncolorization_api.dart';
part 'api/image_text_asciify_api.dart';
part 'api/image_text_ocr_api.dart';
part 'api/text_text_autocorrect_api.dart';
part 'api/text_text_boolean_question_generation_api.dart';
part 'api/text_text_dependency_tracking_api.dart';
part 'api/text_text_emotion_recognition_api.dart';
part 'api/text_text_entity_extraction_api.dart';
part 'api/text_text_hate_speech_detection_api.dart';
part 'api/text_text_keyword_extraction_api.dart';
part 'api/text_text_language_detection_api.dart';
part 'api/text_text_language_generation_api.dart';
part 'api/text_text_lemmatization_api.dart';
part 'api/text_text_named_entity_recognition_api.dart';
part 'api/text_text_next_sentence_prediction_api.dart';
part 'api/text_text_next_word_prediction_api.dart';
part 'api/text_text_plural_api.dart';
part 'api/text_text_programming_language_generation_api.dart';
part 'api/text_text_programming_language_identification_api.dart';
part 'api/text_text_question_answering_api.dart';
part 'api/text_text_sentence_pair_modeling_api.dart';
part 'api/text_text_sentence_paraphraser_api.dart';
part 'api/text_text_sentiment_analysis_api.dart';
part 'api/text_text_similarity_api.dart';
part 'api/text_text_summarization_api.dart';
part 'api/text_text_translation_api.dart';
part 'api/text_text_transliteration_api.dart';
part 'api/text_text_word_alignment_api.dart';
part 'api/video_video_frame_interpolation_api.dart';

part 'model/body_apply_image_image_background_removal_post.dart';
part 'model/body_apply_image_image_colorization_post.dart';
part 'model/body_apply_image_image_face_bluring_post.dart';
part 'model/body_apply_image_image_restoration_post.dart';
part 'model/body_apply_image_image_super_resolution_post.dart';
part 'model/body_apply_image_image_uncolorization_post.dart';
part 'model/body_apply_image_text_asciify_post.dart';
part 'model/body_apply_image_text_ocr_post.dart';
part 'model/body_apply_video_video_frame_interpolation_post.dart';
part 'model/http_validation_error.dart';
part 'model/validation_error.dart';


ApiClient defaultApiClient = ApiClient();
