//
// OuterComposite.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct OuterComposite: Codable {

    public private(set) var myNumber: Double?
    public private(set) var myString: String?
    public private(set) var myBoolean: Bool?

    public init(myNumber: Double? = nil, myString: String? = nil, myBoolean: Bool? = nil) {
        self.myNumber = myNumber
        self.myString = myString
        self.myBoolean = myBoolean
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case myNumber = "my_number"
        case myString = "my_string"
        case myBoolean = "my_boolean"
    }

}