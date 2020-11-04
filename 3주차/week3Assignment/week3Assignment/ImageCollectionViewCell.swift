//
//  ImageCollectionViewCell.swift
//  week3Assignment
//
//  Created by 이정엽 on 2020/11/03.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    static let identifier = "ImageCollectionViewCell"
    
    @IBOutlet var idImageView: UIImageView!
    
    func setImage(imageName: String){
        idImageView.image = UIImage(named: imageName)
    }
}
