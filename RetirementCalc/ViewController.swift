//
//  ViewController.swift
//  RetirementCalc
//
//  Created by MadhuKumar on 1/23/22.
//  Copyright © 2022 MadhuKumar. All rights reserved.
//

import UIKit
import AppCenter
import AppCenterCrashes
import AppCenterAnalytics
class ViewController: UIViewController {

    @IBOutlet weak var calculateBtn: UIButton!
    @IBOutlet weak var sampleBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        if Crashes.hasCrashedInLastSession {
            let alert = UIAlertController(title: "Oops", message: "Sorry, something went wrong last time", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cool", style: .default, handler:  nil))
            self.present(alert, animated: true, completion: nil)
        }
        Analytics.trackEvent("Navigated to calculator")
    }

    @IBAction func calculateRetirementAmt(_ sender: Any) {
        //var value = self.sampleBtn.titleLabel?.accessibilityValue
        //Crashes.generateTestCrash()
        Analytics.trackEvent("Caculate_retirement", withProperties: ["current_age": "44"])
        print("calucated value is $X", 3333)
    }
}

