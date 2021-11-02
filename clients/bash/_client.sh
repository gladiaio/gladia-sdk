#compdef 

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Based on: https://github.com/Valodim/zsh-curl-completion/blob/master/_curl
# !
# !
# !
# ! Installation:
# !
# ! Copy the _ file to any directory under FPATH
# ! environment variable (echo $FPATH)
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


local curcontext="$curcontext" state line ret=1
typeset -A opt_args

typeset -A mime_type_abbreviations
# text/*
mime_type_abbreviations[text]="text/plain"
mime_type_abbreviations[html]="text/html"
mime_type_abbreviations[md]="text/x-markdown"
mime_type_abbreviations[csv]="text/csv"
mime_type_abbreviations[css]="text/css"
mime_type_abbreviations[rtf]="text/rtf"
# application/*
mime_type_abbreviations[json]="application/json"
mime_type_abbreviations[xml]="application/xml"
mime_type_abbreviations[yaml]="application/yaml"
mime_type_abbreviations[js]="application/javascript"
mime_type_abbreviations[bin]="application/octet-stream"
mime_type_abbreviations[rdf]="application/rdf+xml"
# image/*
mime_type_abbreviations[jpg]="image/jpeg"
mime_type_abbreviations[png]="image/png"
mime_type_abbreviations[gif]="image/gif"
mime_type_abbreviations[bmp]="image/bmp"
mime_type_abbreviations[tiff]="image/tiff"

#
# Generate zsh completion string list for abbreviated mime types
#
get_mime_type_completions() {
    typeset -a result
    result=()
    for k in "${(@k)mime_type_abbreviations}"; do
        value=$mime_type_abbreviations[${k}]
        #echo $value
        result+=( "${k}[${value}]" )
        #echo $result
    done
    echo "$result"
}

#
# cURL crypto engines completion function
#
_curl_crypto_engine() {
    local vals
    vals=( ${${(f)"$(curl --engine list)":gs/ /}[2,$]} )
    _describe -t outputs 'engines' vals && return 0
}

#
# cURL post data completion functions=
#
_curl_post_data() {

    # don't do anything further if this is raw content
    compset -P '=' && _message 'raw content' && return 0

    # complete filename or stdin for @ syntax
    compset -P '*@' && {
        local expl
        _description files expl stdin
        compadd "$expl[@]" - "-"
        _files
        return 0
    }

    # got a name already? expecting data.
    compset -P '*=' && _message 'data value' && return 0

    # otherwise, name (or @ or =) should be specified
    _message 'data name' && return 0

}


local arg_http arg_ftp arg_other arg_proxy arg_crypto arg_connection arg_auth arg_input arg_output

# HTTP Arguments
arg_http=(''\
  {-0,--http1.0}'[force use of use http 1.0 instead of 1.1]' \
  {-b,--cookie}'[pass data to http server as cookie]:data or file' \
  {-c,--cookie-jar}'[specify cookie file]:file name:_files' \
  {-d,--data}'[send specified data as HTTP POST data]:data:{_curl_post_data}' \
  '--data-binary[post HTTP POST data without any processing]:data:{_curl_post_data}' \
  '--data-urlencode[post HTTP POST data, with url encoding]:data:{_curl_post_data}' \
  {-f,--fail}'[enable failfast behavior for server errors]' \
  '*'{-F,--form}'[add POST form data]:name=content' \
  {-G,--get}'[use HTTP GET even with data (-d, --data, --data-binary)]' \
  '*'{-H,--header}'[specify an extra header]:header' \
  '--ignore-content-length[ignore Content-Length header]' \
  {-i,--include}'[include HTTP header in the output]' \
  {-j,--junk-session-cookies}'[discard all session cookies]' \
  {-e,--referer}'[send url as referer]:referer url:_urls' \
  {-L,--location}'[follow Location headers on http 3XX response]' \
  '--location-trusted[like --location, but allows sending of auth data to redirected hosts]' \
  '--max-redirs[set maximum number of redirection followings allowed]:number' \
  {-J,--remote-header-name}'[use Content-Disposition for output file name]' \
  {-O,--remote-name}'[write to filename parsed from url instead of stdout]' \
  '--post301[do not convert POST to GET after following 301 Location response (follow RFC 2616/10.3.2)]' \
  '--post302[do not convert POST to GET after following 302 Location response (follow RFC 2616/10.3.2)]' \
  )

