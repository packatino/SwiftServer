//
//  BaseResponse.swift
//  SwiftServer
//
//  Created by Robert Mißbach on 16.06.16.
//
//

import Foundation

class BaseResponse
{
    var statusCode = 200
    var message = ""
    
    func dictionaryRepresentation() -> Dictionary<String, AnyObject>
    {
        return ["statusCode" : statusCode,
                "message" : message];
    }
    
    func jsonRepresentation() -> String
    {
        return JSONParser.jsonFor(dictionary:self.dictionaryRepresentation())!
    }
}
