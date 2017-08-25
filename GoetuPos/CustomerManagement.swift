//
//  CustomerManagement.swift
//  GoetuPos
//
//  Created by Luigi Guevarra on 8/20/17.
//  Copyright © 2017 Luigi Guevarra. All rights reserved.
//

import UIKit

class CustomerManagement: UIViewController {

    @IBOutlet weak var tblVw: UITableView!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtPhoneNumber: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtBirthDate: UITextField!
    @IBOutlet weak var txtNotes: UITextView!
    
    @IBOutlet weak var btnOk: UIButton!
    @IBOutlet weak var btnExit: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //ok
        let x_pos = (btnOk.frame.size.width / 2) - 16
        
        let leftImageView1 = UIImageView()
        leftImageView1.image = UIImage(named: "ok")
        leftImageView1.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnOk.addSubview(leftImageView1)
        
        let leftImageView2 = UIImageView()
        leftImageView2.image = UIImage(named: "cancel")
        leftImageView2.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnExit.addSubview(leftImageView2)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func btnOk(_ sender: Any) {
        
    }

    @IBAction func btnExit(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }


}
