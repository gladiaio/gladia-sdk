package = "openapiclient"
version = "1.0.0-1"
source = {
	url = "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
}

description = {
	summary = "API client genreated by OpenAPI Generator",
	detailed = [[
No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)]],
	homepage = "https://openapi-generator.tech",
	license = "Unlicense",
	maintainer = "OpenAPI Generator contributors",
}

dependencies = {
	"lua >= 5.2",
	"http",
	"dkjson",
	"basexx"
}

build = {
	type = "builtin",
	modules = {
		["openapiclient.api.image_image_background_removal_api"] = "openapiclient/api/image_image_background_removal_api.lua";
		["openapiclient.api.image_image_colorization_api"] = "openapiclient/api/image_image_colorization_api.lua";
		["openapiclient.api.image_image_face_bluring_api"] = "openapiclient/api/image_image_face_bluring_api.lua";
		["openapiclient.api.image_image_restoration_api"] = "openapiclient/api/image_image_restoration_api.lua";
		["openapiclient.api.image_image_super_resolution_api"] = "openapiclient/api/image_image_super_resolution_api.lua";
		["openapiclient.api.image_image_uncolorization_api"] = "openapiclient/api/image_image_uncolorization_api.lua";
		["openapiclient.api.image_text_asciify_api"] = "openapiclient/api/image_text_asciify_api.lua";
		["openapiclient.api.image_text_ocr_api"] = "openapiclient/api/image_text_ocr_api.lua";
		["openapiclient.api.text_text_autocorrect_api"] = "openapiclient/api/text_text_autocorrect_api.lua";
		["openapiclient.api.text_text_boolean_question_generation_api"] = "openapiclient/api/text_text_boolean_question_generation_api.lua";
		["openapiclient.api.text_text_dependency_tracking_api"] = "openapiclient/api/text_text_dependency_tracking_api.lua";
		["openapiclient.api.text_text_emotion_recognition_api"] = "openapiclient/api/text_text_emotion_recognition_api.lua";
		["openapiclient.api.text_text_entity_extraction_api"] = "openapiclient/api/text_text_entity_extraction_api.lua";
		["openapiclient.api.text_text_hate_speech_detection_api"] = "openapiclient/api/text_text_hate_speech_detection_api.lua";
		["openapiclient.api.text_text_keyword_extraction_api"] = "openapiclient/api/text_text_keyword_extraction_api.lua";
		["openapiclient.api.text_text_language_detection_api"] = "openapiclient/api/text_text_language_detection_api.lua";
		["openapiclient.api.text_text_language_generation_api"] = "openapiclient/api/text_text_language_generation_api.lua";
		["openapiclient.api.text_text_lemmatization_api"] = "openapiclient/api/text_text_lemmatization_api.lua";
		["openapiclient.api.text_text_named_entity_recognition_api"] = "openapiclient/api/text_text_named_entity_recognition_api.lua";
		["openapiclient.api.text_text_next_sentence_prediction_api"] = "openapiclient/api/text_text_next_sentence_prediction_api.lua";
		["openapiclient.api.text_text_next_word_prediction_api"] = "openapiclient/api/text_text_next_word_prediction_api.lua";
		["openapiclient.api.text_text_plural_api"] = "openapiclient/api/text_text_plural_api.lua";
		["openapiclient.api.text_text_programming_language_generation_api"] = "openapiclient/api/text_text_programming_language_generation_api.lua";
		["openapiclient.api.text_text_programming_language_identification_api"] = "openapiclient/api/text_text_programming_language_identification_api.lua";
		["openapiclient.api.text_text_question_answering_api"] = "openapiclient/api/text_text_question_answering_api.lua";
		["openapiclient.api.text_text_sentence_pair_modeling_api"] = "openapiclient/api/text_text_sentence_pair_modeling_api.lua";
		["openapiclient.api.text_text_sentence_paraphraser_api"] = "openapiclient/api/text_text_sentence_paraphraser_api.lua";
		["openapiclient.api.text_text_sentiment_analysis_api"] = "openapiclient/api/text_text_sentiment_analysis_api.lua";
		["openapiclient.api.text_text_similarity_api"] = "openapiclient/api/text_text_similarity_api.lua";
		["openapiclient.api.text_text_summarization_api"] = "openapiclient/api/text_text_summarization_api.lua";
		["openapiclient.api.text_text_translation_api"] = "openapiclient/api/text_text_translation_api.lua";
		["openapiclient.api.text_text_transliteration_api"] = "openapiclient/api/text_text_transliteration_api.lua";
		["openapiclient.api.text_text_word_alignment_api"] = "openapiclient/api/text_text_word_alignment_api.lua";
		["openapiclient.api.video_video_frame_interpolation_api"] = "openapiclient/api/video_video_frame_interpolation_api.lua";
		["openapiclient.model.body_apply_image_image_background_removal__post"] = "openapiclient/model/body_apply_image_image_background_removal__post.lua";
		["openapiclient.model.body_apply_image_image_colorization__post"] = "openapiclient/model/body_apply_image_image_colorization__post.lua";
		["openapiclient.model.body_apply_image_image_face_bluring__post"] = "openapiclient/model/body_apply_image_image_face_bluring__post.lua";
		["openapiclient.model.body_apply_image_image_restoration__post"] = "openapiclient/model/body_apply_image_image_restoration__post.lua";
		["openapiclient.model.body_apply_image_image_super_resolution__post"] = "openapiclient/model/body_apply_image_image_super_resolution__post.lua";
		["openapiclient.model.body_apply_image_image_uncolorization__post"] = "openapiclient/model/body_apply_image_image_uncolorization__post.lua";
		["openapiclient.model.body_apply_image_text_asciify__post"] = "openapiclient/model/body_apply_image_text_asciify__post.lua";
		["openapiclient.model.body_apply_image_text_ocr__post"] = "openapiclient/model/body_apply_image_text_ocr__post.lua";
		["openapiclient.model.body_apply_video_video_frame_interpolation__post"] = "openapiclient/model/body_apply_video_video_frame_interpolation__post.lua";
		["openapiclient.model.http_validation_error"] = "openapiclient/model/http_validation_error.lua";
		["openapiclient.model.validation_error"] = "openapiclient/model/validation_error.lua";
	}
}
