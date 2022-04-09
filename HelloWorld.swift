//
//  HelloWorld.swift
//  HelloWorldExtension
//
//  Created by Pavel Kasila on 1.04.22.
//

import Foundation
import CEExtensionKit

@objc(HelloWorldExtension)
public class HelloWorldExtension: NSObject, ExtensionInterface {
    var api: ExtensionAPI

    required public init(extensionAPI api: ExtensionAPI) {
        self.api = api
        print("Hello from HelloWorldExtension: \(api)!")
    }
}
