/* 
 * FastAPI
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 0.1.0
 * 
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Org.OpenAPITools.Client.OpenAPIDateConverter;

namespace Org.OpenAPITools.Model
{
    /// <summary>
    /// BodyApplyVideoVideoFrameInterpolationPost
    /// </summary>
    [DataContract]
    public partial class BodyApplyVideoVideoFrameInterpolationPost :  IEquatable<BodyApplyVideoVideoFrameInterpolationPost>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="BodyApplyVideoVideoFrameInterpolationPost" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected BodyApplyVideoVideoFrameInterpolationPost() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="BodyApplyVideoVideoFrameInterpolationPost" /> class.
        /// </summary>
        /// <param name="video">video (required).</param>
        public BodyApplyVideoVideoFrameInterpolationPost(System.IO.Stream video = default(System.IO.Stream))
        {
            // to ensure "video" is required (not null)
            if (video == null)
            {
                throw new InvalidDataException("video is a required property for BodyApplyVideoVideoFrameInterpolationPost and cannot be null");
            }
            else
            {
                this.Video = video;
            }
            
        }
        
        /// <summary>
        /// Gets or Sets Video
        /// </summary>
        [DataMember(Name="video", EmitDefaultValue=false)]
        public System.IO.Stream Video { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class BodyApplyVideoVideoFrameInterpolationPost {\n");
            sb.Append("  Video: ").Append(Video).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as BodyApplyVideoVideoFrameInterpolationPost);
        }

        /// <summary>
        /// Returns true if BodyApplyVideoVideoFrameInterpolationPost instances are equal
        /// </summary>
        /// <param name="input">Instance of BodyApplyVideoVideoFrameInterpolationPost to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(BodyApplyVideoVideoFrameInterpolationPost input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Video == input.Video ||
                    (this.Video != null &&
                    this.Video.Equals(input.Video))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.Video != null)
                    hashCode = hashCode * 59 + this.Video.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
