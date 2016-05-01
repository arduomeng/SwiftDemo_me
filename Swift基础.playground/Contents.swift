//: Playground - noun: a place where people can play

import UIKit

//10进制，没有指数
let d1 = 12.5
//10进制，有指数
let d2 = 0.125e2
//16进制，一定要有指数
//0xC.8 * 2 的 0 次方
let d3 = 0xC.8p0

//可以增加额外的下划线
let oneMillion = 1_000_000

//别名
typealias myInt = Int

//溢出运算符
//5个&开头的溢出运算符，用于整形运算 &+ &- &* &/ &%
let x = UInt8.max  //255
let y = x &+ 1     //0

//元组(多个任意类型的元素组成) var类型可以修改，let常量类型不能修改
let person = (x : 10.5, y : 20)
let person2 = (10,20) //省略元素名称
let person3 : (Int, String)=(20, "30")
//注意若指明元素类型，则不能指明元素名称
var (a, b) = (10, 20)
var point = (a, b)

//可以使用下划线忽略某个元素的值
//var person4 = (20, "jack")
//var (_, per) = person4

person.x
person.y

person.0
person.1

//标签：作用指定退出哪个循环

group:
    for _ in 1...2 {
        for _ in 1...3{
            print("in")
            break group
        }
        print("out")
}



/*
                            字符串:(Swift字符串可以和OC字符串转换)
 */
let name = "lcs"
let age = 23

//拼接
var infoStr = "name = \(name), age = \(age)"
//格式化
var timeStr = String(format: "%02d : %02d", arguments : [9,8])
//截取
var strRange = "lcs xxx"
var range = strRange.componentsSeparatedByString(" ")

//遍历
var strEnumerate = "lcs----lcs"
for c in strEnumerate.characters{
    print(c)
}


/*
                            字典
 */

let dictionary = ["name" : "lcs" , "age" : 22]

//遍历
for key in dictionary.keys{
    print(dictionary[key])
}

for (key , value) in dictionary{
    print(key)
    print(value)
}

/*
                            创建对象：
                            OC ： alloc initWithXXX
                            Swift ： (XXX)
                         
                            调用方法：
                            OC : [UIColor redColor]
                            Swift : UIColor.redColor()
                         
                            枚举
                            OC : UIButtonTypeContactAdd
                            Swift : UIButtonType.ContactAdd
                            
                            创建结构体
                            OC : CGPointMake()
                            Swift : CGPoint()
 */

let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
view.backgroundColor = UIColor.redColor()

let  btn = UIButton(type: UIButtonType.ContactAdd)
btn.center = CGPoint(x: 50, y: 50)
view.addSubview(btn)

/*
                            Swift中不存在隐式类型转换
 */

let num1 = 10
let num2 = 1.1
//let sum = num1 + num2
let sum1 = Double(num1) + num2
let sum2 = num1 + Int(num2)


/*
                            分支
 */

/*
    非零概念
    OC／C 非零即真
    Swift 条件只能放bool值，true／false
     if 10 {
        print("if 条件只能放bool值")
     }
 
 */

if 10 == 10 {
    print("10 == 10")
}

/*switch
 不需要写break
 switch后面的()可以省略
 switch()条件可以放任意类型
 OC中如果要在case中定义变量，必须加{}确定作用域 Swift可以不用
 Swift中default必须放在最后
 可以没有default，但是要保证处理所有的情况
 case后面一定要有处理语句
 case后面可以有多个匹配条件 case 10,9,8
 范围匹配： case 90...100

 匹配元组：
 判断点是否在一个范围中
 let point = (1, 1)
 switch point {
 case (0,0) :
 .....
 case (_,1) :
 ......
 case (-2...2, -2...2)
 .....
 }
 
 数值绑定：  将switch判断的值，传递给case，在case中使用
 let point = (10, 0)
 switch point {
 case (let x, 0):
 print("这个点在x轴上，x的值为\(x)");
 case (0, let y):
 ......
 case let (x, y): 相当于default，剩下的所有情况
 .....
 
 where：      var point = (10, -10)
 switch point {
 
 case let (x, y) where x == y:
 ....
 case let (x, y) where x == -y:
 default :
 ....
 }
 fallthrough:  执行完当前case 后， 会接着执行fallthrough后面的case或者default语句
 
 */

//范围运算符
//闭合范围运算符
for i in 0...5{
    print(i)
}

//半闭合范围运算符
for i in 0..<5{
    print(i)
}

//流程控制, 一定要有｛｝
//不用定义i
for _ in 1...3{
    print("xxx")
}

var whileNum1 = 0
while whileNum1 < 10 {
    print(whileNum1)
    whileNum1 += 1
}

/*
    Swift2.0 do while循环改为repeat while 。因为do被用作捕获异常
 */
var whileNum2 = 0
repeat {
    print(whileNum2)
    whileNum2 += 1
}while whileNum2 < 10


/*
                            可选类型 : 代表可以有也可以没有 Optional ？
 */

/*
    例如 init?(string URLString: String) 返回可能有值，可能为nil
 */

let url = NSURL(string: "baidu.com")
print(url)

let url2 = NSURL(string: "baidu.com/图片")
print(url2)

// !的作用，将可选类型的强制解析
let request = NSURLRequest(URL: url!)
// 因为url2为空，所以程序报错
// let request2 = NSURLRequest(URL: url2!)

// 为了避免NSURL为空， 使用可选绑定 Swift的用意，让大部分的错误由运行时，转移到编译时

// 如果能进大括号，则说明NSURL一定有值
if let urlFinal = url {
    let request = NSURLRequest(URL: urlFinal)
}

if let urlFinal = url2 {
    let request = NSURLRequest(URL: urlFinal)
}



/*
                                函数
 */


//函数格式
func sum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

// 从第二个参数开始的参数会作为函数的标签
sum(10, num2: 10)

//外部参数名
func addStudent2(name: String, stu_age age: Int, stu_num no: Int){
    
}

addStudent2("sjc", stu_age: 20, stu_num: 100) //外部参数名意义


//默认参数值.带有默认参数值的形参相同的外部参数名
func addStudent4(name: String, age: Int, no: Int = 20){
    print("name = \(name), age = \(age), on = \(no)")
}
addStudent4("lcs", age: 20);


//输入输出:在函数内部修改外部变量的值，类似指针
func change(inout num: Int){
    num = 10
}
var aa = 20
change(&aa)
aa















        
