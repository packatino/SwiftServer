//
//  Package.swift
//  SwiftServer
//
//  Created by Robert Mißbach on 13.06.16.
//  Copyright © 2016 Robert Mißbach. All rights reserved.
//

import PackageDescription

let package = Package
(
    name: "SwiftServer",
    targets: [],
    dependencies:
    [
        .Package(url:"https://github.com/PerfectlySoft/Perfect.git", versions: Version(0,0,0)..<Version(10,0,0))
    ]
)
