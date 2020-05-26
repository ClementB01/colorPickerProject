//
//  ViewController.swift
//  colorPickerProject
//
//  Created by lpiem on 05/12/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorPickerViewController
        //destVC.delegate = self
        destVC.completionHandler = userDidChooseColor(color:)
    }
    
    func userDidChooseColor(color: UIColor) {
        
        self.dismiss(animated: true, completion: nil)
        
        let previousColor = self.view.backgroundColor
        
       
        self.view.backgroundColor = color
        
        let alert = UIAlertController(title: "Message", message: "Voulez vous gardez cette couleur de fond", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Non!", style: .default, handler: { (_) in
            //self.view.backgroundColor = previousColor
             UIView.animate(withDuration: 2, animations: {self.view.backgroundColor = previousColor})
        }))
        alert.addAction(UIAlertAction(title: "Oui!", style: .default, handler: { (_) in
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
}

/*extension ViewController: ColorPickerViewDelegate {
    func userDidChooseColor(color: UIColor) {
        
        self.dismiss(animated: true, completion: nil)
        
        let previousColor = self.view.backgroundColor
        
       
        self.view.backgroundColor = color
        
        let alert = UIAlertController(title: "Message", message: "Voulez vous gardez cette couleur de fond", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Non!", style: .default, handler: { (_) in
            //self.view.backgroundColor = previousColor
             UIView.animate(withDuration: 2, animations: {self.view.backgroundColor = previousColor})
        }))
        alert.addAction(UIAlertAction(title: "Oui!", style: .default, handler: { (_) in
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
}*/

