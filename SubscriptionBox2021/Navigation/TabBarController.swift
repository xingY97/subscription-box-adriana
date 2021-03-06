//
//  TabBarController.swift
//  SubscriptionBox2021
//
//  Created by Adriana González Martínez on 2/11/21.
//

import Foundation
import UIKit

class TabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        self.delegate = self
        self.tabBar.tintColor = UIColor(named: "purple")

    }
    
    func setupViewControllers(){
        
        let homeVC = HomeVC()
        homeVC.tabBarItem = UITabBarItem(title:"Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))

        let historyVC = HistoryVC()
        historyVC.tabBarItem = UITabBarItem(title:"History", image: UIImage(systemName: "calendar"), selectedImage: UIImage(systemName: "calendar"))

        let newBoxVC = NewBoxVC()
        newBoxVC.tabBarItem = UITabBarItem(title:"New Box", image: UIImage(systemName: "shippingbox"), selectedImage: UIImage(systemName: "shippingbox.fill"))

        let sections = [homeVC, historyVC, newBoxVC]
        var navControllers = [UINavigationController]()
        
        for vc in sections{
            let navController = UINavigationController(rootViewController: vc)
            navController.navigationBar.prefersLargeTitles = true
            navControllers.append(navController)
        }
        
        viewControllers = navControllers
    }
}

extension TabBarController: UITabBarControllerDelegate{
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Hey you selected a new view controller")
    }
}
