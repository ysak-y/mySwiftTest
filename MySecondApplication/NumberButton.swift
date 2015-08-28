//
//  NumberButton.swift
//  MySecondApplication
//
//  Created by 山田 良明 on 2015/08/27.
//  Copyright (c) 2015年 Yoshiaki Yamada. All rights reserved.
//

import UIKit

class NumberButton: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    var model :Model

    required init(coder aDecoder: NSCoder) {
        
        self.model = Model()
        super.init(coder: aDecoder)
        
    }

    
    override init(frame: CGRect) {
        
        self.model = Model()
        super.init(frame: CGRectMake(0, 0, 0, 0))
        
    }
    
    func set(model: Model){
        self.model = model
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.model.addNumber(self.titleLabel!.text!)
    }
    

}
