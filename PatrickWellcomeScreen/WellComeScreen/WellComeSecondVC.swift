//
//  WellComeSecondVC.swift
//  Pratik_WellcomeScreen_Swift
//
//  Created by Pratik on 07/03/18.
//  Copyright © 2018 Pratik's imac. All rights reserved.
//

import UIKit

class WellComeSecondVC: UIViewController {
    @IBOutlet weak var mobifinLabel: UILabel!

    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var featuresLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        featuresLabel.text = "Languages.FEATURES"
        discriptionLabel.text = "Languages.WelCometwoDescription"

        do{
            let mutableString = NSMutableAttributedString(string: String(format: ""), attributes: [NSAttributedStringKey.foregroundColor : UIColor.white])
            
            let attributedString1 = NSAttributedString(string: "AppImageCode.CompanyMobifin", attributes: [NSAttributedStringKey.foregroundColor : UIColor.white, NSAttributedStringKey.font : UIFont(name: "Arial", size: 40)])
            mutableString.append(attributedString1)
            
            mobifinLabel.attributedText = mutableString
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
