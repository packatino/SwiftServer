//
//  PingEndpoint.swift
//  SwiftServer
//
//  Created by Robert Mißbach on 16.06.16.
//
//

import PerfectLib

class PingEndpoint
{
    class func handleRequest(request: WebRequest, response: WebResponse)
    {
        let pingResponse = BaseResponse()
        pingResponse.statusCode = 200
        pingResponse.message = "pong"
        
        response.appendBody(string: pingResponse.jsonRepresentation())
        response.requestCompleted()
    }
}