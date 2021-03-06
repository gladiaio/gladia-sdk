/*
 * FastAPI
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 0.1.0
 * 
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OAS-api/OAS-codegen.git
 * Do not edit the class manually.
 */

/**
 * OASValidationError
 */
public class OASValidationError implements OAS.MappedProperties {
    /**
     * Get loc
     * @return loc
     */
    public List<String> loc { get; set; }

    /**
     * Get msg
     * @return msg
     */
    public String msg { get; set; }

    /**
     * Get r_type
     * @return r_type
     */
    public String r_type { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'type' => 'r_type'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public OASValidationError() {
        loc = new List<String>();
    }

    public static OASValidationError getExample() {
        OASValidationError validationError = new OASValidationError();
          validationError.loc = new List<String>{''};
          validationError.msg = '';
          validationError.r_type = '';
        return validationError;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASValidationError) {           
            OASValidationError validationError = (OASValidationError) obj;
            return this.loc == validationError.loc
                && this.msg == validationError.msg
                && this.r_type == validationError.r_type;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (loc == null ? 0 : System.hashCode(loc));
        hashCode = (17 * hashCode) + (msg == null ? 0 : System.hashCode(msg));
        hashCode = (17 * hashCode) + (r_type == null ? 0 : System.hashCode(r_type));
        return hashCode;
    }
}

