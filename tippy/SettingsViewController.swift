//
//  SettingsViewController.swift
//  tippy
//
//  Created by Sophia Sun on 12/29/18.
//  Copyright © 2018 Sophia Qi Young. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var UserDefaultSelectionControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
    UserDefaultSelectionControl.selectedSegmentIndex = defaults.integer(forKey: "defaultPercentage") ?? 0
        print(defaults.integer(forKey: "defaultPercentage"))
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeDefaultPercentage(_ sender: Any) {
        let defaults = UserDefaults.standard
        
    defaults.set(UserDefaultSelectionControl.selectedSegmentIndex, forKey: "defaultPercentage")
        defaults.synchronize()
    
   
       
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
