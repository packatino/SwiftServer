//
//  ErrorEndpoint.swift
//  SwiftServer
//
//  Created by Robert Mißbach on 16.06.16.
//
//

import PerfectLib

class ErrorEndpoint
{
    class func handleRequest(request: WebRequest, response: WebResponse)
    {
        let responseDictionary = ["error" : "Internal server error",
                                  "statusCode" : 500]
        
        response.appendBody(string: JSONParser.jsonFor(dictionary:responseDictionary)!)
        response.requestCompleted()
    }
}
