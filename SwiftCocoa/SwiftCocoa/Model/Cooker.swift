//
//  Cooker.swift
//  SwiftCocoa
//
//  Created by Lyndon Michael Bibera on 6/21/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

import UIKit

class Cooker: NSObject, BurnerDelegate {

    //implemented an Objective-C protocol
    func burn() {
        let t = self.ultiMethod("tt", param2: "")

        print(t)
    }

    func ultiMethod(param:NSString, param2:NSString) -> (name:String, lastName:String) {
        return (
            name:"xxx \(param) xxx",
            lastName:"ccc \(param2) ccc"
        )
    }

}
