//
//  TextViewController.swift
//  Week12
//
//  Created by Mustafa Berkay Kaya on 23.12.2021.
//

import UIKit
import TinyConstraints

class TextViewController: UIViewController {

    private let myText: String
    private let myTextView: UITextView = {
        let textView = UITextView()
        textView.isEditable = false
        textView.font = .systemFont(ofSize: 24)
        textView.textColor = .black
        return textView
    }()
   
    init(with text: String) {
        self.myText = text
        myTextView.text = self.myText
        super.init(nibName: nil, bundle: nil)
    }
    
    // swiftlint:disable all
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // swiftlint:enable all

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(self.myTextView)
        myTextView.edgesToSuperview()
    }
}
