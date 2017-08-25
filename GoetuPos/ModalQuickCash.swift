//
//  ModalQuickCash.swift
//  GoetuPos
//
//  Created by Luigi Guevarra on 8/17/17.
//  Copyright © 2017 Luigi Guevarra. All rights reserved.
//

import UIKit

class ModalQuickCash: UIViewController {

    
    @IBOutlet weak var btnPrintReceipt: UIButton!
    @IBOutlet weak var btnNoReceipt: UIButton!
    @IBOutlet weak var btnCancel: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //print
        let x_pos = (btnPrintReceipt.frame.size.width / 2) - 16
        
        let leftImageView1 = UIImageView()
        leftImageView1.image = UIImage(named: "print")
        leftImageView1.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnPrintReceipt.addSubview(leftImageView1)
        
        //no
        let leftImageView2 = UIImageView()
        leftImageView2.image = UIImage(named: "no")
        leftImageView2.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnNoReceipt.addSubview(leftImageView2)
        
        
        //cancel
        
        let leftImageView3 = UIImageView()
        leftImageView3.image = UIImage(named: "cancel")
        leftImageView3.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnCancel.addSubview(leftImageView3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

    @IBAction func btnPrintReceipt(_ sender: Any) {
        
    }
    
    @IBAction func btnNoReceipt(_ sender: Any) {
        
    }
    
    @IBAction func btnCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
