//
//  ViewController.swift
//  week2Assignment
//
//  Created by 이정엽 on 2020/10/29.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var profileButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        profileButton.layer.cornerRadius = 5;
        
    }
    override func viewWillAppear(_ animated: Bool) {
    }


}

