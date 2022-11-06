//
//  DetailViewController.swift
//  TableCollectionViewDemo
//
//  Created by Consultant on 11/5/22.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var bigImage: UIImageView!
   
    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var DetailTableview: UITableView!
    var nameString : String? = "0"
    var imgString : String?
    
    override func viewDidLoad() {

        super.viewDidLoad()
        Name.text = nameString
        
//        self.Name.text = self.nameString
        self.bigImage.image   = UIImage(named : nameString ?? "Gnar")
//       bigImage.image = UIImage(named : "Gnar")
        
    }
    
  
  
   
}
