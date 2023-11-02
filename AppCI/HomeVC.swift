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
    var name = "Continuous"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setNumber() -> Int {
        self.number * 3
    }
    
    func getNameSize() -> Int {
        self.name.count
    }

}
