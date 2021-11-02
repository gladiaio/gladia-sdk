# coding: utf-8

"""
    FastAPI

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)  # noqa: E501

    The version of the OpenAPI document: 0.1.0
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import re  # noqa: F401

# python 2 and python 3 compatibility library
import six

from openapi_client.api_client import ApiClient
from openapi_client.exceptions import (
    ApiTypeError,
    ApiValueError
)


class ImageImageFaceBluringApi(object):
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def apply_image_image_face_bluring_post(self, image, **kwargs):  # noqa: E501
        """Apply model for the face-bluring task for a given models  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.apply_image_image_face_bluring_post(image, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param file image: (required)
        :param str model:
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.apply_image_image_face_bluring_post_with_http_info(image, **kwargs)  # noqa: E501
        else:
            (data) = self.apply_image_image_face_bluring_post_with_http_info(image, **kwargs)  # noqa: E501
            return data

    def apply_image_image_face_bluring_post_with_http_info(self, image, **kwargs):  # noqa: E501
        """Apply model for the face-bluring task for a given models  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.apply_image_image_face_bluring_post_with_http_info(image, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param file image: (required)
        :param str model:
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['image', 'model']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method apply_image_image_face_bluring_post" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'image' is set
        if ('image' not in local_var_params or
                local_var_params['image'] is None):
            raise ApiValueError("Missing the required parameter `image` when calling `apply_image_image_face_bluring_post`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'model' in local_var_params:
            query_params.append(('model', local_var_params['model']))  # noqa: E501

        header_params = {}

        form_params = []
        local_var_files = {}
        if 'image' in local_var_params:
            local_var_files['image'] = local_var_params['image']  # noqa: E501

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['multipart/form-data'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/image/image/face-bluring/', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='object',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def get_versions_image_image_face_bluring_get(self, **kwargs):  # noqa: E501
        """Get list of models available for face-bluring  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_versions_image_image_face_bluring_get(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_versions_image_image_face_bluring_get_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.get_versions_image_image_face_bluring_get_with_http_info(**kwargs)  # noqa: E501
            return data

    def get_versions_image_image_face_bluring_get_with_http_info(self, **kwargs):  # noqa: E501
        """Get list of models available for face-bluring  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_versions_image_image_face_bluring_get_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = []  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_versions_image_image_face_bluring_get" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/image/image/face-bluring/', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='object',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)
