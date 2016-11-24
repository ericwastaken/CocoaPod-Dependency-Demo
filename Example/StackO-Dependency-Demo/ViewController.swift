//
//  ViewController.swift
//  StackO-Dependency-Demo
//
//  Created by Eric A. Soto on 11/23/2016.
//  Copyright (c) 2016 Eric A. Soto. All rights reserved.
//

import UIKit
import PureLayout
import StackO_Dependency_Demo

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Create a label and show it in the view
        let aLabel = UILabel()
        // Call "our pod"
        aLabel.text = StackoDependencyDemoSomeClass.hello(name: "World")
        // Add to the superview and set constraints for the label
        self.view.addSubview(aLabel)
        aLabel.translatesAutoresizingMaskIntoConstraints = false
        aLabel.autoCenterInSuperview()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

