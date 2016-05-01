//
//  ViewController.swift
//  Swift构造方法
//
//  Created by Apple on 16/4/19.
//  Copyright © 2016年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = person()
        print("\(p1.name), " + "\(p1.age)")
        
        let p2 = person(name: "sjc", age: 23)
        print("\(p2.name), " + "\(p2.age)")
        
        let p3 = person(dict: ["name" : "lcs", "age" : 23])
        print("\(p3.name), " + "\(p3.age)")
        
    }


}

