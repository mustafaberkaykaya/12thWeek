//
//  MainPage.swift
//  Week12
//
//  Created by Mustafa Berkay Kaya on 23.12.2021.
//

import UIKit
import MobilliumBuilders
import TinyConstraints

class MainPage: UIView {

    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private let textFieldUsername = UITextFieldBuilder()
            .borderWidth(0.5)
            .placeholder("Please enter your username.")
            .build()
    private let textFieldName = UITextFieldBuilder()
            .borderWidth(0.5)
            .placeholder("Please enter your name.")
            .build()
    private let textFieldSurname = UITextFieldBuilder()
            .borderWidth(0.5)
            .placeholder("Please enter your surname.")
            .build()
    private let textFieldPassword = UITextFieldBuilder()
            .borderWidth(0.5)
            .placeholder("Please enter your password.")
            .isSecureTextEntry(true)
            .build()
    private let textFieldPasswordAgain = UITextFieldBuilder()
            .borderWidth(0.5)
            .placeholder("Please enter your password again.")
            .isSecureTextEntry(true)
            .build()
    private let signUpButton = UIButtonBuilder()
            .title("Sign Up")
            .build()
    private let mainStackView = UIStackViewBuilder()
            .axis(.vertical)
            .spacing(30)
            .build()
    
    required init?(coder: NSCoder) {
            super.init(coder: coder)
            configureContents()
        }
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            configureContents()
        }
        
        private func configureContents() {
               addSubViews()
        }

}

extension MainPage {
    
    private func addSubViews() {
        addScrollView()
        addMainStackView()
        addMainContents()
    }
    
    private func addScrollView() {
        addSubview(scrollView)
        scrollView.edgesToSuperview(usingSafeArea: true)
        scrollView.addSubview(contentView)
        contentView.edgesToSuperview()
        contentView.widthToSuperview()
    }
    
    private func addMainStackView() {
        contentView.addSubview(mainStackView)
        mainStackView.topToSuperview().constant = 25
        mainStackView.leadingToSuperview().constant = 30
        mainStackView.trailingToSuperview().constant = -30
        mainStackView.bottomToSuperview().constant = -25
    }
    
    private func addMainContents() {
        mainStackView.addArrangedSubview(textFieldUsername)
        mainStackView.addArrangedSubview(textFieldName)
        mainStackView.addArrangedSubview(textFieldSurname)
        mainStackView.addArrangedSubview(textFieldPassword)
        mainStackView.addArrangedSubview(textFieldPasswordAgain)
        mainStackView.addArrangedSubview(signUpButton)
    }
}
