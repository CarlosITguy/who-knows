//
//  DemoTableViewController.swift
//  TableCollectionViewDemo
//
//  Created by Consultant on 11/1/22.
//

import UIKit

class DemoTableViewController: UIViewController {
    
    @IBOutlet weak var demoTableView: UITableView!
    
    var data : [String] = ["Aphelios" , "AurelionSol",  "Bard", "Braum","gnar"]
    var img : [String] =  ["Aphelios" , "AurelionSol","Bard", "Braum","Gnar"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        // Do any additional setup after loading the view.
    }
    
    
    func setupUI (){
        
        self.demoTableView.dataSource = self
        self.demoTableView.register(UINib(nibName: "DemoXIBTableViewCell", bundle: nil), forCellReuseIdentifier: "DemoXIBTableViewCell")
    }
    
}

// Te extenssion will ad some info over the new clas made in this code

extension DemoTableViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        self.data.count
        
    }
    //    if section == 0{
    //            return 5
    //                }
    //        else {
    //            return 20
    //BE CAReFull whit this close
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        guard let cell   =   tableView.dequeueReusableCell(withIdentifier: "DemoXIBTableViewCell", for: indexPath) as? DemoXIBTableViewCell  else {
            return UITableViewCell()
        }
        //            cell.textLabel?.text = self.data[indexPath.row ]
        
        cell.demoImage.image = UIImage(named: self.img[indexPath.row % 5])
        cell.nameLabel.text = self.data[indexPath.row]
        
        return cell
        
//        print("this part is to print in console\(indexPath)")
//        AFTER THIS POINT THE IS OK
//        guard let cell   =   tableView.dequeueReusableCell(withIdentifier: "DemoTableCell", for: indexPath) as? DemoStoryBoardViewController  else {
//            return UITableViewCell()
//        }
//        //            cell.textLabel?.text = self.data[indexPath.row ]
//
//        cell.DemoImage.image = UIImage(named: self.img[indexPath.row % 5])
//        cell .bottomlabel.text = self.data[indexPath.row]
//
//        return cell
    }
    
    
    
    //    func demoFunc(with str : String){
    //
    //    }
    
    
    
    
    
}
