//
//  CustomCollectionViewCell.swift
//  MOB-1.2-StudyGuide-TM-V_1
//
//  Created by timofey makhlay on 12/8/18.
//  Copyright © 2018 Timofey Makhlay. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    // Random Label
    private let randomLabel: UITextView = {
        let textView = UITextView()
        textView.text = "Yup. That's it."
        textView.font = UIFont.systemFont(ofSize: 30)
        textView.backgroundColor = nil
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isSelectable = false
        textView.isScrollEnabled = false
        textView.textColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.9568627451, alpha: 1)
        return textView
    }()
    
    // Initializer need for Swift 4 if programmatic.
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
    }
    
    func addViews() {
        backgroundColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        // Adding and centering label within cell
        addSubview(randomLabel)
        randomLabel.centerOfView(to: self)
    }
    
    // Required with initializer.
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
