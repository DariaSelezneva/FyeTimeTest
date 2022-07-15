//
//  ViewController.swift
//  FyeTimeTest
//
//  Created by dunice on 14.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var licenseButton: UIButton!
    @IBOutlet weak var privacyPolicyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let attributes : [NSAttributedString.Key : Any] = [.font : UIFont.systemFont(ofSize: 14),
            .underlineStyle : NSUnderlineStyle.single.rawValue,
            .foregroundColor : UIColor.orange]
        let licenseString = NSMutableAttributedString(string: "license terms")
        licenseString.addAttributes(attributes, range: NSRange(location: 0, length: licenseString.length))
        licenseButton.setAttributedTitle(licenseString, for: .normal)
        let privacyPolicyString = NSMutableAttributedString(string: "privacy policy")
        privacyPolicyString.addAttributes(attributes, range: NSRange(location: 0, length: privacyPolicyString.length))
        privacyPolicyButton.setAttributedTitle(privacyPolicyString, for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openLink(_ sender: UIButton) {
        let stringURL = sender == licenseButton ? "https://fyetime.com/license-terms/" : "https://google.com/"
        if let url = URL(string: stringURL) {
          UIApplication.shared.open(url)
        }
    }
}

