//
//  profitjeanVC.swift
//  WEEK4
//
//  Created by 박세란 on 2020/11/07.
//

import UIKit

class profitjeanVC: UIViewController {
    @IBOutlet weak var rabbitImageView: UIImageView!
    @IBOutlet weak var rabbitImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpStart(_ sender: Any) {
        Anim(rabbitImageView, 0)
        //        Anim(rabbitImageView2, 10)
        
    }
    
    
    
    
    func Anim(_ sender : UIImageView, _ differ : Int) {
        let scale = CGAffineTransform(scaleX: 2.0, y: 2.0)
        let rotate = CGAffineTransform(rotationAngle: .pi / 4)
        let move = CGAffineTransform(translationX: 200, y: 200)
        
        let combine = scale.concatenating(move).concatenating(rotate)
        
        UIView.animate(withDuration: 1.0, delay: 1.0, animations: {
            sender.transform = combine
        }){finished in
            UIView.animate(withDuration: 1.0) {
                sender.transform = .identity }
        }
        
        
        
        //        UIView.animate(withDuration: 2.0, animations: {
        //            self.rabbitImageView.alpha = 0
        //        })
        //        UIView.animate(withDuration: 3.0, animations: {
        //            sender.frame = CGRect(x: 0, y: 0, width: -200, height: -300)
        //            sender.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        //
        //            sender.alpha = 0
        //        }) {finished in
        //            sender.alpha = 1
        //            sender.frame = CGRect(x: 70+differ, y: 116+differ, width: 240 + differ, height: 240 + differ)
        
        
        
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
