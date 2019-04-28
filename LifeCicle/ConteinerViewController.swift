//
//  ConteinerViewController.swift
//  LifeCicle
//
//  Created by Sergey Koriukin on 28/04/2019.
//  Copyright © 2019 Sergey Koriukin. All rights reserved.
//

import Foundation
import UIKit

class ContainerViewController: UIViewController {
    
    static var lineCounter = 0
    
    @IBOutlet weak var textView: UITextView!
    
    func update(caller: String) {
        ContainerViewController.lineCounter += 1
        
        guard let text = textView.text else { return (textView.text = "\(caller)") }
        textView.text = "\(text)\n \(caller)"
        
        let y = textView.contentSize.height - textView.bounds.size.height
        
        guard 0 < y else { return }
        textView.setContentOffset(CGPoint(x: 0, y: y), animated: true)
    }
    
}
// MARK: - Delegate Extentions
extension ContainerViewController {
  
    // Hides keyboard on Touch Outside Tap
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true);
}
}
