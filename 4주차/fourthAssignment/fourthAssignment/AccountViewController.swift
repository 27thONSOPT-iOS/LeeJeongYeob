//
//  AccountViewController.swift
//  fourthAssignment
//
//  Created by 이정엽 on 2020/11/10.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var partLabel: UILabel!
    
    var part: String?
    var name : String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setLabel()
    }
    
    func setLabel(){
        guard let name = self.name, let part = self.part else{
            return
        }
        print(name)
        print(part)
        nameLabel.text = name
        partLabel.text = part
    }

    @IBAction func loginBtn(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "LoginViewController")else{
            return
        }
        vc.modalPresentationStyle = .fullScreen
        self.present(vc,animated:true,completion: nil)
        
    }

}
