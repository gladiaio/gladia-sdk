# coding: utf-8

"""
    FastAPI

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)  # noqa: E501

    The version of the OpenAPI document: 0.1.0
    Generated by: https://openapi-generator.tech
"""


import pprint
import re  # noqa: F401

import six


class BodyApplyImageImageFaceBluringPost(object):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    """
    Attributes:
      openapi_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    openapi_types = {
        'image': 'file'
    }

    attribute_map = {
        'image': 'image'
    }

    def __init__(self, image=None):  # noqa: E501
        """BodyApplyImageImageFaceBluringPost - a model defined in OpenAPI"""  # noqa: E501

        self._image = None
        self.discriminator = None

        self.image = image

    @property
    def image(self):
        """Gets the image of this BodyApplyImageImageFaceBluringPost.  # noqa: E501


        :return: The image of this BodyApplyImageImageFaceBluringPost.  # noqa: E501
        :rtype: file
        """
        return self._image

    @image.setter
    def image(self, image):
        """Sets the image of this BodyApplyImageImageFaceBluringPost.


        :param image: The image of this BodyApplyImageImageFaceBluringPost.  # noqa: E501
        :type: file
        """
        if image is None:
            raise ValueError("Invalid value for `image`, must not be `None`")  # noqa: E501

        self._image = image

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.openapi_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, BodyApplyImageImageFaceBluringPost):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
