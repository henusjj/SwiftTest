//
//  Common.swift
//  SwiftTest
//
//  Created by GuoYanjun on 2018/12/26.
//  Copyright © 2018年 shiyujin. All rights reserved.
//

import Foundation
import UIKit

//这是第三方库需要导入的头文件，自己创建.swift的不需要导入import CYLTabBarController
import CYLTabBarController

import MJRefresh


//

//获取屏幕宽度  高度
let  SCREEN_WIDTH = UIScreen.main.bounds.width
let  SCREEN_HEIGH = UIScreen.main.bounds.height

//颜色获取(定义方法)
func RGBA(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}

