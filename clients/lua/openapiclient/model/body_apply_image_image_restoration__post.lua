--[[
  FastAPI
 
  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 
  The version of the OpenAPI document: 0.1.0
  
  Generated by: https://openapi-generator.tech
]]

-- body_apply_image_image_restoration__post class
local body_apply_image_image_restoration__post = {}
local body_apply_image_image_restoration__post_mt = {
	__name = "body_apply_image_image_restoration__post";
	__index = body_apply_image_image_restoration__post;
}

local function cast_body_apply_image_image_restoration__post(t)
	return setmetatable(t, body_apply_image_image_restoration__post_mt)
end

local function new_body_apply_image_image_restoration__post(image)
	return cast_body_apply_image_image_restoration__post({
		["image"] = image;
	})
end

return {
	cast = cast_body_apply_image_image_restoration__post;
	new = new_body_apply_image_image_restoration__post;
}
