//
//  ViewController.swift
//  MyAlert
//
//  Created by 김은지 on 2021/03/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Hello", message: "My First App~!", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil) // handler: nil은 아무것도 실행하지 않고 꺼지도록 설정.
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil) // 팝업을 띄우는 코드.
    }
    
    @IBAction func challenge(_ sender: Any) {
        let alert = UIAlertController(title: "도전!", message: "도~~전!", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil) // 팝업을 띄우는 코드.
    }

}

