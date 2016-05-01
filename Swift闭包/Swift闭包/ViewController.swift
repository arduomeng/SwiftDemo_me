//
//  ViewController.swift
//  Swift闭包
//
//  Created by Apple on 16/4/18.
//  Copyright © 2016年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
            闭包的基本格式
         
            {
                (参数) -> (返回值) in
                执行代码
            }
         */
        
        dispatch_async(dispatch_get_global_queue(0, 0)) {
            print(NSThread.currentThread());
            print("执行耗时操作");
            
            dispatch_async(dispatch_get_main_queue(), {
                print(NSThread.currentThread());
                print("执行耗时操作");
            })
        }
        
        /*
            闭包的循环引用
         */
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        /*
            闭包的几种格式
            1.直接通过实参传递
            2.如果闭包是函数的最后一个参数，那么闭包可以写在()后面
         
         
            闭包如果没有参数没有返回值，则参数，返回值，in可以省略
         */
        
        loadData ({
            print("被回调了")
        })
        
        loadData { 
            print("被回调了")
        }
    }
    func loadData( myBlock : () -> ()) {
        print("loadData");
        myBlock();
    }
}


