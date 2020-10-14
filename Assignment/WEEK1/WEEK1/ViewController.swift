//
//  ViewController.swift
//  WEEK1
//
//  Created by 박세란 on 2020/10/13.
//

import UIKit

class ViewController: UIViewController {
    // MARK: IBO
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    // MARK: IBA
    @IBAction func touchUpLoginMove(_ sender: UIButton) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "NavigationController") else {
            return
        }
        dvc.modalPresentationStyle = .fullScreen
        self.present(dvc, animated: true, completion: nil)
    }
    
}

