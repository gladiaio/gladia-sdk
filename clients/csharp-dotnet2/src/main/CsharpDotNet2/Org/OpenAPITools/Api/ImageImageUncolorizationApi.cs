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
    public interface IImageImageUncolorizationApi
    {
        /// <summary>
        /// Apply model for the uncolorization task for a given models 
        /// </summary>
        /// <param name="image"></param>
        /// <param name="model"></param>
        /// <returns>Object</returns>
        Object ApplyImageImageUncolorizationPost (System.IO.Stream image, string model);
        /// <summary>
        /// Get list of models available for uncolorization 
        /// </summary>
        /// <returns>Object</returns>
        Object GetVersionsImageImageUncolorizationGet ();
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class ImageImageUncolorizationApi : IImageImageUncolorizationApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ImageImageUncolorizationApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public ImageImageUncolorizationApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="ImageImageUncolorizationApi"/> class.
        /// </summary>
        /// <returns></returns>
        public ImageImageUncolorizationApi(String basePath)
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
        /// Apply model for the uncolorization task for a given models 
        /// </summary>
        /// <param name="image"></param> 
        /// <param name="model"></param> 
        /// <returns>Object</returns>            
        public Object ApplyImageImageUncolorizationPost (System.IO.Stream image, string model)
        {
            
            // verify the required parameter 'image' is set
            if (image == null) throw new ApiException(400, "Missing required parameter 'image' when calling ApplyImageImageUncolorizationPost");
            
    
            var path = "/image/image/uncolorization/";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (model != null) queryParams.Add("model", ApiClient.ParameterToString(model)); // query parameter
                        if (image != null) fileParams.Add("image", ApiClient.ParameterToFile("image", image));
                
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ApplyImageImageUncolorizationPost: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ApplyImageImageUncolorizationPost: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get list of models available for uncolorization 
        /// </summary>
        /// <returns>Object</returns>            
        public Object GetVersionsImageImageUncolorizationGet ()
        {
            
    
            var path = "/image/image/uncolorization/";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetVersionsImageImageUncolorizationGet: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetVersionsImageImageUncolorizationGet: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
    }
}
