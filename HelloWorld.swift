//
//  HelloWorld.swift
//  HelloWorldExtension
//
//  Created by Pavel Kasila on 1.04.22.
//

import Foundation
import CEExtensionKit

public class HelloWorldExtension: ExtensionInterface {
    var api: ExtensionAPI

    init(api: ExtensionAPI) {
        self.api = api
        print("Hello from HelloWorldExtension: \(api)!")
    }
}

@objc(HelloWorldBuilder)
public class HelloWorldBuilder: NSObject, ExtensionBuilderProtocol {
    required public override init() {
        super.init()
    }

    public func build(withAPI api: ExtensionAPI) -> ExtensionInterface {
        return HelloWorldExtension(api: api)
    }
}