# FTP arguments
arg_ftp=(\
  {-a,--append}'[append to target file instead of overwriting (FTP/SFTP)]' \
  '--crlf[convert LF to CRLF in upload]' \
  '--disable-eprt[disable use of EPRT and LPRT for active FTP transfers]' \
  '--disable-epsv[disable use of EPSV for passive FTP transfers]' \
  '--ftp-account[account data (FTP)]:data' \
  '--ftp-alternative-to-user[command to send when USER and PASS commands fail (FTP)]:command' \
  '--ftp-create-dirs[create paths remotely if it does not exist]' \
  '--ftp-method[ftp method to use to reach a file (FTP)]:method:(multicwd ocwd singlecwd)' \
  '--ftp-pasv[use passive mode for the data connection (FTP)]' \
  '--ftp-skip-pasv-ip[do not use the ip the server suggests for PASV]' \
  '--form-string[like --form, but do not parse content]:name=string' \
  '--ftp-pret[send PRET before PASV]' \
  '--ftp-ssl-ccc[use clear command channel (CCC) after authentication (FTP)]' \
  '--ftp-ssl-ccc-mode[sets the CCC mode (FTP)]:mode:(active passive)' \
  '--ftp-ssl-control[require SSL/TLS for FTP login, clear for transfer]' \
  {-l,--list-only}'[list names only when listing directories (FTP)]' \
  {-P,--ftp-port}'[use active mode, tell server to connect to specified address or interface (FTP]:address' \
  '*'{-Q,--quote}'[send arbitrary command to the remote server before transfer (FTP/SFTP)]:command' \
  )

# Other Protocol arguments
arg_other=(\
  '--mail-from[specify From: address]:address' \
  '--mail-rcpt[specify email recipient for SMTP, may be given multiple times]:address' \
  {-t,--telnet-option}'[pass options to telnet protocol]:opt=val' \
  '--tftp-blksize[set tftp BLKSIZE option]:value' \
  )

# Proxy arguments
arg_proxy=(\
  '--noproxy[list of hosts to connect directly to instead of through proxy]:no-proxy-list' \
  {-p,--proxytunnel}'[tunnel non-http protocols through http proxy]' \
  {-U,--proxy-user}'[specify the user name and password to use for proxy authentication]:user:password' \
  '--proxy-anyauth[use any authentication method for proxy, default to most secure]' \
  '--proxy-basic[use HTTP Basic authentication for proxy]' \
  '--proxy-digest[use http digest authentication for proxy]' \
  '--proxy-negotiate[enable GSS-Negotiate authentication for proxy]' \
  '--proxy-ntlm[enable ntlm authentication for proxy]' \
  '--proxy1.0[use http 1.0 proxy]:proxy url' \
  {-x,--proxy}'[use specified proxy]:proxy url' \
  '--socks5-gssapi-service[change service name for socks server]:servicename' \
  '--socks5-gssapi-nec[allow unprotected exchange of protection mode negotiation]' \
  )

# Crypto arguments
arg_crypto=(\
  {-1,--tlsv1}'[Forces curl to use TLS version 1 when negotiating with a remote TLS server.]' \
  {-2,--sslv2}'[Forces curl to use SSL version 2 when negotiating with a remote SSL server.]' \
  {-3,--sslv3}'[Forces curl to use SSL version 3 when negotiating with a remote SSL server.]' \
  '--ciphers[specifies which cipher to use for the ssl connection]:list of ciphers' \
  '--crlfile[specify file with revoked certificates]:file' \
  '--delegation[set delegation policy to use with GSS/kerberos]:delegation policy:(none policy always)' \
  {-E,--cert}'[use specified client certificate]:certificate file:_files' \
  '--engine[use selected OpenSSL crypto engine]:ssl crypto engine:{_curl_crypto_engine}' \
  '--egd-file[set ssl entropy gathering daemon socket]:entropy socket:_files' \
  '--cert-type[specify certificate type (PEM, DER, ENG)]:certificate type:(PEM DER ENG)' \
  '--cacert[specify certificate file to verify the peer with]:CA certificate:_files' \
  '--capath[specify a search path for certificate files]:CA certificate directory:_directories' \
  '--hostpubmd5[check remote hosts public key]:md5 hash' \
  {-k,--insecure}'[allow ssl to perform insecure ssl connections (ie, ignore certificate)]' \
  '--key[ssl/ssh private key file name]:key file:_files' \
  '--key-type[ssl/ssh private key file type]:file type:(PEM DER ENG)' \
  '--pubkey[ssh public key file]:pubkey file:_files' \
  '--random-file[set source of random data for ssl]:random source:_files' \
  '--no-sessionid[disable caching of ssl session ids]' \
  '--pass:phrase[passphrase for ssl/ssh private key]' \
  '--ssl[try to use ssl/tls for connection, if available]' \
  '--ssl-reqd[try to use ssl/tls for connection, fail if unavailable]' \
  '--tlsauthtype[set TLS authentication type (only SRP supported!)]:authtype' \
  '--tlsuser[set username for TLS authentication]:user' \
  '--tlspassword[set password for TLS authentication]:password' \
  )

