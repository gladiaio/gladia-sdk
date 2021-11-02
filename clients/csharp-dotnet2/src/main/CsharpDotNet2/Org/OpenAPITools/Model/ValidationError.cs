using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace Org.OpenAPITools.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class ValidationError {
    /// <summary>
    /// Gets or Sets Loc
    /// </summary>
    [DataMember(Name="loc", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "loc")]
    public List<string> Loc { get; set; }

    /// <summary>
    /// Gets or Sets Msg
    /// </summary>
    [DataMember(Name="msg", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "msg")]
    public string Msg { get; set; }

    /// <summary>
    /// Gets or Sets Type
    /// </summary>
    [DataMember(Name="type", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "type")]
    public string Type { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ValidationError {\n");
      sb.Append("  Loc: ").Append(Loc).Append("\n");
      sb.Append("  Msg: ").Append(Msg).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return JsonConvert.SerializeObject(this, Formatting.Indented);
    }

}
}
