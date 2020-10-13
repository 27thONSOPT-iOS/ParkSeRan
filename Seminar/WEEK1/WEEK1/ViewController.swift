//
//  ViewController.swift
//  WEEK1
//
//  Created by 박세란 on 2020/10/13.
//

import UIKit

class ViewController: UIViewController {
    // MARK:- PROPERTIES
    
    
    // MARK:- IBO
    @IBOutlet weak var sayHelloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK:- IBA
    
    @IBAction func touchUpClick(_ sender: Any) {
        sayHelloLabel.text = "Hello ON SOPT!"
        
        // label의 크기를 글자에 맞게 변경해주는 메서드
        sayHelloLabel.sizeToFit()
    }
    
    //modal present - dismiss
    @IBAction func touchUpPresent(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "BlueViewController") else {
            return
        }
        self.present(dvc, animated: true, completion: nil)
    }
    
    @IBAction func touchUpPush(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "SkyViewController") else {
            return
        }
        self.navigationController?.pushViewController(dvc, animated: true)
        
    }
    // MARK:- METHOD
    
}

