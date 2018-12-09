//
//  tableViewController.swift
//  MOB-1.2-StudyGuide-TM-V_1
//
//  Created by timofey makhlay on 12/8/18.
//  Copyright © 2018 Timofey Makhlay. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    // List of all the topics
    private var studyTopics = ["Collection View"]

    // Name of Cell
    private let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set Navbar title
        navigationItem.title = "Study Topics"
        
        // Set Large title if software is up to date
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = true
        } else {
            // Fallback on earlier versions
        }
        
        // This is necessary to create cells in table view [NOT SURE WHY]
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    // MARK: Setup the table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of cells you wish to create
        return studyTopics.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Action when row is Selected.
        if indexPath.row == 0 {
            let newViewController = CollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
            self.navigationController?.pushViewController(newViewController, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create Cells one by one using this as a blueprint.
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CustomTableViewCell
        
        // Set the cell label text
        cell.label.text = studyTopics[indexPath.row]
        
        // Push your cell to the table view
        return cell
    }
    
    
    
    
}
