//
//  CollectionViewCell.swift
//  WEEK3
//
//  Created by 박세란 on 2020/11/06.
//

import UIKit

class SoptCell: UICollectionViewCell {
    //
    @IBOutlet weak var soptImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hashtagLabel: UILabel!
    
    static let identifier = "SoptCell"
    
    
    func setImage(imageName: String) {
    soptImageView.image = UIImage(named: imageName) }
    
    
    func setNameLabel(Name: String) {
        nameLabel.text = Name }
    
    
    func setHashTagLabel(Name: String) {
        nameLabel.text = Name }
}
