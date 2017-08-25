//
//  ModalAddTips.swift
//  GoetuPos
//
//  Created by Luigi Guevarra on 8/16/17.
//  Copyright © 2017 Luigi Guevarra. All rights reserved.
//

import UIKit

protocol ModalAddTipsViewControllerDelegate {
    func didOpenModalAddTips(viewController vc: ModalAddTips, button_str: String)
}


class ModalAddTips: UIViewController {

    
    @IBOutlet weak var btnAddTips: UIButton!
    
    @IBOutlet weak var btnRemoveTax: UIButton!
    
    @IBOutlet weak var btnCancel: UIButton!
    
    var protocolDelegate : ModalAddTipsViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //add tips
        let x_pos = (btnAddTips.frame.size.width / 2) - 16
        
        let leftImageView1 = UIImageView()
        leftImageView1.image = UIImage(named: "tips")
        leftImageView1.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnAddTips.addSubview(leftImageView1)
        
        //remove tax
        let leftImageView2 = UIImageView()
        leftImageView2.image = UIImage(named: "tax")
        leftImageView2.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnRemoveTax.addSubview(leftImageView2)
        
        
        //cancel
        
        let leftImageView3 = UIImageView()
        leftImageView3.image = UIImage(named: "cancel")
        leftImageView3.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnCancel.addSubview(leftImageView3)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        
        
    }
    
    @IBAction func btnAddTips(_ sender: Any) {
        self.protocolDelegate?.didOpenModalAddTips(viewController: self, button_str: "tips")
    }
    
    @IBAction func btnRemoveTax(_ sender: Any) {
        self.protocolDelegate?.didOpenModalAddTips(viewController: self, button_str: "tax")
    }
    
    @IBAction func btnCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }



}
