//
//  SOPTINCell.swift
//  WEEK4
//
//  Created by 박세란 on 2020/11/13.
//

import UIKit

class SOPTINCell: UICollectionViewCell {
    // MARK :: IBO
    @IBOutlet weak var soptImageView: UIImageView!
    @IBOutlet weak var hashTagUILabel: UILabel!
    @IBOutlet weak var nameUILabel: UILabel!
    static let identifier = "SOPTINCell"
    
    
    
    
    func setImage(imageName: String) {
    soptImageView.image = UIImage(named: imageName) }
    
    func setNameLabel(Name :String){
        nameUILabel.text = Name
    }
    
    func setHashTageLabel(HashTag : String){
        hashTagUILabel.text = HashTag
    }

}
