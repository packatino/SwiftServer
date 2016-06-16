//
//  RootEndpoint.swift
//  SwiftServer
//
//  Created by Robert Mißbach on 16.06.16.
//
//

import PerfectLib

class RootEndpoint
{
    class func handleRequest(request: WebRequest, response: WebResponse)
    {
        let responseDictionary = ["message" : "Hello World",
                                  "statusCode" : 200]
        
        response.appendBody(string: JSONParser.jsonFor(dictionary:responseDictionary)!)
        response.requestCompleted()
    }
}
