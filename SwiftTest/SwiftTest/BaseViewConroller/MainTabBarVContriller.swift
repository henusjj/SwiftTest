//
//  MainTabBarVContriller.swift
//  SwiftTest
//
//  Created by GuoYanjun on 2018/12/25.
//  Copyright © 2018年 shiyujin. All rights reserved.
//

import UIKit
//import OneVController
//import TwoVController
//import ThreeVController

import CYLTabBarController


class MainTabBarVContriller: NSObject {
    
    func initWithtabBar() -> CYLTabBarController {
        let maintabbarviewController = CYLTabBarController.init(viewControllers: self.viewCounts() as? [UIViewController], tabBarItemsAttributes: self.arryItems() as? [[AnyHashable : Any]], imageInsets: UIEdgeInsets.zero, titlePositionAdjustment: UIOffset.zero)
        return maintabbarviewController!
    }
    
    
    func viewCounts() -> NSArray {
        let oneVc = OneVController()
        let oneNav = UINavigationController.init(rootViewController: oneVc)
        
        let twoVc = TwoVController()
        let twoNav = UINavigationController.init(rootViewController: twoVc)
        
        let threeVc = ThreeVController()
        let threeNav = UINavigationController.init(rootViewController: threeVc)
        
        let arryView = [oneNav,twoNav,threeNav]
        
        return arryView as NSArray
    }
    
    func arryItems() -> NSArray {
        let one = [
            CYLTabBarItemTitle:"home",
            CYLTabBarItemImage:"",
            CYLTabBarItemSelectedImage:"",
            ]
        let two = [
            CYLTabBarItemTitle:"two",
            CYLTabBarItemImage:"",
            CYLTabBarItemSelectedImage:"",
            ]
        let three = [
            CYLTabBarItemTitle:"three",
            CYLTabBarItemImage:"",
            CYLTabBarItemSelectedImage:"",
            ]
        let arryItem = [one,two,three]
        
        return arryItem as NSArray
    }

}
