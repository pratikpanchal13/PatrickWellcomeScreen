//
//  WellComeThirdVC.swift
//  Pratik_WellcomeScreen_Swift
//
//  Created by Pratik on 07/03/18.
//  Copyright © 2018 Pratik's imac. All rights reserved.
//

import UIKit

class WellComeThirdVC: UIViewController {
    @IBOutlet weak var mobifinLabel: UILabel!

    @IBOutlet weak var inAnyQueryLabel: UILabel!
    @IBOutlet weak var donotsharempinLabel: UILabel!
    @IBOutlet weak var phone_Label: UILabel!
    @IBOutlet weak var email_Label: UILabel!
    @IBOutlet weak var webSite_Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        inAnyQueryLabel.text = "In Any Query Fell Free To Contactus With"
        donotsharempinLabel.text = "Test"
        do{
            let mutableString = NSMutableAttributedString(string: String(format: ""), attributes: [NSAttributedStringKey.foregroundColor : UIColor.white])
            
            let attributedString1 = NSAttributedString(string: "\u{eb10}", attributes: [NSAttributedStringKey.foregroundColor : UIColor.white,NSAttributedStringKey.font : UIFont(name: "Arial", size: 40)!])
            mutableString.append(attributedString1)
            
            mobifinLabel.attributedText = mutableString
        }
        do{
            let mutableString = NSMutableAttributedString(string: String(format: ""), attributes: [NSAttributedStringKey.foregroundColor : UIColor.white])
            
            let attributedString1 = NSAttributedString(string: "\u{ed60}", attributes: [NSAttributedStringKey.foregroundColor : UIColor.white,NSAttributedStringKey.font : UIFont(name: "Arial", size: 40)!])
            mutableString.append(attributedString1)
            
            phone_Label.attributedText = mutableString
        }
        do{
            let mutableString = NSMutableAttributedString(string: String(format: ""), attributes: [NSAttributedStringKey.foregroundColor : UIColor.white])
            
            let attributedString1 = NSAttributedString(string: "\u{ecd5}", attributes: [NSAttributedStringKey.foregroundColor : UIColor.white, NSAttributedStringKey.font : UIFont(name: "Arial", size: 40)!])
            mutableString.append(attributedString1)
            
            email_Label.attributedText = mutableString
        }
        do{
            let mutableString = NSMutableAttributedString(string: String(format: ""), attributes: [NSAttributedStringKey.foregroundColor : UIColor.white])
            
            let attributedString1 = NSAttributedString(string: "\u{ecd5}", attributes: [NSAttributedStringKey.foregroundColor : UIColor.white, NSAttributedStringKey.font : UIFont(name: "Arial", size: 40)!])
            mutableString.append(attributedString1)
            
            webSite_Label.attributedText = mutableString
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
