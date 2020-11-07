//
//  CustomTabBarVC.swift
//  WEEK4
//
//  Created by 박세란 on 2020/11/07.
//

import UIKit

class CustomTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabs()
        // 아이콘 색상 변경
        UITabBar.appearance().tintColor = UIColor.green
        // Do any additional setup after loading the view.
    }
    
    func setTabs() {
        
        
        
        guard let greenVC =
                self.storyboard?.instantiateViewController(identifier: "GreenVC") as? GreenVC,
              let whiteVC =
                self.storyboard?.instantiateViewController(identifier: "WhiteVC") as? WhiteVC
        else{
            return
        }
        
        greenVC.tabBarItem.title = "HOME"
        greenVC.tabBarItem.image = UIImage(systemName: "house")
        // 안먹음
//        greenVC.tabBarItem.image = UIImage(systemName: "house")?.withTintColor(UIColor.green)
        greenVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        whiteVC.tabBarItem.title = "PROFILE"
        whiteVC.tabBarItem.image = UIImage(systemName: "person")
        whiteVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")

        setViewControllers([greenVC, whiteVC], animated: true)
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
