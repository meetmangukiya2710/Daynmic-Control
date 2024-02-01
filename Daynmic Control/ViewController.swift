//
//  ViewController.swift
//  Daynmic Control
//
//  Created by R95 on 31/01/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addbutton()
        addTextFiled()
        addTextFiled1()
        label1()
        label2()
    }
    
    var textfiled = UITextField()
    
    func addTextFiled() {
        let myColor:UIColor = UIColor.black
        
        
        textfiled.placeholder = "Enter the E-mail"
        textfiled.layer.borderColor = myColor.cgColor
        textfiled.layer.borderWidth = 1
        textfiled.textColor = .black
        textfiled.frame = CGRect(x: 16, y: 154, width: 361, height: 34)
        view.addSubview(textfiled)
        textfiled.layer.cornerRadius = 5
    }
    
    var textfiled1 = UITextField()
    
    func addTextFiled1() {
        let myColor:UIColor = UIColor.black
        
        
        textfiled1.placeholder = "Enter the Password"
        textfiled1.layer.borderColor = myColor.cgColor
        textfiled1.layer.borderWidth = 1
        textfiled1.textColor = .black
        textfiled1.frame = CGRect(x: 16, y: 200, width: 361, height: 34)
        view.addSubview(textfiled1)
        textfiled1.layer.cornerRadius = 5
    }
    
    func addbutton() {
        var button = UIButton()
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = .purple
        button.frame = CGRect(x: 116, y: 450, width: 150, height: 35)
        view.addSubview(button)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(ButtonTapped), for: .touchUpInside)
    }
    
    @objc func ButtonTapped() {
        text1.text = String(textfiled.text!)
        text2.text = String(textfiled1.text!)
    }
    var text1 = UILabel()
    
    func label1() {
        let myColor:UIColor = .black
        
        
        text1.frame = CGRect(x: 16, y: 613, width: 361, height: 50)
        text1.layer.borderWidth = 1
        text1.layer.borderColor = myColor.cgColor
        text1.layer.cornerRadius = 5
        view.addSubview(text1)
    }
    
    var text2 = UILabel()
    
    func label2() {
        let myColor:UIColor = .black
        
        
        text2.frame = CGRect(x: 16, y: 690, width: 361, height: 50)
        text2.layer.borderWidth = 1
        text2.layer.borderColor = myColor.cgColor
        text2.layer.cornerRadius = 5
        view.addSubview(text2)
    }

    
}
