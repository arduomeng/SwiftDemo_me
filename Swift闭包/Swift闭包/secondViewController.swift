//
//  secondViewController.swift
//  Swift闭包
//
//  Created by Apple on 16/4/19.
//  Copyright © 2016年 Apple. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    // 在swift中，定义属性一定要初始化。 ？表示该属性可以为nil 使用的时候需要用！标识一定有值
    var loopBlock : (() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        weak var weakSelf = self
        
        // swift中能不写self就不写，但是在闭包中一定要写self， 因为闭包调用的时间不确定，会对view进行强引用
        loopBlock = {
            print("调用闭包")
            weakSelf!.view.backgroundColor = UIColor.redColor()
        }
        
        loopBlock!()
        
    }
    deinit{
        print("deinit")
    }

}
