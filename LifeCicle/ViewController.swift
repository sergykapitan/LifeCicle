//
//  ViewController.swift
//  LifeCicle
//
//  Created by Sergey Koriukin on 28/04/2019.
//  Copyright © 2019 Sergey Koriukin. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    var containerViewController: ContainerViewController!
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        containerViewController = UIApplication.shared.windows.first?.rootViewController as? ContainerViewController
        
        name = tabBarItem.title
        
        guard containerViewController != nil else {
            print(#function, "Can't get View Controller container !")
            return
        }
        update(#function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        update(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        update(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        update(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        update(#function)
    }
    
    override func viewWillLayoutSubviews() {
        update(#function)
    }
    
    override func viewDidLayoutSubviews() {
        update(#function)
    }
    
    func update(_ caller: String) {
        containerViewController.update(caller: "\(name ?? "No name!") : \(caller)")
    }
}
