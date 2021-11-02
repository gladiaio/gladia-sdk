/**
 * FastAPI
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 0.1.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.io.File;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class BodyApplyImageImageBackgroundRemovalPost {
  
  @SerializedName("image")
  private File image = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public File getImage() {
    return image;
  }
  public void setImage(File image) {
    this.image = image;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BodyApplyImageImageBackgroundRemovalPost bodyApplyImageImageBackgroundRemovalPost = (BodyApplyImageImageBackgroundRemovalPost) o;
    return (this.image == null ? bodyApplyImageImageBackgroundRemovalPost.image == null : this.image.equals(bodyApplyImageImageBackgroundRemovalPost.image));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class BodyApplyImageImageBackgroundRemovalPost {\n");
    
    sb.append("  image: ").append(image).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
