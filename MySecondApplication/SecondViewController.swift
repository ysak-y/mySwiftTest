//
//  SecondViewController.swift
//  MySecondApplication
//
//  Created by 山田 良明 on 2015/08/25.
//  Copyright (c) 2015年 Yoshiaki Yamada. All rights reserved.
//

import UIKit
import HealthKit

class SecondViewController: UIViewController {
    
    var myHealthStore : HKHealthStore!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myHealthStore = HKHealthStore()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

