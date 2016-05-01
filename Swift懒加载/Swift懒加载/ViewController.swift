//
//  ViewController.swift
//  Swift懒加载
//
//  Created by Apple on 16/4/19.
//  Copyright © 2016年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 懒加载的固定格式
    lazy var dataList:[String] = {
        () -> [String]
        in
        print("dataList")
        return ["l", "c", "s"]
    }()
    // 用于懒加载的闭包可以省略参数和返回值in
    lazy var dataList2:[String] = {
        print("dataList2")
        return ["l", "c", "s"]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(dataList)
        print(dataList)
        print(dataList2)
        print(dataList2)
    }


}

