package org.openapitools.api;

import org.openapitools.model.HTTPValidationError;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.MediaType;
import org.apache.cxf.jaxrs.ext.multipart.*;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponses;
import io.swagger.annotations.ApiResponse;
import io.swagger.jaxrs.PATCH;

/**
 * FastAPI
 *
 * <p>No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 */
@Path("/")
@Api(value = "/", description = "")
public interface TextTextSimilarityApi  {

    /**
     * Apply model for the similarity task for a given models
     *
     */
    @POST
    @Path("/text/text/similarity/")
    @Produces({ "application/json" })
    @ApiOperation(value = "Apply model for the similarity task for a given models", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful Response", response = Object.class),
        @ApiResponse(code = 422, message = "Validation Error", response = HTTPValidationError.class) })
    public Object applyTextTextSimilarityPost(@QueryParam("sentence_1") @DefaultValue("I like Python because I can build AI applications")String sentence1, @QueryParam("sentence_2") @DefaultValue("Second sentence to compare to")String sentence2, @QueryParam("model") @DefaultValue("all-MiniLM-L6-v2")String model);

    /**
     * Get list of models available for similarity
     *
     */
    @GET
    @Path("/text/text/similarity/")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get list of models available for similarity", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful Response", response = Object.class) })
    public Object getVersionsTextTextSimilarityGet();
}

