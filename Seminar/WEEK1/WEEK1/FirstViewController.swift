//
//  FirstViewController.swift
//  WEEK1
//
//  Created by 박세란 on 2020/10/13.
//

import UIKit

class FirstViewController: UIViewController {
    // MARK: IBO
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var updateStateLabel: UILabel!
    
    @IBOutlet weak var updateIntervalLabel: UILabel!
    
    @IBOutlet weak var updateStateSwitch: UISwitch!
    
    @IBOutlet weak var updateIntervalStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: IBA
    @IBAction func valueChagedSwitch(_ sender: UISwitch) {
        
        if sender.isOn{
            self.updateStateLabel.text = "자동 갱신"
        }else{
            self.updateStateLabel.text = "수동 갱신"
        }
    }
    @IBAction func valueChangedStepper(_ sender: UIStepper) {
        updateIntervalLabel.text = "\(Int(sender.value)) 분 마다"
    }
    
    @IBAction func touchUpSubmit(_ sender: UIButton) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "SecondViewController")
                // as? 는 타입캐스팅이다. (다운 캐스팅 : 부모를 자식으로 타입 캐스팅)
                // 정리하자면, 단순히 화면 넘겨줄 때와는 달리,
                // 넘겨줄뷰컨의 프로파티에 접근해서 값까지 넘겨주기 위해서 UIVIewcontroller를 SecondViewController으로 타입캐스팅 해주었다!
                as? SecondViewController else {
            return
        }
        
        //first -> second 값을 전달해줌
        //특히 second에서 선언한 properties에 직접 값을 넣어줌
        dvc.email = self.emailTextField.text
        dvc.isAutoUpdate = self.updateStateSwitch.isOn
        dvc.updateInterval = Int(self.updateIntervalStepper.value)
        
        //modal 스타일을 코드로 변경 -> GUI로 바꿀 수도 있다!
        dvc.modalPresentationStyle = .fullScreen

        
        // SecondViewController가 UIVIewcontroller의 자식이므로, 자동 변환? 업 캐스팅? 된 걸까나
        self.present(dvc, animated: true, completion: nil)
    }
    
}
