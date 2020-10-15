//
//  ViewController.swift
//  WEEK1
//
//  Created by 박세란 on 2020/10/13.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: PROPERTIES
    var part: String? 
    var hi: String?
    
    // MARK: IBO
    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var hiLabel: UILabel!
    
    //1. viewWillAppear 사용
    // 이전 화면으로 값을 전달하는 경우에는 생명주기를 잘 고려해야한다.
    // 기존에 setLabel을 넣어주었던 곳은 viewDidLoad인데, 이는 최초 실행시 한 번한 호출된다고 한다.
    // 따라서 최초 실행 이후에도 변화된 부분을 반영해주려면, 해당 메서드안에 setLabel을 넣어주어야 제대로 동작한다.
    override func viewWillAppear(_ animated: Bool) {
        setLabel()
        super.viewWillAppear(true)
    }
    
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
    
    
    // MARK: METHOD
    func setLabel(){
        //2. viewWillAppear에 setLabel을 넣고 시도를 하는데, 자꾸 nil이 찍혔다.
        // 값 전달에서 문제가 있는 것이므로, 값을 넘겨주는 부분을 수정하였다.
//        print(self.hi)
        if let tmpPart = self.part, let tmpHi = self.hi{
            
            self.partLabel.text = tmpPart
            self.hiLabel.text = tmpHi + "님 안녕하세요:)"
        }
        
    }
}


