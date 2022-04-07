#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for FastAPI.
#
# LICENSE:
# 
#
# CONTACT:
# 
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statemets
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["applyImageImageBackgroundRemovalPost:::image"]=1
operation_parameters_minimum_occurrences["applyImageImageBackgroundRemovalPost:::model"]=0
operation_parameters_minimum_occurrences["applyImageImageColorizationPost:::image"]=1
operation_parameters_minimum_occurrences["applyImageImageColorizationPost:::model"]=0
operation_parameters_minimum_occurrences["applyImageImageFaceBluringPost:::image"]=1
operation_parameters_minimum_occurrences["applyImageImageFaceBluringPost:::model"]=0
operation_parameters_minimum_occurrences["applyImageImageSuperResolutionPost:::image"]=1
operation_parameters_minimum_occurrences["applyImageImageSuperResolutionPost:::model"]=0
operation_parameters_minimum_occurrences["applyImageImageUncolorizationPost:::image"]=1
operation_parameters_minimum_occurrences["applyImageImageUncolorizationPost:::model"]=0
operation_parameters_minimum_occurrences["applyImageTextAsciifyPost:::image"]=1
operation_parameters_minimum_occurrences["applyImageTextAsciifyPost:::model"]=0
operation_parameters_minimum_occurrences["applyImageTextOcrPost:::image"]=1
operation_parameters_minimum_occurrences["applyImageTextOcrPost:::source_language"]=0
operation_parameters_minimum_occurrences["applyImageTextOcrPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextAutocorrectPost:::sentence"]=0
operation_parameters_minimum_occurrences["applyTextTextAutocorrectPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextEmotionRecognitionPost:::text"]=0
operation_parameters_minimum_occurrences["applyTextTextEmotionRecognitionPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextEntityExtractionPost:::input_string"]=0
operation_parameters_minimum_occurrences["applyTextTextEntityExtractionPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextHateSpeechDetectionPost:::text"]=0
operation_parameters_minimum_occurrences["applyTextTextHateSpeechDetectionPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextKeywordExtractionPost:::text"]=0
operation_parameters_minimum_occurrences["applyTextTextKeywordExtractionPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextLanguageDetectionPost:::text"]=0
operation_parameters_minimum_occurrences["applyTextTextLanguageDetectionPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextLanguageGenerationPost:::text"]=0
operation_parameters_minimum_occurrences["applyTextTextLanguageGenerationPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextLemmatizationPost:::sentence"]=0
operation_parameters_minimum_occurrences["applyTextTextLemmatizationPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextNamedEntityRecognitionPost:::text"]=0
operation_parameters_minimum_occurrences["applyTextTextNamedEntityRecognitionPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextNextSentencePredictionPost:::sentence_1"]=0
operation_parameters_minimum_occurrences["applyTextTextNextSentencePredictionPost:::sentence_2"]=0
operation_parameters_minimum_occurrences["applyTextTextNextSentencePredictionPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextNextWordPredictionPost:::sentence"]=0
operation_parameters_minimum_occurrences["applyTextTextNextWordPredictionPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextPluralPost:::word"]=0
operation_parameters_minimum_occurrences["applyTextTextPluralPost:::count"]=0
operation_parameters_minimum_occurrences["applyTextTextPluralPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextProgrammingLanguageGenerationPost:::code_snippet"]=0
operation_parameters_minimum_occurrences["applyTextTextProgrammingLanguageGenerationPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextQuestionAnsweringPost:::context"]=0
operation_parameters_minimum_occurrences["applyTextTextQuestionAnsweringPost:::question"]=0
operation_parameters_minimum_occurrences["applyTextTextQuestionAnsweringPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextSentenceParaphraserPost:::context"]=0
operation_parameters_minimum_occurrences["applyTextTextSentenceParaphraserPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextSentimentAnalysisPost:::text"]=0
operation_parameters_minimum_occurrences["applyTextTextSentimentAnalysisPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextSimilarityPost:::sentence_1"]=0
operation_parameters_minimum_occurrences["applyTextTextSimilarityPost:::sentence_2"]=0
operation_parameters_minimum_occurrences["applyTextTextSimilarityPost:::model"]=0
operation_parameters_minimum_occurrences["applyTextTextWordAlignmentPost:::input_string_language_1"]=0
operation_parameters_minimum_occurrences["applyTextTextWordAlignmentPost:::input_string_language_2"]=0
operation_parameters_minimum_occurrences["applyTextTextWordAlignmentPost:::model"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["applyImageImageBackgroundRemovalPost:::image"]=0
operation_parameters_maximum_occurrences["applyImageImageBackgroundRemovalPost:::model"]=0
operation_parameters_maximum_occurrences["applyImageImageColorizationPost:::image"]=0
operation_parameters_maximum_occurrences["applyImageImageColorizationPost:::model"]=0
operation_parameters_maximum_occurrences["applyImageImageFaceBluringPost:::image"]=0
operation_parameters_maximum_occurrences["applyImageImageFaceBluringPost:::model"]=0
operation_parameters_maximum_occurrences["applyImageImageSuperResolutionPost:::image"]=0
operation_parameters_maximum_occurrences["applyImageImageSuperResolutionPost:::model"]=0
operation_parameters_maximum_occurrences["applyImageImageUncolorizationPost:::image"]=0
operation_parameters_maximum_occurrences["applyImageImageUncolorizationPost:::model"]=0
operation_parameters_maximum_occurrences["applyImageTextAsciifyPost:::image"]=0
operation_parameters_maximum_occurrences["applyImageTextAsciifyPost:::model"]=0
operation_parameters_maximum_occurrences["applyImageTextOcrPost:::image"]=0
operation_parameters_maximum_occurrences["applyImageTextOcrPost:::source_language"]=0
operation_parameters_maximum_occurrences["applyImageTextOcrPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextAutocorrectPost:::sentence"]=0
operation_parameters_maximum_occurrences["applyTextTextAutocorrectPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextEmotionRecognitionPost:::text"]=0
operation_parameters_maximum_occurrences["applyTextTextEmotionRecognitionPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextEntityExtractionPost:::input_string"]=0
operation_parameters_maximum_occurrences["applyTextTextEntityExtractionPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextHateSpeechDetectionPost:::text"]=0
operation_parameters_maximum_occurrences["applyTextTextHateSpeechDetectionPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextKeywordExtractionPost:::text"]=0
operation_parameters_maximum_occurrences["applyTextTextKeywordExtractionPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextLanguageDetectionPost:::text"]=0
operation_parameters_maximum_occurrences["applyTextTextLanguageDetectionPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextLanguageGenerationPost:::text"]=0
operation_parameters_maximum_occurrences["applyTextTextLanguageGenerationPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextLemmatizationPost:::sentence"]=0
operation_parameters_maximum_occurrences["applyTextTextLemmatizationPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextNamedEntityRecognitionPost:::text"]=0
operation_parameters_maximum_occurrences["applyTextTextNamedEntityRecognitionPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextNextSentencePredictionPost:::sentence_1"]=0
operation_parameters_maximum_occurrences["applyTextTextNextSentencePredictionPost:::sentence_2"]=0
operation_parameters_maximum_occurrences["applyTextTextNextSentencePredictionPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextNextWordPredictionPost:::sentence"]=0
operation_parameters_maximum_occurrences["applyTextTextNextWordPredictionPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextPluralPost:::word"]=0
operation_parameters_maximum_occurrences["applyTextTextPluralPost:::count"]=0
operation_parameters_maximum_occurrences["applyTextTextPluralPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextProgrammingLanguageGenerationPost:::code_snippet"]=0
operation_parameters_maximum_occurrences["applyTextTextProgrammingLanguageGenerationPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextQuestionAnsweringPost:::context"]=0
operation_parameters_maximum_occurrences["applyTextTextQuestionAnsweringPost:::question"]=0
operation_parameters_maximum_occurrences["applyTextTextQuestionAnsweringPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextSentenceParaphraserPost:::context"]=0
operation_parameters_maximum_occurrences["applyTextTextSentenceParaphraserPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextSentimentAnalysisPost:::text"]=0
operation_parameters_maximum_occurrences["applyTextTextSentimentAnalysisPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextSimilarityPost:::sentence_1"]=0
operation_parameters_maximum_occurrences["applyTextTextSimilarityPost:::sentence_2"]=0
operation_parameters_maximum_occurrences["applyTextTextSimilarityPost:::model"]=0
operation_parameters_maximum_occurrences["applyTextTextWordAlignmentPost:::input_string_language_1"]=0
operation_parameters_maximum_occurrences["applyTextTextWordAlignmentPost:::input_string_language_2"]=0
operation_parameters_maximum_occurrences["applyTextTextWordAlignmentPost:::model"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["applyImageImageBackgroundRemovalPost:::image"]=""
operation_parameters_collection_type["applyImageImageBackgroundRemovalPost:::model"]=""
operation_parameters_collection_type["applyImageImageColorizationPost:::image"]=""
operation_parameters_collection_type["applyImageImageColorizationPost:::model"]=""
operation_parameters_collection_type["applyImageImageFaceBluringPost:::image"]=""
operation_parameters_collection_type["applyImageImageFaceBluringPost:::model"]=""
operation_parameters_collection_type["applyImageImageSuperResolutionPost:::image"]=""
operation_parameters_collection_type["applyImageImageSuperResolutionPost:::model"]=""
operation_parameters_collection_type["applyImageImageUncolorizationPost:::image"]=""
operation_parameters_collection_type["applyImageImageUncolorizationPost:::model"]=""
operation_parameters_collection_type["applyImageTextAsciifyPost:::image"]=""
operation_parameters_collection_type["applyImageTextAsciifyPost:::model"]=""
operation_parameters_collection_type["applyImageTextOcrPost:::image"]=""
operation_parameters_collection_type["applyImageTextOcrPost:::source_language"]=""
operation_parameters_collection_type["applyImageTextOcrPost:::model"]=""
operation_parameters_collection_type["applyTextTextAutocorrectPost:::sentence"]=""
operation_parameters_collection_type["applyTextTextAutocorrectPost:::model"]=""
operation_parameters_collection_type["applyTextTextEmotionRecognitionPost:::text"]=""
operation_parameters_collection_type["applyTextTextEmotionRecognitionPost:::model"]=""
operation_parameters_collection_type["applyTextTextEntityExtractionPost:::input_string"]=""
operation_parameters_collection_type["applyTextTextEntityExtractionPost:::model"]=""
operation_parameters_collection_type["applyTextTextHateSpeechDetectionPost:::text"]=""
operation_parameters_collection_type["applyTextTextHateSpeechDetectionPost:::model"]=""
operation_parameters_collection_type["applyTextTextKeywordExtractionPost:::text"]=""
operation_parameters_collection_type["applyTextTextKeywordExtractionPost:::model"]=""
operation_parameters_collection_type["applyTextTextLanguageDetectionPost:::text"]=""
operation_parameters_collection_type["applyTextTextLanguageDetectionPost:::model"]=""
operation_parameters_collection_type["applyTextTextLanguageGenerationPost:::text"]=""
operation_parameters_collection_type["applyTextTextLanguageGenerationPost:::model"]=""
operation_parameters_collection_type["applyTextTextLemmatizationPost:::sentence"]=""
operation_parameters_collection_type["applyTextTextLemmatizationPost:::model"]=""
operation_parameters_collection_type["applyTextTextNamedEntityRecognitionPost:::text"]=""
operation_parameters_collection_type["applyTextTextNamedEntityRecognitionPost:::model"]=""
operation_parameters_collection_type["applyTextTextNextSentencePredictionPost:::sentence_1"]=""
operation_parameters_collection_type["applyTextTextNextSentencePredictionPost:::sentence_2"]=""
operation_parameters_collection_type["applyTextTextNextSentencePredictionPost:::model"]=""
operation_parameters_collection_type["applyTextTextNextWordPredictionPost:::sentence"]=""
operation_parameters_collection_type["applyTextTextNextWordPredictionPost:::model"]=""
operation_parameters_collection_type["applyTextTextPluralPost:::word"]=""
operation_parameters_collection_type["applyTextTextPluralPost:::count"]=""
operation_parameters_collection_type["applyTextTextPluralPost:::model"]=""
operation_parameters_collection_type["applyTextTextProgrammingLanguageGenerationPost:::code_snippet"]=""
operation_parameters_collection_type["applyTextTextProgrammingLanguageGenerationPost:::model"]=""
operation_parameters_collection_type["applyTextTextQuestionAnsweringPost:::context"]=""
operation_parameters_collection_type["applyTextTextQuestionAnsweringPost:::question"]=""
operation_parameters_collection_type["applyTextTextQuestionAnsweringPost:::model"]=""
operation_parameters_collection_type["applyTextTextSentenceParaphraserPost:::context"]=""
operation_parameters_collection_type["applyTextTextSentenceParaphraserPost:::model"]=""
operation_parameters_collection_type["applyTextTextSentimentAnalysisPost:::text"]=""
operation_parameters_collection_type["applyTextTextSentimentAnalysisPost:::model"]=""
operation_parameters_collection_type["applyTextTextSimilarityPost:::sentence_1"]=""
operation_parameters_collection_type["applyTextTextSimilarityPost:::sentence_2"]=""
operation_parameters_collection_type["applyTextTextSimilarityPost:::model"]=""
operation_parameters_collection_type["applyTextTextWordAlignmentPost:::input_string_language_1"]=""
operation_parameters_collection_type["applyTextTextWordAlignmentPost:::input_string_language_2"]=""
operation_parameters_collection_type["applyTextTextWordAlignmentPost:::model"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""


##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
    done
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    local body_json="-d '{"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_json+=", "
        fi
        body_json+="\"${key}\": ${body_parameters[${key}]}"
    done
    body_json+="}'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_json}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    local count=0
    for qparam in "${query_params[@]}"; do
        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

        if [[ -n "${parameter_values[*]}" ]]; then
            if [[ $((count++)) -gt 0 ]]; then
                query_request_part+="&"
            fi
        fi


        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'mutli' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}FastAPI command line client (API version 0.1.0)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[imageImageBackgroundRemoval]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyImageImageBackgroundRemovalPost${OFF};Apply model for the background-removal task for a given models
  ${CYAN}getVersionsImageImageBackgroundRemovalGet${OFF};Get list of models available for background-removal
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[imageImageColorization]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyImageImageColorizationPost${OFF};Apply model for the colorization task for a given models
  ${CYAN}getVersionsImageImageColorizationGet${OFF};Get list of models available for colorization
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[imageImageFaceBluring]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyImageImageFaceBluringPost${OFF};Apply model for the face-bluring task for a given models
  ${CYAN}getVersionsImageImageFaceBluringGet${OFF};Get list of models available for face-bluring
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[imageImageSuperResolution]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyImageImageSuperResolutionPost${OFF};Apply model for the super-resolution task for a given models
  ${CYAN}getVersionsImageImageSuperResolutionGet${OFF};Get list of models available for super-resolution
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[imageImageUncolorization]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyImageImageUncolorizationPost${OFF};Apply model for the uncolorization task for a given models
  ${CYAN}getVersionsImageImageUncolorizationGet${OFF};Get list of models available for uncolorization
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[imageTextAsciify]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyImageTextAsciifyPost${OFF};Apply model for the asciify task for a given models
  ${CYAN}getVersionsImageTextAsciifyGet${OFF};Get list of models available for asciify
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[imageTextOcr]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyImageTextOcrPost${OFF};Apply model for the ocr task for a given models
  ${CYAN}getVersionsImageTextOcrGet${OFF};Get list of models available for ocr
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextAutocorrect]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextAutocorrectPost${OFF};Apply model for the autocorrect task for a given models
  ${CYAN}getVersionsTextTextAutocorrectGet${OFF};Get list of models available for autocorrect
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextEmotionRecognition]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextEmotionRecognitionPost${OFF};Apply model for the emotion-recognition task for a given models
  ${CYAN}getVersionsTextTextEmotionRecognitionGet${OFF};Get list of models available for emotion-recognition
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextEntityExtraction]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextEntityExtractionPost${OFF};Apply model for the entity-extraction task for a given models
  ${CYAN}getVersionsTextTextEntityExtractionGet${OFF};Get list of models available for entity-extraction
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextHateSpeechDetection]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextHateSpeechDetectionPost${OFF};Apply model for the hate-speech-detection task for a given models
  ${CYAN}getVersionsTextTextHateSpeechDetectionGet${OFF};Get list of models available for hate-speech-detection
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextKeywordExtraction]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextKeywordExtractionPost${OFF};Apply model for the keyword-extraction task for a given models
  ${CYAN}getVersionsTextTextKeywordExtractionGet${OFF};Get list of models available for keyword-extraction
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextLanguageDetection]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextLanguageDetectionPost${OFF};Apply model for the language-detection task for a given models
  ${CYAN}getVersionsTextTextLanguageDetectionGet${OFF};Get list of models available for language-detection
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextLanguageGeneration]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextLanguageGenerationPost${OFF};Apply model for the language-generation task for a given models
  ${CYAN}getVersionsTextTextLanguageGenerationGet${OFF};Get list of models available for language-generation
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextLemmatization]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextLemmatizationPost${OFF};Apply model for the lemmatization task for a given models
  ${CYAN}getVersionsTextTextLemmatizationGet${OFF};Get list of models available for lemmatization
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextNamedEntityRecognition]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextNamedEntityRecognitionPost${OFF};Apply model for the named-entity-recognition task for a given models
  ${CYAN}getVersionsTextTextNamedEntityRecognitionGet${OFF};Get list of models available for named-entity-recognition
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextNextSentencePrediction]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextNextSentencePredictionPost${OFF};Apply model for the next-sentence-prediction task for a given models
  ${CYAN}getVersionsTextTextNextSentencePredictionGet${OFF};Get list of models available for next-sentence-prediction
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextNextWordPrediction]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextNextWordPredictionPost${OFF};Apply model for the next-word-prediction task for a given models
  ${CYAN}getVersionsTextTextNextWordPredictionGet${OFF};Get list of models available for next-word-prediction
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextPlural]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextPluralPost${OFF};Apply model for the plural task for a given models
  ${CYAN}getVersionsTextTextPluralGet${OFF};Get list of models available for plural
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextProgrammingLanguageGeneration]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextProgrammingLanguageGenerationPost${OFF};Apply model for the programming-language-generation task for a given models
  ${CYAN}getVersionsTextTextProgrammingLanguageGenerationGet${OFF};Get list of models available for programming-language-generation
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextQuestionAnswering]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextQuestionAnsweringPost${OFF};Apply model for the question-answering task for a given models
  ${CYAN}getVersionsTextTextQuestionAnsweringGet${OFF};Get list of models available for question-answering
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextSentenceParaphraser]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextSentenceParaphraserPost${OFF};Apply model for the sentence-paraphraser task for a given models
  ${CYAN}getVersionsTextTextSentenceParaphraserGet${OFF};Get list of models available for sentence-paraphraser
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextSentimentAnalysis]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextSentimentAnalysisPost${OFF};Apply model for the sentiment-analysis task for a given models
  ${CYAN}getVersionsTextTextSentimentAnalysisGet${OFF};Get list of models available for sentiment-analysis
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextSimilarity]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextSimilarityPost${OFF};Apply model for the similarity task for a given models
  ${CYAN}getVersionsTextTextSimilarityGet${OFF};Get list of models available for similarity
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[textTextWordAlignment]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}applyTextTextWordAlignmentPost${OFF};Apply model for the word-alignment task for a given models
  ${CYAN}getVersionsTextTextWordAlignmentGet${OFF};Get list of models available for word-alignment
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://localhost')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}FastAPI command line client (API version 0.1.0)${OFF}"
    echo ""
    echo -e "License: "
    echo -e "Contact: "
    echo ""
