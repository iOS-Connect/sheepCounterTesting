import XCTest
@testable import SheepCounter


class SheepCounterTests: XCTestCase {

	var data:SheepModel!
    
    override func setUp() {
        super.setUp()

		data = SheepModel()
    }
    
    override func tearDown() {

        super.tearDown()
    }
    
    func testIsZero() {
		XCTAssert(data.count == 0)
	}

	func testInc() {
		data.increment()
		XCTAssert(data.count == 1, "Count increases")
	}

	func testDec() {
		data.decrement()
		XCTAssert(data.count == 0)
	}

	func testUpTwoDownOne() {
		data.increment()
		data.increment()
		data.decrement()
		XCTAssert(data.count == 1)
	}

	func testReset(){
		data.increment()
		data.increment()
		data.increment()
		data.reset()
		XCTAssert(data.count == 0)
	}

}
