//
//  ViewController.swift
//  PaymentSystem
//
//  Created by Yessenali Zhanaidar on 05.06.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createUI()
    }
    
    private func createUI() {
        
        view.backgroundColor = .white
        
        let backButton: UIButton = {
            
            let image = UIImage(systemName: "arrow.backward")
            
            let backBtn = UIButton()
            backBtn.setBackgroundImage(image, for: .normal)
            backBtn.tintColor = .gray
            return backBtn
        }()
        
        view.addSubview(backButton)
        backButton.snp.makeConstraints { make in
            make.width.height.equalTo(25)
            make.leading.equalTo(15)
            make.top.equalTo(70)
        }
        
        let paymentLabel: UILabel = {
            let label = UILabel()
            label.textColor = .black
            label.font = UIFont.systemFont(ofSize: 26, weight: .bold)
            label.numberOfLines = 0
            label.text = "Payment Options"
            return label
        }()
        
        let creditCardLabel: UILabel = {
            let label = UILabel()
            label.textColor = .lightGray
            label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
            label.numberOfLines = 0
            label.text = "Credit Card"
            return label
        }()
        
        let cardVisa: UIButton = {
            let image = UIImage(named: "visa")
            let visa = UIButton()
            visa.setBackgroundImage(image, for: .normal)
            return visa
        }()
        
        let cardMaster: UIButton = {
            let image = UIImage(named: "mastercard")
            let masterCard = UIButton()
            masterCard.setBackgroundImage(image, for: .normal)
            return masterCard
        }()
        
        let cardAmericanExpress: UIButton = {
            let image = UIImage(named: "american-express")
            let card = UIButton()
            card.setBackgroundImage(image, for: .normal)
            return card
        }()
        
        // TextFields
        
        let emailField: UITextField = {
            let borderColor = UIColor(named: "border")
            let field = UITextField()
            field.layer.borderWidth = 1.0
            field.placeholder = "     Email Address"
            field.textAlignment = .left
            field.layer.borderColor = borderColor?.cgColor
            field.layer.cornerRadius = 5.0
            return field
        }()
        
        let cardNumberField: UITextField = {
            let borderColor = UIColor(named: "border")
            let field = UITextField()
            field.layer.borderWidth = 1.0
            field.placeholder = "     Card Number"
            field.textAlignment = .left
            field.layer.borderColor = borderColor?.cgColor
            field.layer.cornerRadius = 5.0
            return field
        }()
        
        let expDate: UITextField = {
            let borderColor = UIColor(named: "border")
            let field = UITextField()
            field.layer.borderWidth = 1.0
            field.placeholder = "    Exp."
            field.textAlignment = .left
            field.layer.borderColor = borderColor?.cgColor
            field.layer.cornerRadius = 5.0
            return field
        }()
        
        let cardHolderNameField: UITextField = {
            let borderColor = UIColor(named: "border")
            let field = UITextField()
            field.layer.borderWidth = 1.0
            field.placeholder = "     Cardholder Name"
            field.textAlignment = .left
            field.layer.borderColor = borderColor?.cgColor
            field.layer.cornerRadius = 5.0
            return field
        }()

        let cvv: UITextField = {
            let borderColor = UIColor(named: "border")
            let field = UITextField()
            field.layer.borderWidth = 1.0
            field.placeholder = "    CVV"
            field.textAlignment = .left
            field.layer.borderColor = borderColor?.cgColor
            field.layer.cornerRadius = 5.0
            return field
        }()
        
        
        let checkBox: VKCheckbox = {
        let check = VKCheckbox()
        check.line = .thin
        check.bgColorSelected  = UIColor(red: 46/255, green: 119/255, blue: 217/255, alpha: 1)
        check.borderWidth = 2
        check.cornerRadius = check.frame.height / 2
        check.checkboxValueChangedBlock = {
            isOn in
            print("Custom checkbox is \(isOn ? "On" : "Off")")
        }
        return check
        
        }()
//        func setOn(_ on: Bool, animated: Bool) {
//            isOn
//        }
        
        let checkLabel: UILabel = {
            let label = UILabel()
            label.text = "I accept terms and policies..."
            label.numberOfLines = 0
            return label
        }()
        
        
        let confirmButton: UIButton = {
            let btn = UIButton(type: .system)
            btn.backgroundColor = .black
            btn.setTitle("Confirm", for: .normal)
            btn.setTitleColor(.white, for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
            btn.layer.cornerRadius = 10
            return btn
        }()
        
        
        
        view.addSubview(paymentLabel)
        paymentLabel.snp.makeConstraints { make in
            make.width.equalTo(500)
            make.height.equalTo(100)
            make.leading.equalTo(25)
            make.top.equalTo(125)
        }
        
        view.addSubview(creditCardLabel)
        creditCardLabel.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.leading.equalTo(25)
            make.top.equalTo(210)
        }
        
        view.addSubview(cardVisa)
        cardVisa.snp.makeConstraints { make in
            make.top.equalTo(265)
            make.leading.equalTo(25)
        }
        
        view.addSubview(cardMaster)
        cardMaster.snp.makeConstraints { make in
            make.top.equalTo(265)
            make.leading.equalTo(155)
        }
        
        view.addSubview(cardAmericanExpress)
        cardAmericanExpress.snp.makeConstraints { make in
            make.top.equalTo(265)
            make.leading.equalTo(285)
        }
        
        view.addSubview(emailField)
        emailField.snp.makeConstraints { make in
            make.width.equalTo(360)
            make.height.equalTo(50)
            make.top.equalTo(400)
            make.centerX.equalToSuperview()
            
        }
        
        view.addSubview(cardNumberField)
        cardNumberField.snp.makeConstraints { make in
            make.width.equalTo(260)
            make.height.equalTo(50)
            make.top.equalTo(475)
            make.centerX.equalTo(157)
        }
        
        view.addSubview(expDate)
        expDate.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(50)
            make.top.equalTo(475)
            make.centerX.equalTo(347)
        }
        
        view.addSubview(cardHolderNameField)
        cardHolderNameField.snp.makeConstraints { make in
            make.width.equalTo(260)
            make.height.equalTo(50)
            make.top.equalTo(550)
            make.centerX.equalTo(157)
        }
        
        view.addSubview(cvv)
        cvv.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(50)
            make.top.equalTo(550)
            make.centerX.equalTo(347)
        }
        
        view.addSubview(checkBox)
        checkBox.snp.makeConstraints { make in
            make.centerX.equalTo(50)
            make.width.equalTo(20)
            make.height.equalTo(20)
            make.top.equalTo(650)
        }
        
        view.addSubview(checkLabel)
        checkLabel.snp.makeConstraints { make in
            make.width.equalTo(500)
            make.height.equalTo(50)
            make.centerX.equalTo(345)
            make.top.equalTo(635)
            
        }
        
        view.addSubview(confirmButton)
        confirmButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.top.equalTo(720)
            make.width.equalTo(360)
            make.centerX.equalToSuperview()
        }
        
        
    }

    
    

}



