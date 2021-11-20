//
//  PositiveViewController.swift
//  HIROAKIKadai7
//
//  Created by HiroakiSaito on 2021/11/20.
//

import UIKit

class PositiveViewController: UIViewController {
    @IBOutlet private weak var num1TextField: UITextField!
    @IBOutlet private weak var num2TextField: UITextField!
    @IBOutlet private weak var positiveTotalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        num1TextField.keyboardType = .numberPad
        num2TextField.keyboardType = .numberPad
    }

    @IBAction private func positivecalcButton(_ sender: Any) {
        let num1 = Int(num1TextField.text ?? "") ?? 0
        let num2 = Int(num2TextField.text ?? "") ?? 0

        positiveTotalLabel.text = String(num1 + num2)

        num1TextField.endEditing(true)
        num2TextField.endEditing(true)
    }
}
