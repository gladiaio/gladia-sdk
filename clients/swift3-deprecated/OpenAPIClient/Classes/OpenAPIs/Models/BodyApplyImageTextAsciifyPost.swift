//
// BodyApplyImageTextAsciifyPost.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


open class BodyApplyImageTextAsciifyPost: JSONEncodable {

    public var image: URL?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["image"] = self.image?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

