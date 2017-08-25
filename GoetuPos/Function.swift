//
//  Function.swift
//  GoetuPos
//
//  Created by Luigi Guevarra on 8/12/17.
//  Copyright © 2017 Luigi Guevarra. All rights reserved.
//

import UIKit

class Function: UIViewController {

    
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnClockIn: UIButton!
    @IBOutlet weak var btnClockOut: UIButton!
    @IBOutlet weak var btnClockInOthers: UIButton!
    @IBOutlet weak var btnCloseOut: UIButton!
    @IBOutlet weak var btnCustomer: UIButton!
    @IBOutlet weak var btnManager: UIButton!
    @IBOutlet weak var btnBackOffice: UIButton!
    @IBOutlet weak var btnGiftCardBalance: UIButton!
    @IBOutlet weak var btnServiceDetail: UIButton!
    @IBOutlet weak var btnCashDrawer: UIButton!
    @IBOutlet weak var btnRetrieveClosedTicket: UIButton!
    @IBOutlet weak var btnCancel: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //clock in and clock out
        let x_pos = (btnClockIn.frame.size.width / 2) - 16
        
        let leftImageView1 = UIImageView()
        leftImageView1.image = UIImage(named: "clock")
        leftImageView1.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnClockIn.addSubview(leftImageView1)
        
        let leftImageView2 = UIImageView()
        leftImageView2.image = UIImage(named: "clock")
        leftImageView2.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnClockOut.addSubview(leftImageView2)
        
        
        //clock_in_others
        let x_pos3 = (btnClockInOthers.frame.size.width / 2) - 16
        
        let leftImageView3 = UIImageView()
        leftImageView3.image = UIImage(named: "clock_in_others")
        leftImageView3.frame = CGRect(x: x_pos3, y: 5, width: 32, height: 32)
        
        btnClockInOthers.addSubview(leftImageView3)
        
        //close_out
        let x_pos4 = (btnCloseOut.frame.size.width / 2) - 16
        
        let leftImageView4 = UIImageView()
        leftImageView4.image = UIImage(named: "close_out")
        leftImageView4.frame = CGRect(x: x_pos4, y: 5, width: 32, height: 32)
        
        btnCloseOut.addSubview(leftImageView4)
        
        //customer
        let x_pos5 = (btnCustomer.frame.size.width / 2) - 16
        
        let leftImageView5 = UIImageView()
        leftImageView5.image = UIImage(named: "customer")
        leftImageView5.frame = CGRect(x: x_pos5, y: 5, width: 32, height: 32)
        
        btnCustomer.addSubview(leftImageView5)
        
        //manager
        let x_pos6 = (btnManager.frame.size.width / 2) - 16
        
        let leftImageView6 = UIImageView()
        leftImageView6.image = UIImage(named: "manager")
        leftImageView6.frame = CGRect(x: x_pos6, y: 5, width: 32, height: 32)
        
        btnManager.addSubview(leftImageView6)
        
        //back office
        let x_pos7 = (btnBackOffice.frame.size.width / 2) - 16
        
        let leftImageView7 = UIImageView()
        leftImageView7.image = UIImage(named: "back_office")
        leftImageView7.frame = CGRect(x: x_pos7, y: 5, width: 32, height: 32)
        
        btnBackOffice.addSubview(leftImageView7)
        
        //gift card
        let x_pos8 = (btnGiftCardBalance.frame.size.width / 2) - 16
        
        let leftImageView8 = UIImageView()
        leftImageView8.image = UIImage(named: "gift_card")
        leftImageView8.frame = CGRect(x: x_pos8, y: 5, width: 32, height: 32)
        
        btnGiftCardBalance.addSubview(leftImageView8)
        
        //service detail
        let x_pos9 = (btnServiceDetail.frame.size.width / 2) - 16
        
        let leftImageView9 = UIImageView()
        leftImageView9.image = UIImage(named: "details")
        leftImageView9.frame = CGRect(x: x_pos9, y: 5, width: 32, height: 32)
        
        btnServiceDetail.addSubview(leftImageView9)
        
        //cash drawer
        let x_pos10 = (btnCashDrawer.frame.size.width / 2) - 16
        
        let leftImageView10 = UIImageView()
        leftImageView10.image = UIImage(named: "cash_drawer")
        leftImageView10.frame = CGRect(x: x_pos10, y: 5, width: 32, height: 32)
        
        btnCashDrawer.addSubview(leftImageView10)
        
        //retrieve
        let x_pos11 = (btnRetrieveClosedTicket.frame.size.width / 2) - 16
        
        let leftImageView11 = UIImageView()
        leftImageView11.image = UIImage(named: "retrieve")
        leftImageView11.frame = CGRect(x: x_pos11, y: 5, width: 32, height: 32)
        
        btnRetrieveClosedTicket.addSubview(leftImageView11)
        
        //cancel
        let x_pos12 = (btnCancel.frame.size.width / 2) - 16
        
        let leftImageView12 = UIImageView()
        leftImageView12.image = UIImage(named: "cancel")
        leftImageView12.frame = CGRect(x: x_pos12, y: 5, width: 32, height: 32)
        
        btnCancel.addSubview(leftImageView12)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    @IBAction func btnCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //start numpad
    @IBAction func btnNum1(_ sender: Any) {
        self.txtPassword.text = self.txtPassword.text! + "1"
    }

    @IBAction func btnNum2(_ sender: Any) {
        self.txtPassword.text = self.txtPassword.text! + "2"
    }
    
    @IBAction func btnNum3(_ sender: Any) {
        self.txtPassword.text = self.txtPassword.text! + "3"
    }
    
    @IBAction func btnNum4(_ sender: Any) {
        self.txtPassword.text = self.txtPassword.text! + "4"
    }
    
    @IBAction func btnNum5(_ sender: Any) {
        self.txtPassword.text = self.txtPassword.text! + "5"
    }
    
    @IBAction func btnNum6(_ sender: Any) {
        self.txtPassword.text = self.txtPassword.text! + "6"
    }
    
    @IBAction func btnNum7(_ sender: Any) {
        self.txtPassword.text = self.txtPassword.text! + "7"
    }
    
    @IBAction func btnNum8(_ sender: Any) {
        self.txtPassword.text = self.txtPassword.text! + "8"
    }
    
    @IBAction func btnNum9(_ sender: Any) {
        self.txtPassword.text = self.txtPassword.text! + "9"
    }
    
    @IBAction func btnNum0(_ sender: Any) {
        self.txtPassword.text = self.txtPassword.text! + "0"
    }
    
    @IBAction func btnClear(_ sender: Any) {
        self.txtPassword.text = ""
    }
    
    @IBAction func btnBack(_ sender: Any) {
        if(self.txtPassword.text != ""){
            let old_text: String = self.txtPassword.text!
            let back_text = old_text.substring(to: old_text.index(before: old_text.endIndex))
            
            self.txtPassword.text = back_text
        }

        
    }

    //end numpad
    
    
    
    

}
