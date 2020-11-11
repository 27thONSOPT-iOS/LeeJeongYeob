//
//  ProfileCollectionViewCell.swift
//  fourthAssignment
//
//  Created by 이정엽 on 2020/11/12.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "ProfileCollectionViewCell"
    
    @IBOutlet var profileImage: UIImageView!
    
    func setImage(imageName: String) {
        profileImage.image = UIImage(named: imageName)
    }
    
}
