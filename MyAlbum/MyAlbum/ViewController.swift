//
//  ViewController.swift
//  MyAlbum
//
//  Created by 김은지 on 2021/03/19.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }

    @IBAction func refresh(_ sender: Any) {
        let message = "가격은 \(currentValue) 입니다."
        let alert = UIAlertController(title: "refresh", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil) // 팝업을 띄우는 코드.
        
        refresh()
    }
    
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1 // arc4random_uniform()는 0부터 ()안에 있는 숫자 전까지 랜덤 수를 추출한다. 즉 0~9999 중 랜덤값 추출. +1을 해서 1~10000 값 중에서 나오도록 설정.
        priceLabel.text = "₩\(currentValue)"
        currentValue = Int(randomPrice)
    }
}


