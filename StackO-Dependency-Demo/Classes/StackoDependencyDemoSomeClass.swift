//
//  StackoDependencyDemoSomeClass.swift
//  Pods
//
//  Created by Eric A. Soto on 11/23/16.
//
//

import UIKit
import RxSwift
// import PureLayout // Trying to import 'PureLayout' will NOT work here! PureLayout is included in the Podfile and therefore available for the Example App but NOT for the Developed Pod.

public class StackoDependencyDemoSomeClass: NSObject {

    /**
     A method to return the passed string pre-pended with 'Hello'.
     
     Parameters:
     - name: a string which will be returned
     
     Return:
     - a string 'Hello ' + the passee string
     
     */
    public static func hello(name:String) -> String {
        return "Hello \(name)"
    }
    
}
