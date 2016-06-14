//
//  JSONParser.swift
//  SwiftServer
//
//  Created by Robert Mißbach on 13.06.16.
//  Copyright © 2016 Robert Mißbach. All rights reserved.
//

import Foundation


class JSONParser
{
    class func jsonFor(dictionary:NSDictionary) -> String?
    {
        do
        {
            let data = try NSJSONSerialization.data(withJSONObject: dictionary, options: NSJSONWritingOptions.prettyPrinted)
            if let jsonString = String(data: data, encoding: NSUTF8StringEncoding)
            {
                return jsonString
            }
        }
        catch {}
        return nil
    }
}
