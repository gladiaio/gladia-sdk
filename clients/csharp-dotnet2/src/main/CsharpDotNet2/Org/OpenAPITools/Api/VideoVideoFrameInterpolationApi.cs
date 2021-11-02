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
    public interface IVideoVideoFrameInterpolationApi
    {
        /// <summary>
        /// Apply model for the frame-interpolation task for a given models 
        /// </summary>
        /// <param name="video"></param>
        /// <param name="model"></param>
        /// <returns>Object</returns>
        Object ApplyVideoVideoFrameInterpolationPost (System.IO.Stream video, string model);
        /// <summary>
        /// Get list of models available for frame-interpolation 
        /// </summary>
        /// <returns>Object</returns>
        Object GetVersionsVideoVideoFrameInterpolationGet ();
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class VideoVideoFrameInterpolationApi : IVideoVideoFrameInterpolationApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="VideoVideoFrameInterpolationApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public VideoVideoFrameInterpolationApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="VideoVideoFrameInterpolationApi"/> class.
        /// </summary>
        /// <returns></returns>
        public VideoVideoFrameInterpolationApi(String basePath)
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
        /// Apply model for the frame-interpolation task for a given models 
        /// </summary>
        /// <param name="video"></param> 
        /// <param name="model"></param> 
        /// <returns>Object</returns>            
        public Object ApplyVideoVideoFrameInterpolationPost (System.IO.Stream video, string model)
        {
            
            // verify the required parameter 'video' is set
            if (video == null) throw new ApiException(400, "Missing required parameter 'video' when calling ApplyVideoVideoFrameInterpolationPost");
            
    
            var path = "/video/video/frame-interpolation/";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (model != null) queryParams.Add("model", ApiClient.ParameterToString(model)); // query parameter
                        if (video != null) fileParams.Add("video", ApiClient.ParameterToFile("video", video));
                
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ApplyVideoVideoFrameInterpolationPost: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ApplyVideoVideoFrameInterpolationPost: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get list of models available for frame-interpolation 
        /// </summary>
        /// <returns>Object</returns>            
        public Object GetVersionsVideoVideoFrameInterpolationGet ()
        {
            
    
            var path = "/video/video/frame-interpolation/";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetVersionsVideoVideoFrameInterpolationGet: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetVersionsVideoVideoFrameInterpolationGet: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
    }
}
