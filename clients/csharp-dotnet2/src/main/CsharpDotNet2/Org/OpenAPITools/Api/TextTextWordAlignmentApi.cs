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
    public interface ITextTextWordAlignmentApi
    {
        /// <summary>
        /// Apply model for the word-alignment task for a given models 
        /// </summary>
        /// <param name="inputStringLanguage1"></param>
        /// <param name="inputStringLanguage2"></param>
        /// <param name="model"></param>
        /// <returns>Object</returns>
        Object ApplyTextTextWordAlignmentPost (string inputStringLanguage1, string inputStringLanguage2, string model);
        /// <summary>
        /// Get list of models available for word-alignment 
        /// </summary>
        /// <returns>Object</returns>
        Object GetVersionsTextTextWordAlignmentGet ();
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class TextTextWordAlignmentApi : ITextTextWordAlignmentApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TextTextWordAlignmentApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public TextTextWordAlignmentApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="TextTextWordAlignmentApi"/> class.
        /// </summary>
        /// <returns></returns>
        public TextTextWordAlignmentApi(String basePath)
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
        /// Apply model for the word-alignment task for a given models 
        /// </summary>
        /// <param name="inputStringLanguage1"></param> 
        /// <param name="inputStringLanguage2"></param> 
        /// <param name="model"></param> 
        /// <returns>Object</returns>            
        public Object ApplyTextTextWordAlignmentPost (string inputStringLanguage1, string inputStringLanguage2, string model)
        {
            
    
            var path = "/text/text/word-alignment/";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (inputStringLanguage1 != null) queryParams.Add("input_string_language_1", ApiClient.ParameterToString(inputStringLanguage1)); // query parameter
 if (inputStringLanguage2 != null) queryParams.Add("input_string_language_2", ApiClient.ParameterToString(inputStringLanguage2)); // query parameter
 if (model != null) queryParams.Add("model", ApiClient.ParameterToString(model)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ApplyTextTextWordAlignmentPost: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ApplyTextTextWordAlignmentPost: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get list of models available for word-alignment 
        /// </summary>
        /// <returns>Object</returns>            
        public Object GetVersionsTextTextWordAlignmentGet ()
        {
            
    
            var path = "/text/text/word-alignment/";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetVersionsTextTextWordAlignmentGet: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetVersionsTextTextWordAlignmentGet: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
    }
}
