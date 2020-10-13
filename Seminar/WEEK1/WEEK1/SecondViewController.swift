//
//  SecondViewController.swift
//  WEEK1
//
//  Created by 박세란 on 2020/10/13.
//

import UIKit

class SecondViewController: UIViewController {
    // MARK: PROPERTIES
    var email: String?
    var isAutoUpdate: Bool?
    var updateInterval: Int?

    // MARK: IBO
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var updateStateLabel: UILabel!
    @IBOutlet weak var updateIntervalLabel: UILabel!
    
    
    override func viewDidLoad() {
        setLabel()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: IBA
    @IBAction func touchUpBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: METHOD
    
    //FirstViewController 에서 사용자가 입력한 값을 넘겨받아서 화면의 Label에 설정하는 함수
    func setLabel(){
        //옵셔널 바인딩
        //모든 프로퍼티 값이 nil이 아니어서, 잘 대입 되었다면,
        if let email = self.email,
           let isAutoUpdate = self.isAutoUpdate,
           let updateInterval = self.updateInterval{
            
            //label에 값을 대입
            self.emailLabel.text = email
            self.emailLabel.sizeToFit()
            
            self.updateStateLabel.text = isAutoUpdate ? "ON" : "OFF"
            
            self.updateIntervalLabel.text = "\(updateInterval)분"
        }
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
