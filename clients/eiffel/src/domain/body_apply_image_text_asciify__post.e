note
 description:"[
		FastAPI
 		No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
  		The version of the OpenAPI document: 0.1.0
 	    

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class BODY_APPLY_IMAGE_TEXT_ASCIIFY__POST 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    image: detachable FILE 
      

feature -- Change Element  
 
    set_image (a_name: like image)
        -- Set 'image' with 'a_name'.
      do
        image := a_name
      ensure
        image_set: image = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass BODY_APPLY_IMAGE_TEXT_ASCIIFY__POST%N")
        if attached image as l_image then
          Result.append ("%Nimage:")
          Result.append (l_image.out)
          Result.append ("%N")    
        end  
      end
end


