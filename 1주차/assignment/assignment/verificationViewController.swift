//
//  verificationViewController.swift
//  assignment
//
//  Created by 이정엽 on 2020/10/11.
//

import UIKit

class verificationViewController: UIViewController {

    
    @IBOutlet var partField: UITextField!
    @IBOutlet var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func loginBtn(_ sender: Any) {
        let vc = self.presentingViewController
        guard let dvc = vc as? ViewController else {
                    return
                }
        dvc.tempPart = partField.text
        dvc.tempName = nameField.text
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signupPageBtn(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "signupViewController") else {
            return
        }
        self.navigationController?.pushViewController(dvc, animated: true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
