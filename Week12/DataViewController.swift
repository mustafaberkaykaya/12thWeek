//
//  DataViewController.swift
//  Week12
//
//  Created by Mustafa Berkay Kaya on 23.12.2021.
//

import UIKit
import MobilliumBuilders
import TinyConstraints

class DataViewController: UIViewController {
    
    private let label = UILabelBuilder().build()
    var displayText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = displayText
        addSubViews()
        
    }
    
    
    
}
extension DataViewController {
   
    private func addSubViews(){
        addLabel()
    }
    
    private func addLabel(){
        view.addSubview(label)
        label.horizontalToSuperview()
        label.verticalToSuperview()
    }
}
