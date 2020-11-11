//
//  CustomTabBarController.swift
//  fourthAssignment
//
//  Created by 이정엽 on 2020/11/10.
//

import UIKit

class CustomTabBarController: UITabBarController {
//    guard let accountVC = self.storyboard?.instantiateViewController(identifier: "AccountViewController") as? AccountViewController
//    guard let scrollVC = self.storyboard?.instantiateViewController(identifier: "ScrollViewController") as? ScrollViewController
    
    var name: String?
    var part: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()

        // Do any additional setup after loading the view.
    }
    func setTabBar() {
        guard let accountVC = self.storyboard?.instantiateViewController(identifier: "AccountViewController") as? AccountViewController, let collectionVC = self.storyboard?.instantiateViewController(identifier: "CollectionViewController") as? CollectionViewController else {
            return
        }
        accountVC.tabBarItem.title = "Account"
        accountVC.tabBarItem.image = UIImage(systemName: "person")
        
        
        
        
        collectionVC.tabBarItem.title = "Scroll"
        collectionVC.tabBarItem.image = UIImage(systemName: "house")
        
        setViewControllers([accountVC, collectionVC], animated: true)
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
