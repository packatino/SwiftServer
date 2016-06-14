//
//  Server.swift
//  SwiftServer
//
//  Created by Robert Mißbach on 14.06.16.
//
//

import PerfectLib

class Server
{
    let webRoot = "./webroot"
    
    init()
    {
        PerfectServer.initializeServices()
        
        self.createWebRoot()
        self.registerRoutes()
        self.startServer()
    }
    
    
    private func createWebRoot()
    {
        // This will serve all static content by default
        do
        {
            try Dir(webRoot).create()
        }
        catch
        {
            print("Error: Failed to create the web root.")
        }
    }
    
    
    private func startServer()
    {
        do
        {
            try HTTPServer(documentRoot: webRoot).start(port: 8181)
        }
        catch PerfectError.networkError(let err, let msg)
        {
            print("Network error thrown: \(err) \(msg)")
        }
        catch
        {
            print("Error: Failed to start the server.")
        }
    }
    
    
    private func registerRoutes()
    {
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
    }
}
