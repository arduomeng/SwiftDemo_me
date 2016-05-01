//
//  person.swift
//  Swift构造方法
//
//  Created by Apple on 16/4/19.
//  Copyright © 2016年 Apple. All rights reserved.
//

import UIKit

class person: NSObject {

    // 只要在构造方法中对属性初始化，就不用加？
    
    /* 如果是定义一个“对象属性”那么后面可以写上？
       如果是定义一个“基本数据类型”那么直接赋值为0
       因为super.init()方法在分配内存的时候，如果属性是对象，并且是一个可选类型，则分配内存空间，如果是基本数据类型，则不会分配空间
     */
    
    var name : String?
    var age  : Int = 0
    
    override init() {
        name = "lcs"
        age = 23
    }
    
    // Swift中有方法重载的概念
    init(name : String , age : Int) {
        self.name = name;
        self.age = age;
    }
    
    // 在构造方法中用KVC,调用super.init()分配存储空间
    init(dict : [String : NSObject]) {
        super.init()
        setValuesForKeysWithDictionary(dict)
    }
    
}
