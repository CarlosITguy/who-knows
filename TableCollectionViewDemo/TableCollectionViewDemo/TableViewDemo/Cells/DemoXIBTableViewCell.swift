//
//  DemoXIBTableViewCell.swift
//  TableCollectionViewDemo
//
//  Created by Consultant on 11/4/22.
//

import UIKit

class DemoXIBTableViewCell: UITableViewCell {

    @IBOutlet weak var demoImage: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    @IBAction func SlideBar(_ sender: UISlider) {
        
//        restart.setTitle.text("power \(Int(sender.value * 1000))", for: )
    }
    @IBAction func restart(_ sender: Any) {
        
        
    }
}
