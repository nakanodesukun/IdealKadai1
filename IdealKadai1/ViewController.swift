//
//  ViewController.swift
//  IdealKadai1
//
//  Created by 中野翔太 on 2022/01/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textField3: UITextField!
    @IBOutlet private weak var textField4: UITextField!
    @IBOutlet private weak var textField5: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!


    @IBAction func addButton(_ sender: Any) {
//        let text1 = Int(textField1.text ?? "") ?? 0
//        let text2 = Int(textField2.text ?? "") ?? 0
//        let text3 = Int(textField3.text ?? "") ?? 0
//        let text4 = Int(textField4.text ?? "") ?? 0
//        let text5 = Int(textField5.text ?? "") ?? 0
//        let total = text1 + text2 + text3 + text4 + text5
//        resultLabel.text = String(total)

//        .mapとreduceを使って書くと
        let textFields: [UITextField] = [
            textField1,
            textField2,
            textField3,
            textField4,
            textField5
        ]
        let total = textFields
            .map { $0.text! } //.map{ $0.text ?? "" }でもできる
            .map { Int($0)} //.map{ Int($0) ?? 0 }も可能
            .map { $0 ?? 0 }//何番目かの値がnilだったら0にする。
            .reduce(0, +)
        resultLabel.text = String(total)
    }


}
