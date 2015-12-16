import Foundation

class SheepModel {

	var count = 0

	func increment(){
		count = count + 1
	}

	func decrement(){
		if count == 0 {
			return
		}
		count = count - 1
	}

	func reset(){
		count = 0
	}

}