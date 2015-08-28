//
//  Nodel.swift
//  MySecondApplication
//
//  Created by 山田 良明 on 2015/08/27.
//  Copyright (c) 2015年 Yoshiaki Yamada. All rights reserved.
//

import Foundation

class Model: NSObject {
    
    dynamic var expression: String
    
    override init() {
        expression = ""
        super.init()
    }
    
    func addNumber(str: String){
        expression += str
    }

}