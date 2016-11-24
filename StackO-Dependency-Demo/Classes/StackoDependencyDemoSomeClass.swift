//
//  StackoDependencyDemoSomeClass.swift
//  Pods
//
//  Created by Eric A. Soto on 11/23/16.
//
//

import UIKit
import RxSwift

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
