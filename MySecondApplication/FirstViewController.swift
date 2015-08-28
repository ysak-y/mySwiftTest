//
//  FirstViewController.swift
//  MySecondApplication
//
//  Created by 山田 良明 on 2015/08/25.
//  Copyright (c) 2015年 Yoshiaki Yamada. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    init(){
        self.model = Model()
        super.init(nibName: nil, bundle: nil)
    }

    required init(coder aDecoder: NSCoder) {
        model = Model()
        super.init(coder: aDecoder)
        //fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabel.text = "foo"
        model.addObserver(self, forKeyPath: "expression", options: .New, context: nil)
        
        for num in Numbers{
            num.set(model)
        }
        
        self.model.expression = "bar"

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func observeValueForKeyPath(keyPath: String, ofObject object: AnyObject, change: [NSObject : AnyObject], context: UnsafeMutablePointer<Void>) {
        
        if keyPath == "expression"{
            println(model.expression)
            firstLabel.text = model.expression
        }
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        model.removeObserver(self, forKeyPath: "expression")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet var Numbers: [NumberButton]!
    
    var model: Model
    
}

