//
//  SignUpViewController.swift
//  WEEK1
//
//  Created by 박세란 on 2020/10/14.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        navigationItem.title = "Sign Up"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: IBA
    @IBAction func touchUpSignUp(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
