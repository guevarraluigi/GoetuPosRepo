//
//  TicketPayment.swift
//  GoetuPos
//
//  Created by Luigi Guevarra on 8/18/17.
//  Copyright © 2017 Luigi Guevarra. All rights reserved.
//

import UIKit

class TicketPayment: UIViewController {

    @IBOutlet weak var txtAmountDue: UITextField!
    @IBOutlet weak var txtTender: UITextField!
    
    
    @IBOutlet weak var btnCash: UIButton!
    @IBOutlet weak var btnCredit: UIButton!
    @IBOutlet weak var btnDebit: UIButton!
    @IBOutlet weak var btnGiftCard: UIButton!
    @IBOutlet weak var btnCheck: UIButton!
    @IBOutlet weak var btnLoyalty: UIButton!
    
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var lblTotalDue: UILabel!
    
    @IBOutlet weak var tblVw: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //cash
        let x_pos = (btnCash.frame.size.width / 2) - 16
        
        let leftImageView1 = UIImageView()
        leftImageView1.image = UIImage(named: "cash")
        leftImageView1.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnCash.addSubview(leftImageView1)
        
        //credit
        let leftImageView2 = UIImageView()
        leftImageView2.image = UIImage(named: "credit")
        leftImageView2.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnCredit.addSubview(leftImageView2)
        
        
        //debit
        
        let leftImageView3 = UIImageView()
        leftImageView3.image = UIImage(named: "debit")
        leftImageView3.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnDebit.addSubview(leftImageView3)
        
        //gift card
        
        let leftImageView4 = UIImageView()
        leftImageView4.image = UIImage(named: "gift_card")
        leftImageView4.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnGiftCard.addSubview(leftImageView4)
        
        //paycheck
        
        let leftImageView5 = UIImageView()
        leftImageView5.image = UIImage(named: "paycheck")
        leftImageView5.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnCheck.addSubview(leftImageView5)
        
        //loyalty points
        
        let leftImageView6 = UIImageView()
        leftImageView6.image = UIImage(named: "reward")
        leftImageView6.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnLoyalty.addSubview(leftImageView6)


        //cash
        let x_pos2 = (btnBack.frame.size.width / 2) - 16
        
        let leftImageView7 = UIImageView()
        leftImageView7.image = UIImage(named: "back")
        leftImageView7.frame = CGRect(x: x_pos2, y: 5, width: 32, height: 32)
        
        btnBack.addSubview(leftImageView7)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

    
    //start numpad
    @IBAction func btnNum1(_ sender: Any) {
        self.txtTender.text = self.txtTender.text! + "1"
    }
    
    @IBAction func btnNum2(_ sender: Any) {
        self.txtTender.text = self.txtTender.text! + "2"
    }
    
    @IBAction func btnNum3(_ sender: Any) {
        self.txtTender.text = self.txtTender.text! + "3"
    }
    
    @IBAction func btnNum4(_ sender: Any) {
        self.txtTender.text = self.txtTender.text! + "4"
    }
    
    @IBAction func btnNum5(_ sender: Any) {
        self.txtTender.text = self.txtTender.text! + "5"
    }
    
    @IBAction func btnNum6(_ sender: Any) {
        self.txtTender.text = self.txtTender.text! + "6"
    }
    
    @IBAction func btnNum7(_ sender: Any) {
        self.txtTender.text = self.txtTender.text! + "7"
    }
    
    @IBAction func btnNum8(_ sender: Any) {
        self.txtTender.text = self.txtTender.text! + "8"
    }
    
    @IBAction func btnNum9(_ sender: Any) {
        self.txtTender.text = self.txtTender.text! + "9"
    }
    
    @IBAction func btnNum0(_ sender: Any) {
        self.txtTender.text = self.txtTender.text! + "0"
    }
    
    @IBAction func btnClear(_ sender: Any) {
        self.txtTender.text = ""
    }
    
    @IBAction func btnPoint(_ sender: Any) {
        
        if(self.txtTender.text?.characters.contains(".") != true){
            self.txtTender.text = self.txtTender.text! + "."
        }
        
        
    }
    
    
    @IBAction func btnBack(_ sender: Any) {
        if(self.txtTender.text != ""){
            let old_text: String = self.txtTender.text!
            let back_text = old_text.substring(to: old_text.index(before: old_text.endIndex))
            
            self.txtTender.text = back_text
        }
        
        
    }
    
    //end numpad
    
    @IBAction func btnCash(_ sender: Any) {
        
    }
    
    @IBAction func btnCredit(_ sender: Any) {
        
    }
    
    @IBAction func btnDebit(_ sender: Any) {
        
    }
    
    @IBAction func btnGiftCard(_ sender: Any) {
        
    }
    
    @IBAction func btnCheck(_ sender: Any) {
        
    }
    
    @IBAction func btnLoyaltyPoints(_ sender: Any) {
        
    }
    


}
