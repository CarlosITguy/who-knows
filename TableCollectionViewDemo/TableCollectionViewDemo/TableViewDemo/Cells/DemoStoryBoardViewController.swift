//
//  DemoStoryBoardViewController.swift
//  TableCollectionViewDemo
//
//  Created by Consultant on 11/3/22.
//
// THIS IS DOCUMENT NUMBER 2

import UIKit

class DemoStoryBoardViewController: UITableViewCell {

    @IBOutlet weak var DemoButton: UIButton!
    @IBOutlet weak var DemoImage: UIImageView!

        @IBOutlet weak var topLabel: UILabel!
        @IBOutlet weak var bottomlabel: UILabel!

    @IBAction func Slider(_ sender: UISlider) {
//        self.DemoButton.titleLabel = "\(Int(sender.value * 1000))"
        DemoButton.setTitle("power \(Int(sender.value * 1000))", for: .normal)
    }



}
