//
//  ModalAddDiscount.swift
//  GoetuPos
//
//  Created by Luigi Guevarra on 8/16/17.
//  Copyright © 2017 Luigi Guevarra. All rights reserved.
//

import UIKit


protocol ModalAddDiscountViewControllerDelegate {
    func didOpenModalAddDiscount(viewController vc: ModalAddDiscount, success: Bool)
}


class ModalAddDiscount: UIViewController {

    
    @IBOutlet weak var btnAddDiscount: UIButton!
    
    @IBOutlet weak var btnRemoveDiscount: UIButton!
    
    @IBOutlet weak var btnCancel: UIButton!
    
    var protocolDelegate : ModalAddDiscountViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //add discount
        let x_pos = (btnAddDiscount.frame.size.width / 2) - 16
        
        let leftImageView1 = UIImageView()
        leftImageView1.image = UIImage(named: "add2")
        leftImageView1.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnAddDiscount.addSubview(leftImageView1)
        
        //remove discount
        let leftImageView2 = UIImageView()
        leftImageView2.image = UIImage(named: "minus2")
        leftImageView2.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnRemoveDiscount.addSubview(leftImageView2)
        
        
        //cancel
        
        let leftImageView3 = UIImageView()
        leftImageView3.image = UIImage(named: "cancel")
        leftImageView3.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnCancel.addSubview(leftImageView3)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func btnAddDiscount(_ sender: Any) {
        self.protocolDelegate?.didOpenModalAddDiscount(viewController: self, success: true)
    }

    @IBAction func btnRemoveDiscount(_ sender: Any) {
        
    }

    @IBAction func btnCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
