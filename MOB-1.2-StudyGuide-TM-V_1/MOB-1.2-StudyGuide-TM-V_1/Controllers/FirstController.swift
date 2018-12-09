//
//  ViewController.swift
//  MOB-1.2-StudyGuide-TM-V_1
//
//  Created by timofey makhlay on 12/8/18.
//  Copyright © 2018 Timofey Makhlay. All rights reserved.
//

import UIKit

class FirstController: UIViewController {
    // MARK: Welcome to my Cheat Sheet. Everything Here is programmatic (Sorry not Sorry)

    // Welcome Label
    private let welcomeLabel: UITextView = {
        let textView = UITextView()
        textView.text = "Welcome to MOB 1.2 CheatSheet\nby Timo"
        textView.font = UIFont.systemFont(ofSize: 20)
        textView.backgroundColor = nil
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isSelectable = false
        textView.isScrollEnabled = false
        textView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return textView
    }()
    
    // Push Next View Button
    private let nextViewButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.09553630322, green: 0.04069456336, blue: 0.4362659324, alpha: 1)
        button.layer.cornerRadius = 8
        button.setTitle("Start",for: .normal)
        button.addTarget(self, action: #selector(loadNextView), for: .touchUpInside)
        return button
    }()
    
    private func loadFirstViewComponents() {
        // Programmatically Add the textView and Button on the page.
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.addSubview(welcomeLabel)
        
        // Add Programmatic constraints using extention.
//        welcomeLabel.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: view.bounds.height / 3, left: 20, bottom: 0, right: 20), size: .init(width: 0, height: 100))
        welcomeLabel.centerOfView(to: view)
        
        view.addSubview(nextViewButton)
        nextViewButton.anchor(top: welcomeLabel.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 90, left: 20, bottom: 0, right: 20), size: .init(width: 0, height: 60))

    }
    
    @objc private func loadNextView() {
        // Push the next view programmatically. You need the code in the App Delegate for this to work.
        let newViewController = TableViewController()
        self.navigationController?.pushViewController(newViewController, animated: true)
        
        // MARK: Code below is for non programmatic push.
        
        // let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        // let newViewController = storyBoard.instantiateViewController(withIdentifier: "main") as? ViewController
        // self.navigationController?.pushViewController(newViewController!, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadFirstViewComponents()
        
    }
    
    // Remove the Navbar only from this view
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
}

