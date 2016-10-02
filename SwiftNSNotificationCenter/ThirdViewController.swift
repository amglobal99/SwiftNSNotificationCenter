import Foundation
import UIKit

class ThirdViewController: UIViewController {
    
	@IBOutlet weak var notificationLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
        
        // Add observer here
		NotificationCenter.default.addObserver(self, selector: #selector(ThirdViewController.actOnSpecialNotification),
		                                       name: NSNotification.Name(rawValue: mySpecialNotificationKey),
		                                       object: nil)
	}
	
    
	func actOnSpecialNotification() {
		self.notificationLabel.text = "I heard the notification, too!"
	}
    
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    
    
}   // end class
