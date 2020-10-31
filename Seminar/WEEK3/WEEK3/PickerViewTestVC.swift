//
//  PickerViewTestVC.swift
//  WEEK3
//
//  Created by 박세란 on 2020/10/31.
//

import UIKit

class PickerViewTestVC: UIViewController {

    // MARK: - IBO
    @IBOutlet weak var partImageView: UIImageView!
    @IBOutlet weak var partNameLabel: UILabel!
    @IBOutlet weak var partPickerView: UIPickerView!
    
    // MARK: - Properties
    // Part 정보를 저장할 배열
    var parts: [Part] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPartData()
        partPickerView.dataSource = self
        partPickerView.delegate = self

        // Do any additional setup after loading the view.
    }
    

    

    // MARK: - Method
    
    // 초기 파트를 지정해주는 메소드
    func initLayout() {
        let initPart = parts[0]
        partImageView.image = initPart.makeImage()
        partNameLabel.text = initPart.partName
    }
    
    //parts라는 배열을 초기화
    //초기 파트를 지정해주는 메소드
    func setPartData(){
        parts.append(contentsOf: [
            Part(imageName: "plan", partName: "Plan"),
            Part(imageName: "design", partName: "Design"),
            Part(imageName: "server", partName: "Server"),
            Part(imageName: "ios", partName: "iOS"),
            Part(imageName: "android", partName: "Android"),
            Part(imageName: "web", partName: "Web")
        ])
    }
}

//UIPickerViewDataSource라는 프로토콜을 사용한다
extension PickerViewTestVC: UIPickerViewDataSource {
    //해당 프로토콜을 사용하기 위해선 아래의 메서드를 implement 해야함
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //pickerview에서 열의 개수 (선택할 종류를 하나로 설정: 파트만 선택하므로)
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //pickerview에서의 선지 개수 (선지를 parts.count 개수로 설정: 파트 종류 개수만큼의 선지 필요)
        return parts.count
    }
    
    
}

extension PickerViewTestVC: UIPickerViewDelegate {
    
    // PickerView의 각 행(row)의 title을 리턴해주는 메소드 (string)
    func pickerView(_ pickerView: UIPickerView,titleForRow row: Int, forComponent component: Int) -> String? {
        return parts[row].partName
    }
    
    // PickerView에서 행(row)를 선택했을 때 수행할 동작을 지정해 주는 메소드 (void)
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        //row는 picerview에서 선택된 항목의 인덱스(이 함수의 매개변수)인데,
        //따라서 parts[row]는 사용자가 선택한 선지가 됨 !
        let selectPart = parts[row]
        
        //각 IBO의 값들을 초기화 시켜주는 곳
        self.partImageView.image = selectPart.makeImage()
        self.partNameLabel.text = selectPart.partName
    }
    
}
