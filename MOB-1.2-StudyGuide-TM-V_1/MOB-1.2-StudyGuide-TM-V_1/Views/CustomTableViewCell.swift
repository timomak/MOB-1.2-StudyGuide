//
//  CustomTableViewCell.swift
//  MOB-1.2-StudyGuide-TM-V_1
//
//  Created by timofey makhlay on 12/8/18.
//  Copyright © 2018 Timofey Makhlay. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    // Variables that can be changed within the table view controller
    let newsestView = UIView()
    let label = UILabel()


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // [Not necessary] Setting the color of the cell view (can be changed to me an image)
        newsestView.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        
        // Adding Subviews
        contentView.addSubview(newsestView)
        contentView.addSubview(label)

        // Adding constraints using the extention.
        newsestView.anchor(top: contentView.topAnchor, leading: nil, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 50, height: 50))
        label.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: newsestView.leadingAnchor, padding: .init(top: 0, left: 10, bottom: 0, right: 0), size: .init(width: 80, height: 50))
    }
    
    // Required with initilizer
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
