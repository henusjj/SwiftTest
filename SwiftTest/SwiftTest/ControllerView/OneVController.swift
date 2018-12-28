//
//  OneVController.swift
//  SwiftTest
//
//  Created by GuoYanjun on 2018/12/25.
//  Copyright © 2018年 shiyujin. All rights reserved.
//

import UIKit

class OneVController: BaseVController,UITabBarDelegate,UITableViewDataSource{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "One"
        let tableview = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: Int(SCREEN_WIDTH), height: Int(SCREEN_HEIGH) - Int(BarH) - Int(NAVIH)), style: UITableView.Style.plain)

        tableview.estimatedRowHeight = 100
        tableview.scrollsToTop = true
        tableview.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableview.delegate=self as? UITableViewDelegate
        tableview.dataSource=self
        self.view.addSubview(tableview)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 8
        }else{
            return 1
        }
    }
    
 
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "第一组"
        }else if section == 1{
            return "第二组"
        }else{
            return "第三组"
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cellid = "cellid"
            var cell = tableView.dequeueReusableCell(withIdentifier: cellid)
            if cell == nil {
                cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellid)
            }
            cell?.textLabel?.text = String(format: "cell--%ld", indexPath.row)
            return cell!
        }else{
            let cellid = "cellone"
            var cell:OneVCTableViewCell! = tableView.dequeueReusableCell(withIdentifier: cellid) as? OneVCTableViewCell
            if cell == nil{
                cell = OneVCTableViewCell.init(style:UITableViewCell.CellStyle.default, reuseIdentifier: cellid)
            }
            return cell
        }
        
    }
    
}
