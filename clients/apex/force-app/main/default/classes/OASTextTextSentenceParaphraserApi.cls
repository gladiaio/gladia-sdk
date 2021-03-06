/*
 * FastAPI
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 0.1.0
 * 
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OAS-api/OAS-codegen.git
 * Do not edit the class manually.
 */

public class OASTextTextSentenceParaphraserApi {
    OASClient client;

    public OASTextTextSentenceParaphraserApi(OASClient client) {
        this.client = client;
    }

    public OASTextTextSentenceParaphraserApi() {
        this.client = new OASClient();
    }

    public OASClient getClient() {
        return this.client;
    }

    /**
     * Apply model for the sentence-paraphraser task for a given models
     * 
     * @param context  (optional, default to 'Once, a group of frogs was roaming around the forest in search of water.')
     * @param model  (optional, default to ramsrigouthamg-t5-large-paraphraser-diverse-high-quality)
     * @return Object
     * @throws OAS.ApiException if fails to make API call
     */
    public Object applyTextTextSentenceParaphraserPost(Map<String, Object> params) {
        List<OAS.Param> query = new List<OAS.Param>();

        // cast query params to verify their expected type
        query.addAll(client.makeParam('context', (String) params.get('context')));
        query.addAll(client.makeParam('model', (String) params.get('model')));

        List<OAS.Param> form = new List<OAS.Param>();

        return (Object) client.invoke(
            'POST', '/text/text/sentence-paraphraser/', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>(),
            new List<String>{ 'application/json' },
            new List<String>(),
            new List<String>(),
            Object.class
        );
    }
    /**
     * Get list of models available for sentence-paraphraser
     * 
     * @return Object
     * @throws OAS.ApiException if fails to make API call
     */
    public Object getVersionsTextTextSentenceParaphraserGet() {
        List<OAS.Param> query = new List<OAS.Param>();
        List<OAS.Param> form = new List<OAS.Param>();

        return (Object) client.invoke(
            'GET', '/text/text/sentence-paraphraser/', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>(),
            new List<String>{ 'application/json' },
            new List<String>(),
            new List<String>(),
            Object.class
        );
    }
}
