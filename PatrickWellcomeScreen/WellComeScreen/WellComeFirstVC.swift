//
//  WellComeFirstVC.swift
//  Pratik_WellcomeScreen_Swift
//
//  Created by Pratik on 07/03/18.
//  Copyright © 2018 Pratik's imac. All rights reserved.
//

import UIKit

class WellComeFirstVC: UIViewController {
    @IBOutlet weak var mobifinLabel: UILabel!
    
    @IBOutlet weak var welComeDiscripationLabel: UILabel!
    @IBOutlet weak var welComeToLabel: UILabel!
    @IBOutlet weak var cashBackLabel: UILabel!
    @IBOutlet weak var onfirstTransactionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        welComeToLabel.text = "Languages.WelCome_To"
        cashBackLabel.text = "Languages.CASHBACK"
        onfirstTransactionLabel.text = "Languages.On_First_Transaction"
        welComeDiscripationLabel.text = "Languages.Your_Account_Registration_Has_Been_Completed_Successfully"
        do{
            let mutableString = NSMutableAttributedString(string: String(format: ""), attributes: [NSAttributedStringKey.foregroundColor : UIColor.white])
            
            let attributedString1 = NSAttributedString(string: "AppImageCode.CompanyMobifin", attributes: [NSAttributedStringKey.foregroundColor : UIColor.white, NSAttributedStringKey.font : UIFont(name: "Arial", size: 40)])
            mutableString.append(attributedString1)
            
            mobifinLabel.attributedText = mutableString
        }

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
