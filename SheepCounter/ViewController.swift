import UIKit

class ViewController: UIViewController {

	let data = SheepModel()

	//Dependency Injection
	var defaults: Defaults = NSUserDefaults.standardUserDefaults()

	@IBOutlet weak var countLabel: UILabel!
	@IBOutlet weak var decreaseButton: UIButton!
	@IBOutlet weak var increaseButton: UIButton!
	@IBOutlet weak var resetButton: UIControl!

	override func viewDidLoad() {
		super.viewDidLoad()
		resetButton.addTarget(self, action: "reset", forControlEvents: .TouchUpInside)
		updateLabel()
	}

	override func viewWillDisappear(animated: Bool) {
		defaults.setInteger(data.count, forKey: "SheepCount")
	}


	override func viewWillAppear(animated: Bool) {
		data.count = defaults.integerForKey("SheepCount")
	}

	@IBAction func increase(sender: UIButton) {
		data.increment()
		updateLabel()
	}

	@IBAction func decrease(sender: UIButton) {
		data.decrement()
		updateLabel()
	}

	func reset(){
		data.reset()
		updateLabel()
	}

	private func updateLabel(){
		countLabel.text = String(data.count)

	}
}

extension NSUserDefaults: Defaults {}

public protocol Defaults {
	func setInteger(value: Int, forKey defaultName: String)
	func integerForKey(defaultName: String) -> Int
}























