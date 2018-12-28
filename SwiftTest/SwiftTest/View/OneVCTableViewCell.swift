//
//  OneVCTableViewCell.swift
//  SwiftTest
//
//  Created by GuoYanjun on 2018/12/27.
//  Copyright © 2018年 shiyujin. All rights reserved.
//

import UIKit

class OneVCTableViewCell: UITableViewCell {

    var header:UIImageView?
    var name:UILabel?
    var detext:UILabel?
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.header = UIImageView.init()
        self.header!.backgroundColor = UIColor.red
        self.contentView.addSubview(self.header!)
        
        self.header!.snp.makeConstraints { (make) in
            make.size.equalTo(ScaleW(with: 100))
            make.top.equalTo(ScaleH(height: 10))
            make.bottom.equalTo(ScaleH(height: -10))
            make.left.equalTo(ScaleW(with: 10))
        }
        
        self.name = UILabel.init()
        self.name?.text = "我的名字"
        self.name?.textColor = UIColor.blue
        self.name?.font = UIFont(name: "wode", size: 15)
        self.contentView.addSubview(self.name!)
        self.name?.snp.makeConstraints({ (make) in
            make.left.equalTo((self.header?.snp.right)!).offset(10)
            make.height.equalTo(15)
            make.top.equalTo(self.header!)
        })
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
