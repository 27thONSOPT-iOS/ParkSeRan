//
//  SOPTWorkingVC.swift
//  WEEK4
//
//  Created by 박세란 on 2020/11/13.
//

import UIKit

class SOPTWorkingVC: UIViewController {
    
    @IBOutlet weak var soptCollectionView: UICollectionView!
    
    let image: [String] = ["juhyeok","nayeon","peace","heesoo","saeeun","wool","hansol","minju","younghun","minguru","yeonjeong","junyeop"]
    let name: [String] = ["이주혁","김나연","손평화","유희수","박세은","한울","김한솔","배민주","최영훈","강민구","이정연","홍준엽"]
    let hashtag: [String] = ["#hereis#아요#내꿈은#사과농장#ENFP","#이제막학기#여러분들이랑_친해지고_싶어요#번개스터디환영","#핸드피쓰 #이너피쓰 #배꼽도둑 #헬린이 #sson_peace7","#총무꿈나무 #유총무 #현재_소식중 #풉","#마 #아요는 #처음입니다","#ENFP #STORM #울크박스 #@hwooolll #하늘콜렉터","#고객중심#고객행동데이터기반한#UX디자이너#워너비,,","#디팟장 #개자이너 #최종목표는행복","#서팟짱 #솝트3회차 #앱잼_요리_개발자 #UX/UI","#밍맹 #안팟장 #이래뵈도_귀여운거좋아함 #지박령 #허당","#플레이스픽 #ENFJ #기획_디자인_개발_다","#26기서버 #27기웹 #샵이_두개면_어떻게될까? ##"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        soptCollectionView.dataSource = self
        soptCollectionView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
}

extension SOPTWorkingVC : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let soptInCell = collectionView.dequeueReusableCell(withReuseIdentifier: SOPTINCell.identifier, for: indexPath) as? SOPTINCell else{
            return UICollectionViewCell()
        }
        
        soptInCell.setImage(imageName: image[indexPath.row])
        soptInCell.setNameLabel(Name: name[indexPath.row])
        soptInCell.setHashTageLabel(HashTag: hashtag[indexPath.row])
        
        
        return soptInCell
    }
    
    
    // collectionview heaeder 사용
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView{
        
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "soptBanner", for: indexPath)
            return headerView
        default:
            assert(false, "응 아니야")
            
        }
        
       
        
    }
    
    
    
    
}

extension SOPTWorkingVC: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
       
        return UIEdgeInsets(top: 30, left: 24, bottom: 30, right: 24)
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 15
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        var margin =
//        if(section % 2 == 0){
//            margin = CGFloat(top: 15, left: 10, bottom: 0, right: 20)
//        }else{
//            margin = CGFloat(top: 15, left: 20, bottom: 0, right: 10)
//        }
        return 27
    }
    
}
