//
//  ViewController.swift
//  Week12
//
//  Created by Mustafa Berkay Kaya on 23.12.2021.
//

import UIKit

class ViewController: UIViewController {

    let mainPage = MainPage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addSubViews()
    }

}
extension ViewController {
    private func addSubViews() {
        view.addSubview(mainPage)
        mainPage.edgesToSuperview(usingSafeArea: true)
    }
}
