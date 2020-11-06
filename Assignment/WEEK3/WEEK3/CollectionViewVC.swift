//
//  CollectionViewVC.swift
//  WEEK3
//
//  Created by 박세란 on 2020/11/06.
//

import UIKit

class CollectionViewVC: UIViewController {
    
    
    @IBOutlet weak var soptCollectionView: UICollectionView!
    
    let image: [String] = ["juhyeok","nayeon","peace","heesoo","saeeun","wool","hansol","minju","younghun","minguru","yeonjeong","junyeop"]
    let name: [String] = ["이주혁","김나연","손평화","유희수","박세은","한울","김한솔","배민주","최영훈","강민구","이정연","홍준엽"]
    let hashtag: [String] = ["#hereis#아요#내꿈은#사과농장#ENFP","#이제막학기#여러분들이랑_친해지고_싶어요#번개스터디환영","#핸드피쓰 #이너피쓰 #배꼽도둑 #헬린이 #sson_peace7","#총무꿈나무 #유총무 #현재_소식중 #풉","#마 #아요는 #처음입니다","#ENFP #STORM #울크박스 #@hwooolll #하늘콜렉터","#고객중심#고객행동데이터기반한#UX디자이너#워너비,,","#디팟장 #개자이너 #최종목표는행복","#서팟짱 #솝트3회차 #앱잼_요리_개발자 #UX/UI","#밍맹 #안팟장 #이래뵈도_귀여운거좋아함 #지박령 #허당","#플레이스픽 #ENFJ #기획_디자인_개발_다","#26기서버 #27기웹 #샵이_두개면_어떻게될까? ##"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        soptCollectionView.delegate = self
        soptCollectionView.dataSource = self

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

}

extension CollectionViewVC : UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let soptCell = collectionView.dequeueReusableCell(withReuseIdentifier: SoptCell.identifier, for: indexPath) as? SoptCell else { return UICollectionViewCell() }
        soptCell.setImage(imageName: image[indexPath.row])
        soptCell.setNameLabel(Name: name[indexPath.row])
        soptCell.setHashTagLabel(Name: hashtag[indexPath.row])
    
        return soptCell
    }
}


extension CollectionViewVC : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                            UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize { return CGSize(width: collectionView.frame.width,
                                                                                                                  height: collectionView.frame.height)}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0 }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) }
    
}
