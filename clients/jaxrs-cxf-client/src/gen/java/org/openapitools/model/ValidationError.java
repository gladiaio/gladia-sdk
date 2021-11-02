package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ValidationError  {
  
  @ApiModelProperty(required = true, value = "")
  private List<String> loc = new ArrayList<String>();

  @ApiModelProperty(required = true, value = "")
  private String msg;

  @ApiModelProperty(required = true, value = "")
  private String type;
 /**
   * Get loc
   * @return loc
  **/
  @JsonProperty("loc")
  public List<String> getLoc() {
    return loc;
  }

  public void setLoc(List<String> loc) {
    this.loc = loc;
  }

  public ValidationError loc(List<String> loc) {
    this.loc = loc;
    return this;
  }

  public ValidationError addLocItem(String locItem) {
    this.loc.add(locItem);
    return this;
  }

 /**
   * Get msg
   * @return msg
  **/
  @JsonProperty("msg")
  public String getMsg() {
    return msg;
  }

  public void setMsg(String msg) {
    this.msg = msg;
  }

  public ValidationError msg(String msg) {
    this.msg = msg;
    return this;
  }

 /**
   * Get type
   * @return type
  **/
  @JsonProperty("type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public ValidationError type(String type) {
    this.type = type;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ValidationError {\n");
    
    sb.append("    loc: ").append(toIndentedString(loc)).append("\n");
    sb.append("    msg: ").append(toIndentedString(msg)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
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

