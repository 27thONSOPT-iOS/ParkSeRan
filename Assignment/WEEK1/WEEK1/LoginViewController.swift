//
//  LoginViewController.swift
//  WEEK1
//
//  Created by 박세란 on 2020/10/14.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: IBO
    @IBOutlet weak var partTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: IBA
    
    @IBAction func touchUpLogin(_ sender: UIButton) {
//        guard let dvc = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") as? MainViewController else {
//            return
//        }
        // 3.presentingViewController 사용
        //presentingViewController를 사용해서 무언가를 하나보다. -> 더 공부해야한다. 일단 집간다.
        guard let dvc = self.presentingViewController as? MainViewController else {
            return
        }
        
        dvc.part = self.partTextField.text
        dvc.hi = self.nameTextField.text
        
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
//        self.dismiss(animated: true, completion: nil)
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
