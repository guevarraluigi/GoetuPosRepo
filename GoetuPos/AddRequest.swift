//
//  AddRequest.swift
//  GoetuPos
//
//  Created by Luigi Guevarra on 8/22/17.
//  Copyright © 2017 Luigi Guevarra. All rights reserved.
//

import UIKit


protocol AddRequestViewControllerDelegate {
    func didOpenAddRequest(viewController vc: AddRequest, button_str: String)
}

class AddRequest: UIViewController {

    @IBOutlet weak var btnAddRequest: UIButton!
    @IBOutlet weak var btnRemoveRequest: UIButton!
    @IBOutlet weak var btnCancel: UIButton!
    
    var protocolDelegate : AddRequestViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //add request
        let x_pos = (btnAddRequest.frame.size.width / 2) - 16
        
        let leftImageView1 = UIImageView()
        leftImageView1.image = UIImage(named: "add")
        leftImageView1.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnAddRequest.addSubview(leftImageView1)
        
        //remove request
        let leftImageView2 = UIImageView()
        leftImageView2.image = UIImage(named: "minus")
        leftImageView2.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnRemoveRequest.addSubview(leftImageView2)
        
        
        //cancel
        
        let leftImageView3 = UIImageView()
        leftImageView3.image = UIImage(named: "cancel")
        leftImageView3.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnCancel.addSubview(leftImageView3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func btnAddRequest(_ sender: Any) {
        self.protocolDelegate?.didOpenAddRequest(viewController: self, button_str: "add")
    }
    
    @IBAction func btnRemoveRequest(_ sender: Any) {
        self.protocolDelegate?.didOpenAddRequest(viewController: self, button_str: "remove")
    }
    
    @IBAction func btnCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    



}
