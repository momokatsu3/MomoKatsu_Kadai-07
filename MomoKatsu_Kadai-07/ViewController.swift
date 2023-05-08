//
//  ViewController.swift
//  MomoKatsu_Kadai-07
//
//  Created by モモカツ on 2023/05/06.
//  Part7 足し算と引き算を行うタブアプリ
// 【Swift/Xcode】UITabBarControllerの実装方法・コンプリートガイド
// https://ios-docs.dev/uitabbar/
// Text Fieldで数値と小数点のみのキーボードを表示
// https://swiftintroduction.hatenablog.com/entry/2020/04/20/211059
// 【Swift】TextFieldのキーボードを閉じる方法3選
// https://qiita.com/saka2jp/items/4b8b5f2297910d7f3d1b

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class AdditionViewController: UIViewController {
    // テキストフィールドを設定
     @IBOutlet weak var textField1: UITextField!
     @IBOutlet weak var textField2: UITextField!
     // 計算結果表示用のラベルを設定
     @IBOutlet weak var calcResultLabel: UILabel!

    // 計算開始ボタンのクリックにより、足し算しラベルに計算結果を表示する。
    @IBAction func calcStartdButton(_ sender: Any) {
        view.endEditing( true )     // キーボードを隠す
        // テキストフィールドへ文字入力した場合、"０"とする。
        let value1 = Int(textField1.text ?? "") ?? 0
        let value2 = Int(textField2.text ?? "") ?? 0
//        let calcResult = value1 + value2
//        calcResultLabel.text = "計算結果：" + String( calcResult )
        calcResultLabel.text = "計算結果：" + String( value1 + value2 )
     }
}

class SubtractionViewController: UIViewController {
    // テキストフィールドを設定
     @IBOutlet weak var textField1: UITextField!
     @IBOutlet weak var textField2: UITextField!
     // 計算結果表示用のラベルを設定
     @IBOutlet weak var calcResultLabel: UILabel!

    // 計算開始ボタンのクリックにより、引き算しラベルに計算結果を表示する。
    @IBAction func calcStartdButton(_ sender: Any) {
        view.endEditing( true )     // キーボードを隠す
        // テキストフィールドへ文字入力した場合、"０"とする。
        let value1 = Int(textField1.text ?? "") ?? 0
        let value2 = Int(textField2.text ?? "") ?? 0
//        let calcResult = value1 - value2
//        calcResultLabel.text = "計算結果：" + String( calcResult )
        calcResultLabel.text = "計算結果：" + String( value1 - value2 )
     }
}
