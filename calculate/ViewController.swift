//
//  ViewController.swift
//  calculate
//
//  Created by eric on 2021/1/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var number2TextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
   
    
//收鍵盤
    func addTapGesture(){
        let tap = UITapGestureRecognizer(target: self,action: #selector(hideKeyboard))
        view.addGestureRecognizer(tap)
    }
    @objc private func hideKeyboard(){
        self.view.endEditing(true)
    }
   
   //計算
    func update(){
        let num1 = Int(numberTextField.text!) ?? 0
        let num2 = Int(number2TextField.text!) ?? 0
        
         
        switch calculate {
        case 0:
            resultLabel.text = "\(num1 + num2)"
        case 1:
            resultLabel.text = "\(num1 - num2)"
        case 2:
            resultLabel.text = "\(num1 * num2)"
        case 3:
            resultLabel.text = "\(num1 / num2)"
        default:
            break
        }
    }

    //修改後立即更新答案
    @IBAction func update(_ sender: Any) {
  update()
    }
    //修改後立即更新答案
    @IBAction func update2(_ sender: Any) {
   update()
    }
    
    
    
    
    
    var calculate = 0
    @IBAction func calculateSegmentedControl(_ sender: UISegmentedControl) {
        
        calculate = sender.selectedSegmentIndex
        update()
               
    }
    

    
    
    
    
    
    
    override func viewDidLoad() {
        
        addTapGesture()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

