//
//  ViewController.swift
//  getter和setter方法
//
//  Created by Apple on 16/4/19.
//  Copyright © 2016年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Swift中新增了命名空间概念，只要在同一个命名空间中的文件都是共享的
        let p1 = person()
        p1.name = "lcs"
        print(p1.name)
        
        p1.age = 23;
        print(p1.age)
        
        // 只读属性不能赋值
        // p1.sex = "woman"
        print(p1.sex)
        
    }


}

