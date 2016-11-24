# CocoaPod Podspec Dependency Demo

## Summary

This repo is a demo of how to create a Pod (CocoaPod) that in turn has a 'dependency'.

In this case, the development pod is called 'StackO-Dependency-Demo' and in turn, it requires 'RxSwift'.

Additionally, the example project requires 'PureLayout' - so you can see the difference between a 'podfile' dependency and a 'podspec' dependency.

The pod presented here actually does very little. It just demonstrates how to setup a Pod with a dependency!

Note: I am very purposely demonstrating this in ONLY Swift, Xcode 8 and CocoaPods 1.1.1. There are several nuances when a Swift pod depends on an ObjectiveC pod, especially if the said ObjectiveC pod is a static library!

## How do we add a dependency in a Podspec?

* Add the dependency line in the podspec, for example `s.dependency 'RxSwift', '~> 3.0.1'`
* Add as many dependencies as needed by repeating this line
* Include your pod in another project and reference it via the podfile (in this repo, we're using the Example folder for an Example App)
* After adding the dependency, be sure to perform `pod install` in the same folder that contains the Podfile
* If you did not get any errors in the pod install, now you should be able to reference the dependency in your Pod's code, for example `import RxSwift` at the top of your pod's class files as needed.

## Running the Example App

To run the example app:

* Clone the repo, and run `pod install` from the Example directory first
* Open 'StackO-Dependency-Demo.xcworkspace' in Xcode, select any Simulator as your target, then Build & Run.

If you want to target an actual device, you'll need to first set your "team" in the project settings!

Note, the Example App is NOT very exciting. It just outputs 'Hello World' which actually is a string returnd by the developed pod. The usefulness of the example is in the code, not the example itself!

## Review the Example App Code

* Open 'StackO-Dependency-Demo.xcworkspace' in Xcode
* Navigate to the StackO-Dependency-Demo project, then the 'Example for...' group
* Thew ViewController.swift has the few lines of code to reference the developed Pod and also PureLayout 

**Interesting side-effect in the Example App**
Note how the Example App does indeed ALSO have access to the RxSwift pod. This is quite convenient in case you're leveraging a Pod that provides functionality to both your developed Pod and your App/Project.

## Development Pod

In Xcode, from the Pods project, open the group 'Development Pods' until you see the folder for 'Classes' in 'StackO-Dependency-Demo'. This is the Pod being developed! Note after following the above steps, this Pod is indeed able to `import RxSwift`. Notice also how it cannot reference PureLayout!

## Requirements

* CocoaPods 1.1.1
* Xcode 8

## Installation

* Clone this repo
* In the Exmple folder, perforn a `pod install`
* Open 'StackO-Dependency-Demo.xcworkspace' in Xcode 8 to review and inspect

## Author

Eric A. Soto, https://ericsoto.net/

## License

StackO-Dependency-Demo is available under a modified MIT license. See the LICENSE file for more info.
