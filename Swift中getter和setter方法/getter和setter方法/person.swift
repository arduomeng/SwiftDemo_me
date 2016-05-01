//
//  person.swift
//  getter和setter方法
//
//  Created by Apple on 16/4/19.
//  Copyright © 2016年 Apple. All rights reserved.
//

import UIKit

class person: NSObject {

    // 重写setter getter方法
    var _name:String?
    var name:String?{
        get{
            return _name;
        }
        set{
            _name = newValue;
        }
    }
    
    var age:Int?{
        
        // 在系统调用完setter方法后调用
        didSet{
            print(age)
        }
    }
    
    var sex:String{
        
        //如果只重写了getter方法，属性为只读.一定有值，所以不用？
        get{
            return "man"
        }
    }
    
    
    
}
