//
//  ColorPickerViewController.swift
//  colorPickerProject
//
//  Created by lpiem on 05/12/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {
   
    
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    
    
    var delegate: ColorPickerViewDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ClickEvent(_ sender: UIButton){
        switch sender {
        case greenButton :
            delegate?.userDidChooseColor(color: ColorAsset.green.color)
        case orangeButton:
            delegate?.userDidChooseColor(color: ColorAsset.orange.color)
        case purpleButton:
            delegate?.userDidChooseColor(color: ColorAsset.purple.color)
        default:
            break
        }
    }
}

protocol ColorPickerViewDelegate {
    func userDidChooseColor(color: UIColor)
}
