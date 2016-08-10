# 🐑Sheep Counter🐑

Sheep counter is a simple example project to show you how to get started with iOS testing. Within you will find examples of Unit Testing using XCTest, UITesting with XCUITesting, and some important ideas like Dependency Injection.

## Getting Started
Check out the project, and just run it in your simulator.
Choose Produt -> Test to run all the tests for the project.

## Test Targets
Looking in the "Project Navigator" (on the left side of the Xcode window) you will see two Testing folders there. One contains the Unit Tests the other the UI Tests.

### Unit Test
Unit test are for testing small isolated bits of functionality. Unit test usually look at only one object (often a class) and by calling various functions (methods) from that object, we can ensure that the object behaves properly.

### UI Tests
UITest are more for testing that the App as a whole is performing as expected. The UITests act as an "Invisible Finger". The instruction are written from the perspective of the user. Push this button, scroll this view, etc.

## Dependency Injection
It sounds a bit scary, but it really is a simple concept. Often (almost always) our objects will need the help of other objects in order to get their work done. A `tableViewController` might need a `delegate` or a `dataSource` to get its work done. In Unit Testing we try to isolate the effects of these other object by inserting a "fake" or an object which we can be sure of its funcitionalty. (Consistent inputs and outputs is really the goal). You can see an example of dependency injection in the [ViewControllerTests](https://github.com/iOS-Connect/sheepCounterTesting/blob/master/SheepCounterTests/ViewControllerTests.swift#L56) but we also need to [write our ViewController in a way that allows injection](https://github.com/iOS-Connect/sheepCounterTesting/blob/master/SheepCounter/ViewController.swift#L8)