read -r -d '' appdescription <<EOF

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}FastAPI command line client (API version 0.1.0)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for applyImageImageBackgroundRemovalPost operation
#
##############################################################################
print_applyImageImageBackgroundRemovalPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyImageImageBackgroundRemovalPost - Apply model for the background-removal task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: xception)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsImageImageBackgroundRemovalGet operation
#
##############################################################################
print_getVersionsImageImageBackgroundRemovalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsImageImageBackgroundRemovalGet - Get list of models available for background-removal${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyImageImageColorizationPost operation
#
##############################################################################
print_applyImageImageColorizationPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyImageImageColorizationPost - Apply model for the colorization task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: deoldify-stable)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsImageImageColorizationGet operation
#
##############################################################################
print_getVersionsImageImageColorizationGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsImageImageColorizationGet - Get list of models available for colorization${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyImageImageFaceBluringPost operation
#
##############################################################################
print_applyImageImageFaceBluringPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyImageImageFaceBluringPost - Apply model for the face-bluring task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: ageitgey)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsImageImageFaceBluringGet operation
#
##############################################################################
print_getVersionsImageImageFaceBluringGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsImageImageFaceBluringGet - Get list of models available for face-bluring${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyImageImageSuperResolutionPost operation
#
##############################################################################
print_applyImageImageSuperResolutionPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyImageImageSuperResolutionPost - Apply model for the super-resolution task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: idealo-psnr-small)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsImageImageSuperResolutionGet operation
#
##############################################################################
print_getVersionsImageImageSuperResolutionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsImageImageSuperResolutionGet - Get list of models available for super-resolution${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyImageImageUncolorizationPost operation
#
##############################################################################
print_applyImageImageUncolorizationPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyImageImageUncolorizationPost - Apply model for the uncolorization task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: v1)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsImageImageUncolorizationGet operation
#
##############################################################################
print_getVersionsImageImageUncolorizationGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsImageImageUncolorizationGet - Get list of models available for uncolorization${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyImageTextAsciifyPost operation
#
##############################################################################
print_applyImageTextAsciifyPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyImageTextAsciifyPost - Apply model for the asciify task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: ramesh-aditya)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsImageTextAsciifyGet operation
#
##############################################################################
print_getVersionsImageTextAsciifyGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsImageTextAsciifyGet - Get list of models available for asciify${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyImageTextOcrPost operation
#
##############################################################################
print_applyImageTextOcrPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyImageTextOcrPost - Apply model for the ocr task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}source_language${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: en)${OFF} - ${YELLOW} Specify as: source_language=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: easy-ocr)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsImageTextOcrGet operation
#
##############################################################################
print_getVersionsImageTextOcrGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsImageTextOcrGet - Get list of models available for ocr${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextAutocorrectPost operation
#
##############################################################################
print_applyTextTextAutocorrectPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextAutocorrectPost - Apply model for the autocorrect task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}sentence${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: Text to corrcte)${OFF} - ${YELLOW} Specify as: sentence=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: flexudy-t5-base-multi-sentence-doctor)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextAutocorrectGet operation
#
##############################################################################
print_getVersionsTextTextAutocorrectGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextAutocorrectGet - Get list of models available for autocorrect${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextEmotionRecognitionPost operation
#
##############################################################################
print_applyTextTextEmotionRecognitionPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextEmotionRecognitionPost - Apply model for the emotion-recognition task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}text${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: I like you. I love you)${OFF} - ${YELLOW} Specify as: text=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: mrm8488-t5-base-finetuned-emotion)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextEmotionRecognitionGet operation
#
##############################################################################
print_getVersionsTextTextEmotionRecognitionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextEmotionRecognitionGet - Get list of models available for emotion-recognition${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextEntityExtractionPost operation
#
##############################################################################
print_applyTextTextEntityExtractionPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextEntityExtractionPost - Apply model for the entity-extraction task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}input_string${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: Text to extract entities from)${OFF} - ${YELLOW} Specify as: input_string=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: dbmdz-bert-large-cased-finetuned-conll03-english)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextEntityExtractionGet operation
#
##############################################################################
print_getVersionsTextTextEntityExtractionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextEntityExtractionGet - Get list of models available for entity-extraction${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextHateSpeechDetectionPost operation
#
##############################################################################
print_applyTextTextHateSpeechDetectionPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextHateSpeechDetectionPost - Apply model for the hate-speech-detection task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}text${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: I hate you piece of shit)${OFF} - ${YELLOW} Specify as: text=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: Hate-speech-CNERG-dehatebert-mono-english)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextHateSpeechDetectionGet operation
#
##############################################################################
print_getVersionsTextTextHateSpeechDetectionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextHateSpeechDetectionGet - Get list of models available for hate-speech-detection${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextKeywordExtractionPost operation
#
##############################################################################
print_applyTextTextKeywordExtractionPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextKeywordExtractionPost - Apply model for the keyword-extraction task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}text${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: The Crown is a historical drama streaming television series about the reign of Queen Elizabeth II, created and principally written by Peter Morgan, and produced by Left Bank Pictures and Sony Pictures Television for Netflix. Morgan developed it from his drama film The Queen (2006) and especially his stage play The Audience (2013). The first season covers the period from Elizabeth&#39;s marriage to Philip, Duke of Edinburgh in 1947 to the disintegration of her sister Princess Margaret&#39;s engagement to Group Captain Peter Townsend in 1955. The second season covers the period from the Suez Crisis in 1956 to the retirement of Prime Minister Harold Macmillan in 1963 and the birth of Prince Edward in 1964. The third season spans 1964 to 1977, includes Harold Wilson&#39;s two periods as prime minister, and introduces Camilla Shand. The fourth season spans 1979 to the early 1990s and includes Margaret Thatcher&#39;s tenure as prime minister and Prince Charles&#39;s marriage to Lady Diana Spencer. The fifth and sixth seasons, which will close the series, will cover the Queen&#39;s reign into the 21st century. For each of the two-season increments, new actors fill the roles to account for the ageing process in the periods of time portrayed. Claire Foy portrays the Queen in the first two seasons, alongside Matt Smith as Prince Philip and Vanessa Kirby as Princess Margaret. For the third and fourth seasons, Olivia Colman takes over as the Queen, Tobias Menzies as Prince Philip, and Helena Bonham Carter as Princess Margaret. Also added to the cast in season 3 is Josh O&#39;Connor as Prince Charles. In the fourth season, new cast members include Emma Corrin as Lady Diana Spencer and Gillian Anderson as Margaret Thatcher. Imelda Staunton, Jonathan Pryce, and Lesley Manville will succeed Colman, Menzies, and Bonham Carter, respectively, for the final two seasons, while Elizabeth Debicki and Dominic West are expected to assume the role of Princess Diana and Prince Charles, respectively. Filming takes place at Elstree Studios in Borehamwood, Hertfordshire, with location shooting throughout the United Kingdom and internationally. The first season was released by Netflix on 4 November 2016, the second on 8 December 2017, the third on 17 November 2019, and the fourth on 15 November 2020. The fifth season is anticipated in 2022. As of 2020, the estimated production budget of The Crown has been reported to be $260 million, making it one of the most expensive television series in history.[4] The Crown was praised by critics for its acting, directing, writing, cinematography, and production values, although its historical inaccuracies have received some criticism, particularly within the fourth season. Nonetheless, it received accolades at the 23rd Screen Actors Guild Awards, Foy won Best Actress in the lead role and Best Actor for John Lithgow as Winston Churchill, and has secured a total of sixty three nominations for its first four seasons at the Primetime Emmy Awards, including four for Outstanding Drama Series.[5] The series has also twice won the Golden Globe Award for Best Television Series - Drama, at the 74th and 78th ceremonies, with additional acting wins for Foy, Colman, Corrin, O&#39;Connor and Anderson.[6] )${OFF} - ${YELLOW} Specify as: text=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: keybert-paraphrase-MiniLM-L6-v2)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextKeywordExtractionGet operation
#
##############################################################################
print_getVersionsTextTextKeywordExtractionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextKeywordExtractionGet - Get list of models available for keyword-extraction${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextLanguageDetectionPost operation
#
##############################################################################
print_applyTextTextLanguageDetectionPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextLanguageDetectionPost - Apply model for the language-detection task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}text${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: Input text to perform language detection on)${OFF} - ${YELLOW} Specify as: text=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: toftrup-etal-2021)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextLanguageDetectionGet operation
#
##############################################################################
print_getVersionsTextTextLanguageDetectionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextLanguageDetectionGet - Get list of models available for language-detection${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextLanguageGenerationPost operation
#
##############################################################################
print_applyTextTextLanguageGenerationPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextLanguageGenerationPost - Apply model for the language-generation task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}text${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: Input text to start generation from)${OFF} - ${YELLOW} Specify as: text=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: EleutherAI-gpt-neo-2_7B)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextLanguageGenerationGet operation
#
##############################################################################
print_getVersionsTextTextLanguageGenerationGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextLanguageGenerationGet - Get list of models available for language-generation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextLemmatizationPost operation
#
##############################################################################
print_applyTextTextLemmatizationPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextLemmatizationPost - Apply model for the lemmatization task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}sentence${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: My name is Clara and I live in Berkeley.)${OFF} - ${YELLOW} Specify as: sentence=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: wordnet)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextLemmatizationGet operation
#
##############################################################################
print_getVersionsTextTextLemmatizationGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextLemmatizationGet - Get list of models available for lemmatization${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextNamedEntityRecognitionPost operation
#
##############################################################################
print_applyTextTextNamedEntityRecognitionPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextNamedEntityRecognitionPost - Apply model for the named-entity-recognition task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}text${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: Hugging Face Inc. is a company based in New York City. Its headquarters are in DUMBO, therefore very close to the Manhattan Bridge.)${OFF} - ${YELLOW} Specify as: text=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: dbmdz-bert-large-cased-finetuned-conll03-english)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextNamedEntityRecognitionGet operation
#
##############################################################################
print_getVersionsTextTextNamedEntityRecognitionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextNamedEntityRecognitionGet - Get list of models available for named-entity-recognition${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextNextSentencePredictionPost operation
#
##############################################################################
print_applyTextTextNextSentencePredictionPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextNextSentencePredictionPost - Apply model for the next-sentence-prediction task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}sentence_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: I like you.)${OFF} - ${YELLOW} Specify as: sentence_1=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sentence_2${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: But it&#39;s not about you.)${OFF} - ${YELLOW} Specify as: sentence_2=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: bert-base-uncased)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextNextSentencePredictionGet operation
#
##############################################################################
print_getVersionsTextTextNextSentencePredictionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextNextSentencePredictionGet - Get list of models available for next-sentence-prediction${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextNextWordPredictionPost operation
#
##############################################################################
print_applyTextTextNextWordPredictionPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextNextWordPredictionPost - Apply model for the next-word-prediction task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}sentence${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: I think therefore I)${OFF} - ${YELLOW} Specify as: sentence=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: distilbert-base-uncased)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextNextWordPredictionGet operation
#
##############################################################################
print_getVersionsTextTextNextWordPredictionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextNextWordPredictionGet - Get list of models available for next-word-prediction${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextPluralPost operation
#
##############################################################################
print_applyTextTextPluralPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextPluralPost - Apply model for the plural task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}word${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: cat)${OFF} - ${YELLOW} Specify as: word=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}count${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 2)${OFF} - ${YELLOW} Specify as: count=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: inflect)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextPluralGet operation
#
##############################################################################
print_getVersionsTextTextPluralGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextPluralGet - Get list of models available for plural${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextProgrammingLanguageGenerationPost operation
#
##############################################################################
print_applyTextTextProgrammingLanguageGenerationPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextProgrammingLanguageGenerationPost - Apply model for the programming-language-generation task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}code_snippet${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: def is_palendrome(s):)${OFF} - ${YELLOW} Specify as: code_snippet=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: sentdex-GPyT)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextProgrammingLanguageGenerationGet operation
#
##############################################################################
print_getVersionsTextTextProgrammingLanguageGenerationGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextProgrammingLanguageGenerationGet - Get list of models available for programming-language-generation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextQuestionAnsweringPost operation
#
##############################################################################
print_applyTextTextQuestionAnsweringPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextQuestionAnsweringPost - Apply model for the question-answering task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}context${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: My name is Clara and I live in Berkeley.)${OFF} - ${YELLOW} Specify as: context=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}question${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: What&#39;s my name?)${OFF} - ${YELLOW} Specify as: question=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: deepset_bert-base-cased-squad2)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextQuestionAnsweringGet operation
#
##############################################################################
print_getVersionsTextTextQuestionAnsweringGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextQuestionAnsweringGet - Get list of models available for question-answering${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextSentenceParaphraserPost operation
#
##############################################################################
print_applyTextTextSentenceParaphraserPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextSentenceParaphraserPost - Apply model for the sentence-paraphraser task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}context${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: Once, a group of frogs was roaming around the forest in search of water.)${OFF} - ${YELLOW} Specify as: context=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: ramsrigouthamg-t5-large-paraphraser-diverse-high-quality)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextSentenceParaphraserGet operation
#
##############################################################################
print_getVersionsTextTextSentenceParaphraserGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextSentenceParaphraserGet - Get list of models available for sentence-paraphraser${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextSentimentAnalysisPost operation
#
##############################################################################
print_applyTextTextSentimentAnalysisPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextSentimentAnalysisPost - Apply model for the sentiment-analysis task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}text${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: I like you. I love you)${OFF} - ${YELLOW} Specify as: text=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: distilbert-base-uncased-finetuned-sst-2-english)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextSentimentAnalysisGet operation
#
##############################################################################
print_getVersionsTextTextSentimentAnalysisGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextSentimentAnalysisGet - Get list of models available for sentiment-analysis${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextSimilarityPost operation
#
##############################################################################
print_applyTextTextSimilarityPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextSimilarityPost - Apply model for the similarity task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}sentence_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: I like Python because I can build AI applications)${OFF} - ${YELLOW} Specify as: sentence_1=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sentence_2${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: Second sentence to compare to)${OFF} - ${YELLOW} Specify as: sentence_2=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: all-MiniLM-L6-v2)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextSimilarityGet operation
#
##############################################################################
print_getVersionsTextTextSimilarityGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextSimilarityGet - Get list of models available for similarity${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for applyTextTextWordAlignmentPost operation
#
##############################################################################
print_applyTextTextWordAlignmentPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}applyTextTextWordAlignmentPost - Apply model for the word-alignment task for a given models${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}input_string_language_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: Sentence from first language)${OFF} - ${YELLOW} Specify as: input_string_language_1=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}input_string_language_2${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: 来自 第一 语言的 句子)${OFF} - ${YELLOW} Specify as: input_string_language_2=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}model${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: bert-base-multilingual-cased)${OFF} - ${YELLOW} Specify as: model=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Validation Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersionsTextTextWordAlignmentGet operation
#
##############################################################################
print_getVersionsTextTextWordAlignmentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersionsTextTextWordAlignmentGet - Get list of models available for word-alignment${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful Response${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call applyImageImageBackgroundRemovalPost operation
#
##############################################################################
call_applyImageImageBackgroundRemovalPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(model)
    local path

    if ! path=$(build_request_path "/image/image/background-removal/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsImageImageBackgroundRemovalGet operation
#
##############################################################################
call_getVersionsImageImageBackgroundRemovalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/image/image/background-removal/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyImageImageColorizationPost operation
#
##############################################################################
call_applyImageImageColorizationPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(model)
    local path

    if ! path=$(build_request_path "/image/image/colorization/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsImageImageColorizationGet operation
#
##############################################################################
call_getVersionsImageImageColorizationGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/image/image/colorization/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyImageImageFaceBluringPost operation
#
##############################################################################
call_applyImageImageFaceBluringPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(model)
    local path

    if ! path=$(build_request_path "/image/image/face-bluring/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsImageImageFaceBluringGet operation
#
##############################################################################
call_getVersionsImageImageFaceBluringGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/image/image/face-bluring/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyImageImageSuperResolutionPost operation
#
##############################################################################
call_applyImageImageSuperResolutionPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(model)
    local path

    if ! path=$(build_request_path "/image/image/super-resolution/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsImageImageSuperResolutionGet operation
#
##############################################################################
call_getVersionsImageImageSuperResolutionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/image/image/super-resolution/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyImageImageUncolorizationPost operation
#
##############################################################################
call_applyImageImageUncolorizationPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(model)
    local path

    if ! path=$(build_request_path "/image/image/uncolorization/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsImageImageUncolorizationGet operation
#
##############################################################################
call_getVersionsImageImageUncolorizationGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/image/image/uncolorization/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyImageTextAsciifyPost operation
#
##############################################################################
call_applyImageTextAsciifyPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(model)
    local path

    if ! path=$(build_request_path "/image/text/asciify/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsImageTextAsciifyGet operation
#
##############################################################################
call_getVersionsImageTextAsciifyGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/image/text/asciify/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyImageTextOcrPost operation
#
##############################################################################
call_applyImageTextOcrPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(source_language model)
    local path

    if ! path=$(build_request_path "/image/text/ocr/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsImageTextOcrGet operation
#
##############################################################################
call_getVersionsImageTextOcrGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/image/text/ocr/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextAutocorrectPost operation
#
##############################################################################
call_applyTextTextAutocorrectPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(sentence model)
    local path

    if ! path=$(build_request_path "/text/text/autocorrect/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextAutocorrectGet operation
#
##############################################################################
call_getVersionsTextTextAutocorrectGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/autocorrect/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextEmotionRecognitionPost operation
#
##############################################################################
call_applyTextTextEmotionRecognitionPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(text model)
    local path

    if ! path=$(build_request_path "/text/text/emotion-recognition/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextEmotionRecognitionGet operation
#
##############################################################################
call_getVersionsTextTextEmotionRecognitionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/emotion-recognition/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextEntityExtractionPost operation
#
##############################################################################
call_applyTextTextEntityExtractionPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(input_string model)
    local path

    if ! path=$(build_request_path "/text/text/entity-extraction/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextEntityExtractionGet operation
#
##############################################################################
call_getVersionsTextTextEntityExtractionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/entity-extraction/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextHateSpeechDetectionPost operation
#
##############################################################################
call_applyTextTextHateSpeechDetectionPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(text model)
    local path

    if ! path=$(build_request_path "/text/text/hate-speech-detection/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextHateSpeechDetectionGet operation
#
##############################################################################
call_getVersionsTextTextHateSpeechDetectionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/hate-speech-detection/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextKeywordExtractionPost operation
#
##############################################################################
call_applyTextTextKeywordExtractionPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(text model)
    local path

    if ! path=$(build_request_path "/text/text/keyword-extraction/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextKeywordExtractionGet operation
#
##############################################################################
call_getVersionsTextTextKeywordExtractionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/keyword-extraction/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextLanguageDetectionPost operation
#
##############################################################################
call_applyTextTextLanguageDetectionPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(text model)
    local path

    if ! path=$(build_request_path "/text/text/language-detection/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextLanguageDetectionGet operation
#
##############################################################################
call_getVersionsTextTextLanguageDetectionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/language-detection/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextLanguageGenerationPost operation
#
##############################################################################
call_applyTextTextLanguageGenerationPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(text model)
    local path

    if ! path=$(build_request_path "/text/text/language-generation/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextLanguageGenerationGet operation
#
##############################################################################
call_getVersionsTextTextLanguageGenerationGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/language-generation/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextLemmatizationPost operation
#
##############################################################################
call_applyTextTextLemmatizationPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(sentence model)
    local path

    if ! path=$(build_request_path "/text/text/lemmatization/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextLemmatizationGet operation
#
##############################################################################
call_getVersionsTextTextLemmatizationGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/lemmatization/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextNamedEntityRecognitionPost operation
#
##############################################################################
call_applyTextTextNamedEntityRecognitionPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(text model)
    local path

    if ! path=$(build_request_path "/text/text/named-entity-recognition/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextNamedEntityRecognitionGet operation
#
##############################################################################
call_getVersionsTextTextNamedEntityRecognitionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/named-entity-recognition/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextNextSentencePredictionPost operation
#
##############################################################################
call_applyTextTextNextSentencePredictionPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(sentence_1 sentence_2 model)
    local path

    if ! path=$(build_request_path "/text/text/next-sentence-prediction/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextNextSentencePredictionGet operation
#
##############################################################################
call_getVersionsTextTextNextSentencePredictionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/next-sentence-prediction/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextNextWordPredictionPost operation
#
##############################################################################
call_applyTextTextNextWordPredictionPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(sentence model)
    local path

    if ! path=$(build_request_path "/text/text/next-word-prediction/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextNextWordPredictionGet operation
#
##############################################################################
call_getVersionsTextTextNextWordPredictionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/next-word-prediction/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextPluralPost operation
#
##############################################################################
call_applyTextTextPluralPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(word count model)
    local path

    if ! path=$(build_request_path "/text/text/plural/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextPluralGet operation
#
##############################################################################
call_getVersionsTextTextPluralGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/plural/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextProgrammingLanguageGenerationPost operation
#
##############################################################################
call_applyTextTextProgrammingLanguageGenerationPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(code_snippet model)
    local path

    if ! path=$(build_request_path "/text/text/programming-language-generation/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextProgrammingLanguageGenerationGet operation
#
##############################################################################
call_getVersionsTextTextProgrammingLanguageGenerationGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/programming-language-generation/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextQuestionAnsweringPost operation
#
##############################################################################
call_applyTextTextQuestionAnsweringPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(context question model)
    local path

    if ! path=$(build_request_path "/text/text/question-answering/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextQuestionAnsweringGet operation
#
##############################################################################
call_getVersionsTextTextQuestionAnsweringGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/question-answering/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextSentenceParaphraserPost operation
#
##############################################################################
call_applyTextTextSentenceParaphraserPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(context model)
    local path

    if ! path=$(build_request_path "/text/text/sentence-paraphraser/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextSentenceParaphraserGet operation
#
##############################################################################
call_getVersionsTextTextSentenceParaphraserGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/sentence-paraphraser/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextSentimentAnalysisPost operation
#
##############################################################################
call_applyTextTextSentimentAnalysisPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(text model)
    local path

    if ! path=$(build_request_path "/text/text/sentiment-analysis/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextSentimentAnalysisGet operation
#
##############################################################################
call_getVersionsTextTextSentimentAnalysisGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/sentiment-analysis/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextSimilarityPost operation
#
##############################################################################
call_applyTextTextSimilarityPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(sentence_1 sentence_2 model)
    local path

    if ! path=$(build_request_path "/text/text/similarity/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextSimilarityGet operation
#
##############################################################################
call_getVersionsTextTextSimilarityGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/similarity/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call applyTextTextWordAlignmentPost operation
#
##############################################################################
call_applyTextTextWordAlignmentPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(input_string_language_1 input_string_language_2 model)
    local path

    if ! path=$(build_request_path "/text/text/word-alignment/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVersionsTextTextWordAlignmentGet operation
#
##############################################################################
call_getVersionsTextTextWordAlignmentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/text/text/word-alignment/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    applyImageImageBackgroundRemovalPost)
    operation="applyImageImageBackgroundRemovalPost"
    ;;
    getVersionsImageImageBackgroundRemovalGet)
    operation="getVersionsImageImageBackgroundRemovalGet"
    ;;
    applyImageImageColorizationPost)
    operation="applyImageImageColorizationPost"
    ;;
    getVersionsImageImageColorizationGet)
    operation="getVersionsImageImageColorizationGet"
    ;;
    applyImageImageFaceBluringPost)
    operation="applyImageImageFaceBluringPost"
    ;;
    getVersionsImageImageFaceBluringGet)
    operation="getVersionsImageImageFaceBluringGet"
    ;;
    applyImageImageSuperResolutionPost)
    operation="applyImageImageSuperResolutionPost"
    ;;
    getVersionsImageImageSuperResolutionGet)
    operation="getVersionsImageImageSuperResolutionGet"
    ;;
    applyImageImageUncolorizationPost)
    operation="applyImageImageUncolorizationPost"
    ;;
    getVersionsImageImageUncolorizationGet)
    operation="getVersionsImageImageUncolorizationGet"
    ;;
    applyImageTextAsciifyPost)
    operation="applyImageTextAsciifyPost"
    ;;
    getVersionsImageTextAsciifyGet)
    operation="getVersionsImageTextAsciifyGet"
    ;;
    applyImageTextOcrPost)
    operation="applyImageTextOcrPost"
    ;;
    getVersionsImageTextOcrGet)
    operation="getVersionsImageTextOcrGet"
    ;;
    applyTextTextAutocorrectPost)
    operation="applyTextTextAutocorrectPost"
    ;;
    getVersionsTextTextAutocorrectGet)
    operation="getVersionsTextTextAutocorrectGet"
    ;;
    applyTextTextEmotionRecognitionPost)
    operation="applyTextTextEmotionRecognitionPost"
    ;;
    getVersionsTextTextEmotionRecognitionGet)
    operation="getVersionsTextTextEmotionRecognitionGet"
    ;;
    applyTextTextEntityExtractionPost)
    operation="applyTextTextEntityExtractionPost"
    ;;
    getVersionsTextTextEntityExtractionGet)
    operation="getVersionsTextTextEntityExtractionGet"
    ;;
    applyTextTextHateSpeechDetectionPost)
    operation="applyTextTextHateSpeechDetectionPost"
    ;;
    getVersionsTextTextHateSpeechDetectionGet)
    operation="getVersionsTextTextHateSpeechDetectionGet"
    ;;
    applyTextTextKeywordExtractionPost)
    operation="applyTextTextKeywordExtractionPost"
    ;;
    getVersionsTextTextKeywordExtractionGet)
    operation="getVersionsTextTextKeywordExtractionGet"
    ;;
    applyTextTextLanguageDetectionPost)
    operation="applyTextTextLanguageDetectionPost"
    ;;
    getVersionsTextTextLanguageDetectionGet)
    operation="getVersionsTextTextLanguageDetectionGet"
    ;;
    applyTextTextLanguageGenerationPost)
    operation="applyTextTextLanguageGenerationPost"
    ;;
    getVersionsTextTextLanguageGenerationGet)
    operation="getVersionsTextTextLanguageGenerationGet"
    ;;
    applyTextTextLemmatizationPost)
    operation="applyTextTextLemmatizationPost"
    ;;
    getVersionsTextTextLemmatizationGet)
    operation="getVersionsTextTextLemmatizationGet"
    ;;
    applyTextTextNamedEntityRecognitionPost)
    operation="applyTextTextNamedEntityRecognitionPost"
    ;;
    getVersionsTextTextNamedEntityRecognitionGet)
    operation="getVersionsTextTextNamedEntityRecognitionGet"
    ;;
    applyTextTextNextSentencePredictionPost)
    operation="applyTextTextNextSentencePredictionPost"
    ;;
    getVersionsTextTextNextSentencePredictionGet)
    operation="getVersionsTextTextNextSentencePredictionGet"
    ;;
    applyTextTextNextWordPredictionPost)
    operation="applyTextTextNextWordPredictionPost"
    ;;
    getVersionsTextTextNextWordPredictionGet)
    operation="getVersionsTextTextNextWordPredictionGet"
    ;;
    applyTextTextPluralPost)
    operation="applyTextTextPluralPost"
    ;;
    getVersionsTextTextPluralGet)
    operation="getVersionsTextTextPluralGet"
    ;;
    applyTextTextProgrammingLanguageGenerationPost)
    operation="applyTextTextProgrammingLanguageGenerationPost"
    ;;
    getVersionsTextTextProgrammingLanguageGenerationGet)
    operation="getVersionsTextTextProgrammingLanguageGenerationGet"
    ;;
    applyTextTextQuestionAnsweringPost)
    operation="applyTextTextQuestionAnsweringPost"
    ;;
    getVersionsTextTextQuestionAnsweringGet)
    operation="getVersionsTextTextQuestionAnsweringGet"
    ;;
    applyTextTextSentenceParaphraserPost)
    operation="applyTextTextSentenceParaphraserPost"
    ;;
    getVersionsTextTextSentenceParaphraserGet)
    operation="getVersionsTextTextSentenceParaphraserGet"
    ;;
    applyTextTextSentimentAnalysisPost)
    operation="applyTextTextSentimentAnalysisPost"
    ;;
    getVersionsTextTextSentimentAnalysisGet)
    operation="getVersionsTextTextSentimentAnalysisGet"
    ;;
    applyTextTextSimilarityPost)
    operation="applyTextTextSimilarityPost"
    ;;
    getVersionsTextTextSimilarityGet)
    operation="getVersionsTextTextSimilarityGet"
    ;;
    applyTextTextWordAlignmentPost)
    operation="applyTextTextWordAlignmentPost"
    ;;
    getVersionsTextTextWordAlignmentGet)
    operation="getVersionsTextTextWordAlignmentGet"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without qoutes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +\([^=]\):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    applyImageImageBackgroundRemovalPost)
    call_applyImageImageBackgroundRemovalPost
    ;;
    getVersionsImageImageBackgroundRemovalGet)
    call_getVersionsImageImageBackgroundRemovalGet
    ;;
    applyImageImageColorizationPost)
    call_applyImageImageColorizationPost
    ;;
    getVersionsImageImageColorizationGet)
    call_getVersionsImageImageColorizationGet
    ;;
    applyImageImageFaceBluringPost)
    call_applyImageImageFaceBluringPost
    ;;
    getVersionsImageImageFaceBluringGet)
    call_getVersionsImageImageFaceBluringGet
    ;;
    applyImageImageSuperResolutionPost)
    call_applyImageImageSuperResolutionPost
    ;;
    getVersionsImageImageSuperResolutionGet)
    call_getVersionsImageImageSuperResolutionGet
    ;;
    applyImageImageUncolorizationPost)
    call_applyImageImageUncolorizationPost
    ;;
    getVersionsImageImageUncolorizationGet)
    call_getVersionsImageImageUncolorizationGet
    ;;
    applyImageTextAsciifyPost)
    call_applyImageTextAsciifyPost
    ;;
    getVersionsImageTextAsciifyGet)
    call_getVersionsImageTextAsciifyGet
    ;;
    applyImageTextOcrPost)
    call_applyImageTextOcrPost
    ;;
    getVersionsImageTextOcrGet)
    call_getVersionsImageTextOcrGet
    ;;
    applyTextTextAutocorrectPost)
    call_applyTextTextAutocorrectPost
    ;;
    getVersionsTextTextAutocorrectGet)
    call_getVersionsTextTextAutocorrectGet
    ;;
    applyTextTextEmotionRecognitionPost)
    call_applyTextTextEmotionRecognitionPost
    ;;
    getVersionsTextTextEmotionRecognitionGet)
    call_getVersionsTextTextEmotionRecognitionGet
    ;;
    applyTextTextEntityExtractionPost)
    call_applyTextTextEntityExtractionPost
    ;;
    getVersionsTextTextEntityExtractionGet)
    call_getVersionsTextTextEntityExtractionGet
    ;;
    applyTextTextHateSpeechDetectionPost)
    call_applyTextTextHateSpeechDetectionPost
    ;;
    getVersionsTextTextHateSpeechDetectionGet)
    call_getVersionsTextTextHateSpeechDetectionGet
    ;;
    applyTextTextKeywordExtractionPost)
    call_applyTextTextKeywordExtractionPost
    ;;
    getVersionsTextTextKeywordExtractionGet)
    call_getVersionsTextTextKeywordExtractionGet
    ;;
    applyTextTextLanguageDetectionPost)
    call_applyTextTextLanguageDetectionPost
    ;;
    getVersionsTextTextLanguageDetectionGet)
    call_getVersionsTextTextLanguageDetectionGet
    ;;
    applyTextTextLanguageGenerationPost)
    call_applyTextTextLanguageGenerationPost
    ;;
    getVersionsTextTextLanguageGenerationGet)
    call_getVersionsTextTextLanguageGenerationGet
    ;;
    applyTextTextLemmatizationPost)
    call_applyTextTextLemmatizationPost
    ;;
    getVersionsTextTextLemmatizationGet)
    call_getVersionsTextTextLemmatizationGet
    ;;
    applyTextTextNamedEntityRecognitionPost)
    call_applyTextTextNamedEntityRecognitionPost
    ;;
    getVersionsTextTextNamedEntityRecognitionGet)
    call_getVersionsTextTextNamedEntityRecognitionGet
    ;;
    applyTextTextNextSentencePredictionPost)
    call_applyTextTextNextSentencePredictionPost
    ;;
    getVersionsTextTextNextSentencePredictionGet)
    call_getVersionsTextTextNextSentencePredictionGet
    ;;
    applyTextTextNextWordPredictionPost)
    call_applyTextTextNextWordPredictionPost
    ;;
    getVersionsTextTextNextWordPredictionGet)
    call_getVersionsTextTextNextWordPredictionGet
    ;;
    applyTextTextPluralPost)
    call_applyTextTextPluralPost
    ;;
    getVersionsTextTextPluralGet)
    call_getVersionsTextTextPluralGet
    ;;
    applyTextTextProgrammingLanguageGenerationPost)
    call_applyTextTextProgrammingLanguageGenerationPost
    ;;
    getVersionsTextTextProgrammingLanguageGenerationGet)
    call_getVersionsTextTextProgrammingLanguageGenerationGet
    ;;
    applyTextTextQuestionAnsweringPost)
    call_applyTextTextQuestionAnsweringPost
    ;;
    getVersionsTextTextQuestionAnsweringGet)
    call_getVersionsTextTextQuestionAnsweringGet
    ;;
    applyTextTextSentenceParaphraserPost)
    call_applyTextTextSentenceParaphraserPost
    ;;
    getVersionsTextTextSentenceParaphraserGet)
    call_getVersionsTextTextSentenceParaphraserGet
    ;;
    applyTextTextSentimentAnalysisPost)
    call_applyTextTextSentimentAnalysisPost
    ;;
    getVersionsTextTextSentimentAnalysisGet)
    call_getVersionsTextTextSentimentAnalysisGet
    ;;
    applyTextTextSimilarityPost)
    call_applyTextTextSimilarityPost
    ;;
    getVersionsTextTextSimilarityGet)
    call_getVersionsTextTextSimilarityGet
    ;;
    applyTextTextWordAlignmentPost)
    call_applyTextTextWordAlignmentPost
    ;;
    getVersionsTextTextWordAlignmentGet)
    call_getVersionsTextTextWordAlignmentGet
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
