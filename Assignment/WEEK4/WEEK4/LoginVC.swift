//
//  LoginVC.swift
//  WEEK4
//
//  Created by 박세란 on 2020/11/13.
//

import UIKit

class LoginVC: UIViewController {
    // MARK :: @IBO
    @IBOutlet weak var loginImageViewConstTop: NSLayoutConstraint!
    @IBOutlet weak var partTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var loginUIButton: UIButton!
    
    
    // MARK : LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        partTextField.delegate = self
        nameTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyBoard))
               
               view.addGestureRecognizer(tap)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name:UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name:UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    // MARK :: @IBA
    
    @IBAction func touchUpLogin(_ sender: Any) {
        
        self.dismiss(animated:true,completion: nil)
    }
    
    
    // MARK :: method
    @objc func keyboardWillShow(notification : Notification){
        UIView.animate(withDuration: 0.5) {
            self.loginImageViewConstTop.constant = 50
            self.view.layoutIfNeeded()
        }
    }
    
    
    @objc func keyboardWillHide(notification: Notification){
        
        
        UIView.animate(withDuration: 0.5) {
            self.loginImageViewConstTop.constant = 200
            self.view.layoutIfNeeded()
            
        }
    
        
    }
    @objc func dismissKeyBoard(){
        self.view.endEditing(true)
    }

}

// MARK :: extension
extension LoginVC: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()

        if textField == self.partTextField {
            self.nameTextField.becomeFirstResponder()
        } else{
            self.nameTextField.resignFirstResponder()
            touchUpLogin(loginUIButton.self)
        }
        return true
    }
}
