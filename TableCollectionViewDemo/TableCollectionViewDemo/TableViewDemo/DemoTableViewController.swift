//
//  DemoTableViewController.swift
//  TableCollectionViewDemo
//
//  Created by Consultant on 11/1/22.
//

import UIKit

class DemoTableViewController: UIViewController {
    
    @IBAction func topbutton(_ sender: Any) {self.performSegue(withIdentifier: "DetailSegue", sender: self)
    }
    @IBOutlet weak var demoTableView: UITableView!
    
    
    
    var data : [String] = ["Aphelios" , "AurelionSol",  "Bard", "Braum","gnar"]
    var img : [String] =  ["Aphelios" , "AurelionSol","Bard", "Braum","Gnar"]
    var Name : [String] = ["Aphelios" , "AurelionSol","Bard", "Braum","Gnar"]
    var index : Int?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let detail = segue.destination as?  DetailViewController
          
        detail?.nameString = Name[index ?? 0]
//            detail?.delegate = self
        }

         
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.title = "Galery"
        
        // Do any additional setup after loading the view.
    }
    
    
    func setupUI (){
        self.demoTableView.delegate = self
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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        guard let cell   =   tableView.dequeueReusableCell(withIdentifier: "DemoXIBTableViewCell", for: indexPath) as? DemoXIBTableViewCell  else {
            return UITableViewCell()
        }
        //            cell.textLabel?.text = self.data[indexPath.row ]
        
        cell.demoImage.image = UIImage(named: self.img[indexPath.row % 5])
        cell.nameLabel.text = self.data[indexPath.row]
        
        return cell
    }
    
    
    
  
    
    
    
    
}
extension DemoTableViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("The selected path is \(indexPath)")
        self.performSegue(withIdentifier: "DetailSegue", sender: self)
        
        index = indexPath[1]
        
   }
    
}
