//
//  LoginViewController.swift
//  WEEK1
//
//  Created by 박세란 on 2020/10/14.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: IBA
    
    @IBAction func touchUpLogin(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func touchUpSignUpMove(_ sender: UIButton) {
        guard let dvc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") else {
            return
        }
        
        self.navigationController?.pushViewController(dvc, animated: true)
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