# Connection arguments
arg_connection=(\
  {-4,--ipv4}'[prefer ipv4]' \
  {-6,--ipv6}'[prefer ipv6, if available]' \
  {-B,--use-ascii}'[use ascii mode]' \
  '--compressed[request a compressed transfer]' \
  '--connect-timeout[timeout for connection phase]:seconds' \
  {-I,--head}'[fetch http HEAD only (HTTP/FTP/FILE]' \
  '--interface[work on a specific interface]:name' \
  '--keepalive-time[set time to wait before sending keepalive probes]:seconds' \
  '--limit-rate[specify maximum transfer rate]:speed' \
  '--local-port[set preferred number or range of local ports to use]:num' \
  {-N,--no-buffer}'[disable buffering of the output stream]' \
  '--no-keepalive[disable use of keepalive messages in TCP connections]' \
  '--raw[disable all http decoding and pass raw data]' \
  '--resolve[provide a custom address for a specific host and port pair]:host\:port\:address' \
  '--retry[specify maximum number of retries for transient errors]:num' \
  '--retry-delay[specify delay between retries]:seconds' \
  '--retry-max-time[maximum time to spend on retries]:seconds' \
  '--tcp-nodelay[turn on TCP_NODELAY option]' \
  {-y,--speed-time}'[specify time to abort after if download is slower than speed-limit]:time' \
  {-Y,--speed-limit}'[specify minimum speed for --speed-time]:speed' \
  )

# Authentication arguments
arg_auth=(\
  '--anyauth[use any authentication method, default to most secure]' \
  '--basic[use HTTP Basic authentication]' \
  '--ntlm[enable ntlm authentication]' \
  '--digest[use http digest authentication]' \
  '--krb[use kerberos authentication]:auth:(clear safe confidential private)' \
  '--negotiate[enable GSS-Negotiate authentication]' \
  {-n,--netrc}'[scan ~/.netrc for login data]' \
  '--netrc-optional[like --netrc, but does not make .netrc usage mandatory]' \
  '--netrc-file[like --netrc, but specify file to use]:netrc file:_files' \
  '--tr-encoding[request compressed transfer-encoding]' \
  {-u,--user}'[specify user name and password for server authentication]:user\:password' \
  )

# Input arguments
arg_input=(\
  {-C,--continue-at}'[resume at offset ]:offset' \
  {-g,--globoff}'[do not glob {}\[\] letters]' \
  '--max-filesize[maximum filesize to download, fail for bigger files]:bytes' \
  '--proto[specify allowed protocols for transfer]:protocols' \
  '--proto-redir[specify allowed protocols for transfer after a redirect]:protocols' \
  {-r,--range}'[set range of bytes to request (HTTP/FTP/SFTP/FILE)]:range' \
  {-R,--remote-time}'[use timestamp of remote file for local file]' \
  {-T,--upload-file}'[transfer file to remote url (using PUT for HTTP)]:file to upload:_files' \
  '--url[specify a URL to fetch (multi)]:url:_urls' \
  {-z,--time-cond}'[request downloaded file to be newer than date or given reference file]:date expression' \
  )

