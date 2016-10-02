import Foundation
import UIKit

class SecondViewController: UIViewController {
    
	@IBOutlet weak var notificationLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
        
        // Add observer here
		NotificationCenter.default.addObserver(self,
		                                       selector: #selector(SecondViewController.actOnSpecialNotification),
		                                       name: NSNotification.Name(rawValue: mySpecialNotificationKey),
		                                       object: nil)
	}
	
	func actOnSpecialNotification() {
        print("Second VC: actOnSpecialNotificatin method....")
		self.notificationLabel.text = "I heard the notification!"
	}
    
    
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    
}
