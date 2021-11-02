package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ValidationError;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class HTTPValidationError  {
  
  @ApiModelProperty(value = "")
  private List<ValidationError> detail = null;
 /**
   * Get detail
   * @return detail
  **/
  @JsonProperty("detail")
  public List<ValidationError> getDetail() {
    return detail;
  }

  public void setDetail(List<ValidationError> detail) {
    this.detail = detail;
  }

  public HTTPValidationError detail(List<ValidationError> detail) {
    this.detail = detail;
    return this;
  }

  public HTTPValidationError addDetailItem(ValidationError detailItem) {
    this.detail.add(detailItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HTTPValidationError {\n");
    
    sb.append("    detail: ").append(toIndentedString(detail)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

