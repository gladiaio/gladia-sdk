using System;
using System.Collections.Generic;
using RestSharp;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Org.OpenAPITools.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface ITextTextQuestionAnsweringApi
    {
        /// <summary>
        /// Apply model for the question-answering task for a given models 
        /// </summary>
        /// <param name="context"></param>
        /// <param name="question"></param>
        /// <param name="model"></param>
        /// <returns>Object</returns>
        Object ApplyTextTextQuestionAnsweringPost (string context, string question, string model);
        /// <summary>
        /// Get list of models available for question-answering 
        /// </summary>
        /// <returns>Object</returns>
        Object GetVersionsTextTextQuestionAnsweringGet ();
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class TextTextQuestionAnsweringApi : ITextTextQuestionAnsweringApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TextTextQuestionAnsweringApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public TextTextQuestionAnsweringApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="TextTextQuestionAnsweringApi"/> class.
        /// </summary>
        /// <returns></returns>
        public TextTextQuestionAnsweringApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }
    
        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }
    
        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }
    
        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}
    
        /// <summary>
        /// Apply model for the question-answering task for a given models 
        /// </summary>
        /// <param name="context"></param> 
        /// <param name="question"></param> 
        /// <param name="model"></param> 
        /// <returns>Object</returns>            
        public Object ApplyTextTextQuestionAnsweringPost (string context, string question, string model)
        {
            
    
            var path = "/text/text/question-answering/";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (context != null) queryParams.Add("context", ApiClient.ParameterToString(context)); // query parameter
 if (question != null) queryParams.Add("question", ApiClient.ParameterToString(question)); // query parameter
 if (model != null) queryParams.Add("model", ApiClient.ParameterToString(model)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ApplyTextTextQuestionAnsweringPost: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ApplyTextTextQuestionAnsweringPost: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get list of models available for question-answering 
        /// </summary>
        /// <returns>Object</returns>            
        public Object GetVersionsTextTextQuestionAnsweringGet ()
        {
            
    
            var path = "/text/text/question-answering/";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetVersionsTextTextQuestionAnsweringGet: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetVersionsTextTextQuestionAnsweringGet: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
    }
}
