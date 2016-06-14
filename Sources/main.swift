//
//  main.swift
//  SwiftServer
//
//  Created by Robert Mißbach on 13.06.16.
//  Copyright © 2016 Robert Mißbach. All rights reserved.
//

import PerfectLib


// Initialize base-level services
PerfectServer.initializeServices()

// Create our webroot
// This will serve all static content by default
let webRoot = "./webroot"
try Dir(webRoot).create()


// Add our routes and such
// Register your own routes and handlers
Routing.Routes["/"] = {request, response in
    
    let responseDictionary = ["message" : "Hello World",
                              "statusCode" : 200]
    
    response.appendBody(string: JSONParser.jsonFor(dictionary:responseDictionary)!)
    response.requestCompleted()
}

Routing.Routes["/error"] = {request, response in
    
    let responseDictionary = ["error" : "Internal server error",
                              "statusCode" : 500]
    
    response.appendBody(string: JSONParser.jsonFor(dictionary:responseDictionary)!)
    response.requestCompleted()
}


do
{
    // Launch the HTTP server on port 8181
    try HTTPServer(documentRoot: webRoot).start(port: 8181)
}
catch PerfectError.networkError(let err, let msg)
{
    print("Network error thrown: \(err) \(msg)")
}

