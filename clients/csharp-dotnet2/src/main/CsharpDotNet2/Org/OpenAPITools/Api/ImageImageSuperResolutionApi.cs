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
    public interface IImageImageSuperResolutionApi
    {
        /// <summary>
        /// Apply model for the super-resolution task for a given models 
        /// </summary>
        /// <param name="image"></param>
        /// <param name="model"></param>
        /// <returns>Object</returns>
        Object ApplyImageImageSuperResolutionPost (System.IO.Stream image, string model);
        /// <summary>
        /// Get list of models available for super-resolution 
        /// </summary>
        /// <returns>Object</returns>
        Object GetVersionsImageImageSuperResolutionGet ();
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class ImageImageSuperResolutionApi : IImageImageSuperResolutionApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ImageImageSuperResolutionApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public ImageImageSuperResolutionApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="ImageImageSuperResolutionApi"/> class.
        /// </summary>
        /// <returns></returns>
        public ImageImageSuperResolutionApi(String basePath)
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
        /// Apply model for the super-resolution task for a given models 
        /// </summary>
        /// <param name="image"></param> 
        /// <param name="model"></param> 
        /// <returns>Object</returns>            
        public Object ApplyImageImageSuperResolutionPost (System.IO.Stream image, string model)
        {
            
            // verify the required parameter 'image' is set
            if (image == null) throw new ApiException(400, "Missing required parameter 'image' when calling ApplyImageImageSuperResolutionPost");
            
    
            var path = "/image/image/super-resolution/";
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
                throw new ApiException ((int)response.StatusCode, "Error calling ApplyImageImageSuperResolutionPost: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ApplyImageImageSuperResolutionPost: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get list of models available for super-resolution 
        /// </summary>
        /// <returns>Object</returns>            
        public Object GetVersionsImageImageSuperResolutionGet ()
        {
            
    
            var path = "/image/image/super-resolution/";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetVersionsImageImageSuperResolutionGet: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetVersionsImageImageSuperResolutionGet: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
    }
}
