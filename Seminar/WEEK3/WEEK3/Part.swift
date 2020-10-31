//
//  Part.swift
//  WEEK3
//
//  Created by 박세란 on 2020/10/31.
//

import Foundation
import UIKit

struct Part{
    var imageName:String
    var partName: String
    
    func makeImage() -> UIImage?{
        
        return UIImage(named: imageName)
    }
    
}
