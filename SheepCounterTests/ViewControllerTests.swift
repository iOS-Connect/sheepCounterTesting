import XCTest
@testable import SheepCounter

class ViewControllerTests: XCTestCase {

	var vc: ViewController!

    override func setUp() {
        super.setUp()
		let story = UIStoryboard(name: "Main", bundle: nil)
		vc = story.instantiateInitialViewController() as! ViewController
		_ = vc.view
    }
    

    func testExample() {

		XCTAssert(vc.countLabel.text == "0")
    }

	func testInc() {
		let button = vc.increaseButton
		vc.increase(button)
		XCTAssert(vc.countLabel.text == "1")
	}

	func testDec() {

		vc.increase(UIButton())
		vc.increase(UIButton())
		vc.decrease(UIButton())
		XCTAssert(vc.countLabel.text == "1")
	}

	func testRestet() {
		vc.increase(UIButton())
		vc.increase(UIButton())
		vc.decrease(UIButton())
		vc.reset()
		XCTAssert(vc.countLabel.text == "0")
	}

	func testSavesCount(){
		let def = FakeDefaults()
		vc.defaults = def
		vc.viewWillDisappear(false)
		XCTAssert(def.gotCalled == true)
	}

	func testresumeCount(){
		vc.defaults = FakeDefaults()
		vc.viewWillAppear(false)
		XCTAssert(vc.data.count == 3)
	}

	class FakeDefaults: Defaults {

		var gotCalled = false

		func setInteger(value: Int, forKey defaultName: String){
			gotCalled = true
		}

		func integerForKey(defaultName: String) -> Int {
			return 3
		}

	}


}
