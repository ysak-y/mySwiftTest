//
//  NavigationViewController2.swift
//  MySecondApplication
//
//  Created by 山田 良明 on 2015/08/27.
//  Copyright (c) 2015年 Yoshiaki Yamada. All rights reserved.
//

import UIKit

class NavigationViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func back(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
