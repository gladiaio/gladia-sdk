import os

import easyargs

OPEN_API_GENERATOR_VERSION = "4.0.0"


def get_languages(open_api_generator_version=OPEN_API_GENERATOR_VERSION) -> list:
    languages = []
    os.system("touch languages.txt")
    cmd = f"docker run --rm openapitools/openapi-generator-cli:v{open_api_generator_version} list > languages.txt"
    os.system(cmd)
    with open("languages.txt") as f:
        lines = [
            line.strip()
            .replace("- ", "")
            .replace(" (beta)", "")
            .replace(" (experimental)", "")
            .replace(" (deprecated)", "")
            for line in f
        ]

    lines = list(filter(None, lines))
    language_list = lines[
        lines.index("CLIENT generators:") + 1 : lines.index("SERVER generators:")
    ]

    textfile = open("languages.txt", "w")
    for language in language_list:
        languages.append(language)

    os.system("rm languages.txt")
    return languages


@easyargs
def main(url, bearer_token='', open_api_generator_version=OPEN_API_GENERATOR_VERSION):
    languages = get_languages(open_api_generator_version)


    for language in languages:
        print("--------------------------")
        print(f"BUILDING SDK FOR {language}")
        print("--------------------------")
    
        os.system(f"""docker run --network=host --rm \
        -v $(pwd)/../clients:/tmp \
        openapitools/openapi-generator-cli:v{open_api_generator_version} generate \
        -i {url}/openapi.json \
        -o /tmp/{language} \
        -D modelDocs=false \
        -D apiDocs=false \
        -D apiTests=false \
        -D modelTests=false \
        -D npmVersion=3.5.2 \
        -D supportsES6=true \
        -g {language}
        """)

if __name__ == '__main__':
    main()
