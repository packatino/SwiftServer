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
        let rootResponse = BaseResponse()
        rootResponse.statusCode = 200
        rootResponse.message = "Hello World"
        
        response.appendBody(string: rootResponse.jsonRepresentation())
        response.requestCompleted()
    }
}
