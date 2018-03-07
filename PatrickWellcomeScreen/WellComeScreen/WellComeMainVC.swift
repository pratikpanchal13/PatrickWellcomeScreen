//
//  WellComeMainVC.swift
//  Pratik_WellcomeScreen_Swift
//
//  Created by Pratik on 7/3/18.
//  Copyright © 2018 Pratik'Mac. All rights reserved.
//

import UIKit

//class TutorialViewController: UIViewController {
class WellComeMainVC: UIViewController {

    //MARK:- Outlets & variables
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var tutorialPageViewController: WellComePageViewController? {
        didSet {
            tutorialPageViewController?.tutorialDelegate = self
        }
    }
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //AppUserDefaults.isFirstTimeAppOpen = false
        pageControl.addTarget(self, action: #selector(WellComeMainVC.didChangePageControlValue), for: .valueChanged)
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        pageControl.transform = CGAffineTransform(scaleX: 2, y: 2); //set value here

    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tutorialPageViewController = segue.destination as? WellComePageViewController {
            self.tutorialPageViewController = tutorialPageViewController
        }
    }

    //MARK:- Button Action Event
    @IBAction func didTapNextButton(_ sender: UIButton) {
        tutorialPageViewController?.scrollToNextViewController()
    }
    
    @IBAction func didTapSkipButton(_ sender: UIButton) {
        AppDelegate.shared.didLoadingFinishedAfterAppLaunch()
    }
    
    /**
     Fired when the user taps on the pageControl to change its current page.
     */
    @objc func didChangePageControlValue() {
        tutorialPageViewController?.scrollToViewController(index: pageControl.currentPage)
    }
}

extension WellComeMainVC: WellComePageViewControllerDelegate {
    
    func tutorialPageViewController(_ tutorialPageViewController: WellComePageViewController,
        didUpdatePageCount count: Int) {
        pageControl.numberOfPages = count
    }
    
    func tutorialPageViewController(_ tutorialPageViewController: WellComePageViewController,
        didUpdatePageIndex index: Int) {
        if pageControl.numberOfPages == index+1 {
            nextButton.setTitle("Finished", for: .normal)
            skipButton.isHidden = true
        }
        else
        {
            nextButton.setTitle("Next", for: .normal)
            skipButton.isHidden = false
        }
        pageControl.currentPage = index
    }
    
}
