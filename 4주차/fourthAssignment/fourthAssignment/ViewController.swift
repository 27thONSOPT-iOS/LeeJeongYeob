//
//  ViewController.swift
//  fourthAssignment
//
//  Created by 이정엽 on 2020/11/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "tempViewController")else{
            return
        }
        
        
        
        vc.modalPresentationStyle = .fullScreen
        self.present(vc,animated:true,completion: nil)
    }
    
}

