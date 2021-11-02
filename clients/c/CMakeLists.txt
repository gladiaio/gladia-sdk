cmake_minimum_required (VERSION 2.6)
project (CGenerator)

cmake_policy(SET CMP0063 NEW)

set(CMAKE_C_VISIBILITY_PRESET default)
set(CMAKE_CXX_VISIBILITY_PRESET default)
set(CMAKE_VISIBILITY_INLINES_HIDDEN OFF)
set(CMAKE_BUILD_TYPE Debug)

set(pkgName "fastapi")

find_package(CURL 7.58.0 REQUIRED)
if(CURL_FOUND)
	include_directories(${CURL_INCLUDE_DIR})
	set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
else(CURL_FOUND)
	message(FATAL_ERROR "Could not find the CURL library and development files.")
endif()

set(SRCS
    src/list.c
    src/apiKey.c
    src/apiClient.c
    external/cJSON.c
    model/body_apply_image_image_background_removal__post.c
    model/body_apply_image_image_colorization__post.c
    model/body_apply_image_image_face_bluring__post.c
    model/body_apply_image_image_restoration__post.c
    model/body_apply_image_image_super_resolution__post.c
    model/body_apply_image_image_uncolorization__post.c
    model/body_apply_image_text_asciify__post.c
    model/body_apply_image_text_ocr__post.c
    model/body_apply_video_video_frame_interpolation__post.c
    model/http_validation_error.c
    model/validation_error.c
    api/ImageImageBackgroundRemovalAPI.c
    api/ImageImageColorizationAPI.c
    api/ImageImageFaceBluringAPI.c
    api/ImageImageRestorationAPI.c
    api/ImageImageSuperResolutionAPI.c
    api/ImageImageUncolorizationAPI.c
    api/ImageTextAsciifyAPI.c
    api/ImageTextOcrAPI.c
    api/TextTextAutocorrectAPI.c
    api/TextTextBooleanQuestionGenerationAPI.c
    api/TextTextDependencyTrackingAPI.c
    api/TextTextEmotionRecognitionAPI.c
    api/TextTextEntityExtractionAPI.c
    api/TextTextHateSpeechDetectionAPI.c
    api/TextTextKeywordExtractionAPI.c
    api/TextTextLanguageDetectionAPI.c
    api/TextTextLanguageGenerationAPI.c
    api/TextTextLemmatizationAPI.c
    api/TextTextNamedEntityRecognitionAPI.c
    api/TextTextNextSentencePredictionAPI.c
    api/TextTextNextWordPredictionAPI.c
    api/TextTextPluralAPI.c
    api/TextTextProgrammingLanguageGenerationAPI.c
    api/TextTextProgrammingLanguageIdentificationAPI.c
    api/TextTextQuestionAnsweringAPI.c
    api/TextTextSentencePairModelingAPI.c
    api/TextTextSentenceParaphraserAPI.c
    api/TextTextSentimentAnalysisAPI.c
    api/TextTextSimilarityAPI.c
    api/TextTextSummarizationAPI.c
    api/TextTextTranslationAPI.c
    api/TextTextTransliterationAPI.c
    api/TextTextWordAlignmentAPI.c
    api/VideoVideoFrameInterpolationAPI.c

)

set(HDRS
    include/apiClient.h
    include/list.h
    include/keyValuePair.h
    external/cJSON.h
    model/body_apply_image_image_background_removal__post.h
    model/body_apply_image_image_colorization__post.h
    model/body_apply_image_image_face_bluring__post.h
    model/body_apply_image_image_restoration__post.h
    model/body_apply_image_image_super_resolution__post.h
    model/body_apply_image_image_uncolorization__post.h
    model/body_apply_image_text_asciify__post.h
    model/body_apply_image_text_ocr__post.h
    model/body_apply_video_video_frame_interpolation__post.h
    model/http_validation_error.h
    model/validation_error.h
    api/ImageImageBackgroundRemovalAPI.h
    api/ImageImageColorizationAPI.h
    api/ImageImageFaceBluringAPI.h
    api/ImageImageRestorationAPI.h
    api/ImageImageSuperResolutionAPI.h
    api/ImageImageUncolorizationAPI.h
    api/ImageTextAsciifyAPI.h
    api/ImageTextOcrAPI.h
    api/TextTextAutocorrectAPI.h
    api/TextTextBooleanQuestionGenerationAPI.h
    api/TextTextDependencyTrackingAPI.h
    api/TextTextEmotionRecognitionAPI.h
    api/TextTextEntityExtractionAPI.h
    api/TextTextHateSpeechDetectionAPI.h
    api/TextTextKeywordExtractionAPI.h
    api/TextTextLanguageDetectionAPI.h
    api/TextTextLanguageGenerationAPI.h
    api/TextTextLemmatizationAPI.h
    api/TextTextNamedEntityRecognitionAPI.h
    api/TextTextNextSentencePredictionAPI.h
    api/TextTextNextWordPredictionAPI.h
    api/TextTextPluralAPI.h
    api/TextTextProgrammingLanguageGenerationAPI.h
    api/TextTextProgrammingLanguageIdentificationAPI.h
    api/TextTextQuestionAnsweringAPI.h
    api/TextTextSentencePairModelingAPI.h
    api/TextTextSentenceParaphraserAPI.h
    api/TextTextSentimentAnalysisAPI.h
    api/TextTextSimilarityAPI.h
    api/TextTextSummarizationAPI.h
    api/TextTextTranslationAPI.h
    api/TextTextTransliterationAPI.h
    api/TextTextWordAlignmentAPI.h
    api/VideoVideoFrameInterpolationAPI.h

)

# Add library with project file with projectname as library name
add_library(${pkgName} SHARED ${SRCS} ${HDRS})
# Link dependent libraries
target_link_libraries(${pkgName} ${CURL_LIBRARIES} )
#install library to destination
install(TARGETS ${pkgName} DESTINATION ${CMAKE_INSTALL_PREFIX})

# Setting file variables to null
set(SRCS "")
set(HDRS "")


## This section shows how to use the above compiled libary to compile the source files
## set source files
#set(SRCS
#    unit-tests/manual-PetAPI.c
#    unit-tests/manual-StoreAPI.c
#    unit-tests/manual-UserAPI.c
#    unit-tests/manual-order.c
#    unit-tests/manual-user.c)

##set header files
#set(HDRS
#)

## loop over all files in SRCS variable
#foreach(SOURCE_FILE ${SRCS})
#    # Get only the file name from the file as add_executable doesnot support executable with slash("/")
#    get_filename_component(FILE_NAME_ONLY ${SOURCE_FILE} NAME_WE)
#    # Remove .c from the file name and set it as executable name
#    string( REPLACE ".c" "" EXECUTABLE_FILE ${FILE_NAME_ONLY})
#    # Add executable for every source file in  SRCS
#    add_executable(unit-${EXECUTABLE_FILE} ${SOURCE_FILE})
#    # Link above created libary to executable and dependent libary curl
#    target_link_libraries(unit-${EXECUTABLE_FILE} ${CURL_LIBRARIES} ${pkgName} )
#endforeach(SOURCE_FILE ${SRCS})
