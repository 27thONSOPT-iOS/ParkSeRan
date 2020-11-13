//
//  Music.swift
//  WEEK3
//
//  Created by 박세란 on 2020/10/31.
//

import Foundation
import UIKit

struct Music {
    var title: String
    var singer: String
    var albumImageName: String
    
    func makeAlbumImage() -> UIImage? {
        return UIImage(named: albumImageName)
    }
}
