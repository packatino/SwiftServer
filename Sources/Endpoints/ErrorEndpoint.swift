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
        let errorResponse = BaseResponse()
        errorResponse.statusCode = 500
        errorResponse.message = "Internal server error"
        
        response.appendBody(string: errorResponse.jsonRepresentation())
        response.requestCompleted()
    }
}
