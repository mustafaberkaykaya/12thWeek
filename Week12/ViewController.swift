//
//  ViewController.swift
//  Week12
//
//  Created by Mustafa Berkay Kaya on 23.12.2021.
//

import UIKit
import MobilliumBuilders
import TinyConstraints

class ViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    var myControllers = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let vc = UIViewController()
        vc.view.backgroundColor = .red
        myControllers.append(vc)
        
        let vc2 = UIViewController()
        vc2.view.backgroundColor = .green
        myControllers.append(vc2)
        
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now()+2 , execute: {
            self.presentPageVC()
        })
    }
    
    func presentPageVC() {
        guard let first = myControllers.first else {
            return
        }
        
        let vc = UIPageViewController(transitionStyle: .pageCurl, navigationOrientation: .horizontal, options: nil)
        vc.delegate = self
        vc.dataSource = self
        vc.setViewControllers([first], direction: .forward, animated: true, completion: nil)
        present(vc, animated: true, completion: nil)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let index = myControllers.firstIndex(of: viewController), index>0 else {
            return nil
        }
        
        let before = index - 1
        
        return myControllers[before]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let index = myControllers.firstIndex(of: viewController), index<(myControllers.count-1) else {
            return nil
        }
        
        let after = index + 1
        
        return myControllers[after]
        
    }
    
}
