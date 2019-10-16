//
//  SwiftMessageClasses.swift
//  SearchTextFieldDemo
//
//  Created by John Kouris on 10/16/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import Foundation
import SwiftMessages

class SwiftMessagesTopCardSegue: SwiftMessagesSegue {
    override public  init(identifier: String?, source: UIViewController, destination: UIViewController) {
        super.init(identifier: identifier, source: source, destination: destination)
        configure(layout: .topCard)
    }
}