# Output arguments
arg_output=(\
  '--create-dirs[create local directory hierarchy as needed]' \
  {-D,--dump-header}'[write protocol headers to file]:dump file:_files' \
  {-o,--output}'[write to specified file instead of stdout]:output file:_files' \
  {--progress-bar,-\#}'[display progress as a simple progress bar]' \
  {-\#,--progress-bar}'[Make curl display progress as a simple progress bar instead of the standard, more informational, meter.]' \
  {-R,--remote-time}'[use timestamp of remote file for local file]' \
  '--raw[disable all http decoding and pass raw data]' \
  {-s,--silent}'[silent mode, do not show progress meter or error messages]' \
  {-S,--show-error}'[show errors in silent mode]' \
  '--stderr[redirect stderr to specified file]:output file:_files' \
  '--trace[enable full trace dump of all incoming and outgoing data]:trace file:_files' \
  '--trace-ascii[enable full trace dump of all incoming and outgoing data, without hex data]:trace file:_files' \
  '--trace-time[prepends a time stamp to each trace or verbose line that curl displays]' \
  {-v,--verbose}'[output debug info]' \
  {-w,--write-out}'[specify message to output on successful operation]:format string' \
  '--xattr[store some file metadata in extended file attributes]' \
  {-X,--request}'[specifies request method for HTTP server]:method:(GET POST PUT DELETE HEAD OPTIONS TRACE CONNECT PATCH LINK UNLINK)' \
  )

_arguments -C -s $arg_http $arg_ftp $arg_other $arg_crypto $arg_connection $arg_auth $arg_input $arg_output \
  {-M,--manual}'[Print manual]' \
  '*'{-K,--config}'[Use other config file to read arguments from]:config file:_files' \
  '--libcurl[output libcurl code for the operation to file]:output file:_files' \
  {-m,--max-time}'[Limit total time of operation]:seconds' \
  {-s,--silent}'[Silent mode, do not show progress meter or error messages]' \
  {-S,--show-error}'[Show errors in silent mode]' \
  '--stderr[Redirect stderr to specified file]:output file:_files' \
  '-q[Do not read settings from .curlrc (must be first option)]' \
  {-h,--help}'[Print help and list of operations]' \
  {-V,--version}'[Print service API version]' \
  '--about[Print the information about service]' \
  '--host[Specify the host URL]':URL:_urls \
  '--dry-run[Print out the cURL command without executing it]' \
  {-ac,--accept}'[Set the Accept header in the request]: :{_values "Accept mime type" $(get_mime_type_completions)}' \
  {-ct,--content-type}'[Set the Content-type header in request]: :{_values "Content mime type" $(get_mime_type_completions)}' \
  '1: :->ops' \
  '*:: :->args' \
  && ret=0


case $state in
  ops)
    # Operations
    _values "Operations" \
            "applyImageImageBackgroundRemovalPost[Apply model for the background-removal task for a given models]" \
            "getVersionsImageImageBackgroundRemovalGet[Get list of models available for background-removal]"             "applyImageImageColorizationPost[Apply model for the colorization task for a given models]" \
            "getVersionsImageImageColorizationGet[Get list of models available for colorization]"             "applyImageImageFaceBluringPost[Apply model for the face-bluring task for a given models]" \
            "getVersionsImageImageFaceBluringGet[Get list of models available for face-bluring]"             "applyImageImageRestorationPost[Apply model for the restoration task for a given models]" \
            "getVersionsImageImageRestorationGet[Get list of models available for restoration]"             "applyImageImageSuperResolutionPost[Apply model for the super-resolution task for a given models]" \
            "getVersionsImageImageSuperResolutionGet[Get list of models available for super-resolution]"             "applyImageImageUncolorizationPost[Apply model for the uncolorization task for a given models]" \
            "getVersionsImageImageUncolorizationGet[Get list of models available for uncolorization]"             "applyImageTextAsciifyPost[Apply model for the asciify task for a given models]" \
            "getVersionsImageTextAsciifyGet[Get list of models available for asciify]"             "applyImageTextOcrPost[Apply model for the ocr task for a given models]" \
            "getVersionsImageTextOcrGet[Get list of models available for ocr]"             "applyTextTextAutocorrectPost[Apply model for the autocorrect task for a given models]" \
            "getVersionsTextTextAutocorrectGet[Get list of models available for autocorrect]"             "applyTextTextBooleanQuestionGenerationPost[Apply model for the boolean-question-generation task for a given models]" \
            "getVersionsTextTextBooleanQuestionGenerationGet[Get list of models available for boolean-question-generation]"             "applyTextTextDependencyTrackingPost[Apply model for the dependency-tracking task for a given models]" \
            "getVersionsTextTextDependencyTrackingGet[Get list of models available for dependency-tracking]"             "applyTextTextEmotionRecognitionPost[Apply model for the emotion-recognition task for a given models]" \
            "getVersionsTextTextEmotionRecognitionGet[Get list of models available for emotion-recognition]"             "applyTextTextEntityExtractionPost[Apply model for the entity-extraction task for a given models]" \
            "getVersionsTextTextEntityExtractionGet[Get list of models available for entity-extraction]"             "applyTextTextHateSpeechDetectionPost[Apply model for the hate-speech-detection task for a given models]" \
            "getVersionsTextTextHateSpeechDetectionGet[Get list of models available for hate-speech-detection]"             "applyTextTextKeywordExtractionPost[Apply model for the keyword-extraction task for a given models]" \
            "getVersionsTextTextKeywordExtractionGet[Get list of models available for keyword-extraction]"             "applyTextTextLanguageDetectionPost[Apply model for the language-detection task for a given models]" \
            "getVersionsTextTextLanguageDetectionGet[Get list of models available for language-detection]"             "applyTextTextLanguageGenerationPost[Apply model for the language-generation task for a given models]" \
            "getVersionsTextTextLanguageGenerationGet[Get list of models available for language-generation]"             "applyTextTextLemmatizationPost[Apply model for the lemmatization task for a given models]" \
            "getVersionsTextTextLemmatizationGet[Get list of models available for lemmatization]"             "applyTextTextNamedEntityRecognitionPost[Apply model for the named-entity-recognition task for a given models]" \
            "getVersionsTextTextNamedEntityRecognitionGet[Get list of models available for named-entity-recognition]"             "applyTextTextNextSentencePredictionPost[Apply model for the next-sentence-prediction task for a given models]" \
            "getVersionsTextTextNextSentencePredictionGet[Get list of models available for next-sentence-prediction]"             "applyTextTextNextWordPredictionPost[Apply model for the next-word-prediction task for a given models]" \
            "getVersionsTextTextNextWordPredictionGet[Get list of models available for next-word-prediction]"             "applyTextTextPluralPost[Apply model for the plural task for a given models]" \
            "getVersionsTextTextPluralGet[Get list of models available for plural]"             "applyTextTextProgrammingLanguageGenerationPost[Apply model for the programming-language-generation task for a given models]" \
            "getVersionsTextTextProgrammingLanguageGenerationGet[Get list of models available for programming-language-generation]"             "applyTextTextProgrammingLanguageIdentificationPost[Apply model for the programming-language-identification task for a given models]" \
            "getVersionsTextTextProgrammingLanguageIdentificationGet[Get list of models available for programming-language-identification]"             "applyTextTextQuestionAnsweringPost[Apply model for the question-answering task for a given models]" \
            "getVersionsTextTextQuestionAnsweringGet[Get list of models available for question-answering]"             "applyTextTextSentencePairModelingPost[Apply model for the sentence-pair-modeling task for a given models]" \
            "getVersionsTextTextSentencePairModelingGet[Get list of models available for sentence-pair-modeling]"             "applyTextTextSentenceParaphraserPost[Apply model for the sentence-paraphraser task for a given models]" \
            "getVersionsTextTextSentenceParaphraserGet[Get list of models available for sentence-paraphraser]"             "applyTextTextSentimentAnalysisPost[Apply model for the sentiment-analysis task for a given models]" \
            "getVersionsTextTextSentimentAnalysisGet[Get list of models available for sentiment-analysis]"             "applyTextTextSimilarityPost[Apply model for the similarity task for a given models]" \
            "getVersionsTextTextSimilarityGet[Get list of models available for similarity]"             "applyTextTextSummarizationPost[Apply model for the summarization task for a given models]" \
            "getVersionsTextTextSummarizationGet[Get list of models available for summarization]"             "applyTextTextTranslationPost[Apply model for the translation task for a given models]" \
            "getVersionsTextTextTranslationGet[Get list of models available for translation]"             "applyTextTextTransliterationPost[Apply model for the transliteration task for a given models]" \
            "getVersionsTextTextTransliterationGet[Get list of models available for transliteration]"             "applyTextTextWordAlignmentPost[Apply model for the word-alignment task for a given models]" \
            "getVersionsTextTextWordAlignmentGet[Get list of models available for word-alignment]"             "applyVideoVideoFrameInterpolationPost[Apply model for the frame-interpolation task for a given models]" \
            "getVersionsVideoVideoFrameInterpolationGet[Get list of models available for frame-interpolation]" 
    _arguments "(--help)--help[Print information about operation]"

    ret=0
    ;;
  args)
    case $line[1] in
      applyImageImageBackgroundRemovalPost)
        local -a _op_arguments
        _op_arguments=(
                    "model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsImageImageBackgroundRemovalGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyImageImageColorizationPost)
        local -a _op_arguments
        _op_arguments=(
                    "model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsImageImageColorizationGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyImageImageFaceBluringPost)
        local -a _op_arguments
        _op_arguments=(
                    "model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsImageImageFaceBluringGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyImageImageRestorationPost)
        local -a _op_arguments
        _op_arguments=(
                    "model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsImageImageRestorationGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyImageImageSuperResolutionPost)
        local -a _op_arguments
        _op_arguments=(
                    "model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsImageImageSuperResolutionGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyImageImageUncolorizationPost)
        local -a _op_arguments
        _op_arguments=(
                    "model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsImageImageUncolorizationGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyImageTextAsciifyPost)
        local -a _op_arguments
        _op_arguments=(
                    "model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsImageTextAsciifyGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyImageTextOcrPost)
        local -a _op_arguments
        _op_arguments=(
                    "source_language=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsImageTextOcrGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextAutocorrectPost)
        local -a _op_arguments
        _op_arguments=(
                    "sentence=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextAutocorrectGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextBooleanQuestionGenerationPost)
        local -a _op_arguments
        _op_arguments=(
                    "text=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextBooleanQuestionGenerationGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextDependencyTrackingPost)
        local -a _op_arguments
        _op_arguments=(
                    "input_string=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextDependencyTrackingGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextEmotionRecognitionPost)
        local -a _op_arguments
        _op_arguments=(
                    "text=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextEmotionRecognitionGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextEntityExtractionPost)
        local -a _op_arguments
        _op_arguments=(
                    "input_string=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextEntityExtractionGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextHateSpeechDetectionPost)
        local -a _op_arguments
        _op_arguments=(
                    "text=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextHateSpeechDetectionGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextKeywordExtractionPost)
        local -a _op_arguments
        _op_arguments=(
                    "text=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextKeywordExtractionGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextLanguageDetectionPost)
        local -a _op_arguments
        _op_arguments=(
                    "text=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextLanguageDetectionGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextLanguageGenerationPost)
        local -a _op_arguments
        _op_arguments=(
                    "text=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextLanguageGenerationGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextLemmatizationPost)
        local -a _op_arguments
        _op_arguments=(
                    "sentence=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextLemmatizationGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextNamedEntityRecognitionPost)
        local -a _op_arguments
        _op_arguments=(
                    "text=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextNamedEntityRecognitionGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextNextSentencePredictionPost)
        local -a _op_arguments
        _op_arguments=(
                    "sentence_1=:[QUERY] "
"sentence_2=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextNextSentencePredictionGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextNextWordPredictionPost)
        local -a _op_arguments
        _op_arguments=(
                    "sentence=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextNextWordPredictionGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextPluralPost)
        local -a _op_arguments
        _op_arguments=(
                    "word=:[QUERY] "
"count=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextPluralGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextProgrammingLanguageGenerationPost)
        local -a _op_arguments
        _op_arguments=(
                    "code_snippet=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextProgrammingLanguageGenerationGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextProgrammingLanguageIdentificationPost)
        local -a _op_arguments
        _op_arguments=(
                    "text=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextProgrammingLanguageIdentificationGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextQuestionAnsweringPost)
        local -a _op_arguments
        _op_arguments=(
                    "context=:[QUERY] "
"question=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextQuestionAnsweringGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextSentencePairModelingPost)
        local -a _op_arguments
        _op_arguments=(
                    "sentence=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextSentencePairModelingGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextSentenceParaphraserPost)
        local -a _op_arguments
        _op_arguments=(
                    "context=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextSentenceParaphraserGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextSentimentAnalysisPost)
        local -a _op_arguments
        _op_arguments=(
                    "text=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextSentimentAnalysisGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextSimilarityPost)
        local -a _op_arguments
        _op_arguments=(
                    "sentence_1=:[QUERY] "
"sentence_2=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextSimilarityGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextSummarizationPost)
        local -a _op_arguments
        _op_arguments=(
                    "text=:[QUERY] "
"source_language=:[QUERY] "
"max_length=:[QUERY] "
"min_length=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextSummarizationGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextTranslationPost)
        local -a _op_arguments
        _op_arguments=(
                    "input_string=:[QUERY] "
"source_language=:[QUERY] "
"target_language=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextTranslationGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextTransliterationPost)
        local -a _op_arguments
        _op_arguments=(
                    "text=:[QUERY] "
"language=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextTransliterationGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyTextTextWordAlignmentPost)
        local -a _op_arguments
        _op_arguments=(
                    "input_string_language_1=:[QUERY] "
"input_string_language_2=:[QUERY] "
"model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsTextTextWordAlignmentGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      applyVideoVideoFrameInterpolationPost)
        local -a _op_arguments
        _op_arguments=(
                    "model=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVersionsVideoVideoFrameInterpolationGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
    esac
    ;;

esac

return ret
