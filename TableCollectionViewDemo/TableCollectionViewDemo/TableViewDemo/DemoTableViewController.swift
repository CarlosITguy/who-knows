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
    
    
    
    var data : [String] = ["Aphelios" , "AurelionSol","Bard", "Braum","Daeja" , "Diana" ,"Ezreal","Gnar", "Graves", "Hecarim", "Heimerdinger","Jax", "Jayce", "Kaisa", "Karma" , "LeeSin", "Leona", "Lillia", "Lulu", "Lux", "Malphite", "Nasus", "Nidalee", "Nilah", "Nomsy" ,"Nunu", "Olaf", "Pantheon","Sylas"]
    var img : [String] =  ["Aphelios" , "AurelionSol","Bard", "Braum","Daeja" , "Diana" ,"Ezreal","Gnar", "Graves", "Hecarim", "Heimerdinger","Jax", "Jayce", "Kaisa", "Karma" , "LeeSin", "Leona", "Lillia", "Lulu", "Lux", "Malphite", "Nasus", "Nidalee", "Nilah", "Nomsy" ,"Nunu", "Olaf", "Pantheon","Sylas"]
    var SendName : String? = ""
    var sendIndex : Int? = 0
    
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.title = "Galery"
        

    }

    func setupUI (){
        self.demoTableView.delegate = self
        self.demoTableView.dataSource = self
        self.demoTableView.register(UINib(nibName: "DemoXIBTableViewCell", bundle: nil), forCellReuseIdentifier: "DemoXIBTableViewCell")

    }
    
}

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

        cell.demoImage.image = UIImage(named: self.img[indexPath.row % img.count])
        cell.nameLabel.text = self.data[indexPath.row]
        
        return cell
    }
    
    
    
}
extension DemoTableViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.SendName = data[indexPath.row]

        print("The selected path is \(indexPath)")
//        self.performSegue(withIdentifier: "DetailSegue", sender: self)
//        let vc = DetailViewController()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "DetailTableViewcotroller") as? DetailViewController else { return }
        vc.nameString = SendName
        self.navigationController?.pushViewController(vc, animated: true)


    }
    override func  prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let info = segue.destination as! DetailViewController
        info.nameString = SendName
    }
}
