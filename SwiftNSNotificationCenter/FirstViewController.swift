import Foundation
import UIKit

let mySpecialNotificationKey = "com.andrewcbancroft.specialNotificationKey"

class FirstViewController: UIViewController {
    
	@IBOutlet weak var sentNotificationLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
	
        // Add observer here
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(FirstViewController.updateNotificationSentLabel),
                                               name: NSNotification.Name(rawValue: mySpecialNotificationKey),
                                               object: nil)
        }
	
    
    
	@IBAction func notify() {
        print("First VC: notify called ..")
		NotificationCenter.default.post(name: Notification.Name(rawValue: mySpecialNotificationKey),
		                                object: self)
	}
	
    
	func updateNotificationSentLabel() {
        print("First VC : updateNotificationSentLabel")
		self.sentNotificationLabel.text = "Notification sent!"
	}
    
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    
} // end class


