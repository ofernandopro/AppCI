//
//  ViewController.swift
//  AppCI
//
//  Created by Fernando on 19/04/23.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    var number = 8
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDesign()
    }
    
    func setupDesign() {
        numberLabel.text = String(setNumber())
    }
    
    func setNumber() -> Int {
        self.number * 3
    }

}
