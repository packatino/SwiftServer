# SwiftServer
A simple web service in Swift based on [Perfect](https://github.com/PerfectlySoft/Perfect).

## Building the Project
Building this project is not possible with Xcode's default toolchain, yet. Instead you have to use the latest snapshot from [https://swift.org/download/#snapshots](https://swift.org/download/#snapshots) (I have used the version from June 6, 2016). On that website you will also find instructions on how to use different keychains. With Xcode 8 this step should not be necessary anymore.

## Running the Server
You can run the server by running the project in Xcode or by typing the following commands in the console from the root directory of this project:

`$ swift build`

`$ .build/debug/SwiftServer`

When the server is running you will reach it on [http://localhost:8181/](http://localhost:8181/).
