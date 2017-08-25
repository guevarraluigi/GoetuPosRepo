//
//  EnterTips.swift
//  GoetuPos
//
//  Created by Luigi Guevarra on 8/16/17.
//  Copyright © 2017 Luigi Guevarra. All rights reserved.
//

import UIKit


protocol EnterTipsViewControllerDelegate {
    func didOpenEnterTips(viewController vc: EnterTips, success: Bool, amount: String, is_percent: Bool)
}

class EnterTips: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnAddPercent: UIButton!
    @IBOutlet weak var btnColor: UIButton!
    @IBOutlet weak var btnOk: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    
    
    var not_selected_color: UIColor!
    var selected_color: UIColor!
    
    var is_percent = false
    


    var protocolDelegate : EnterTipsViewControllerDelegate?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        //add percent
        let x_pos = (btnAddPercent.frame.size.width / 2) - 16
        
        let leftImageView1 = UIImageView()
        leftImageView1.image = UIImage(named: "percent")
        leftImageView1.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnAddPercent.addSubview(leftImageView1)

        //ok
        let x_pos2 = (btnOk.frame.size.width / 2) - 16
        
        let leftImageView2 = UIImageView()
        leftImageView2.image = UIImage(named: "ok")
        leftImageView2.frame = CGRect(x: x_pos2, y: 5, width: 32, height: 32)
        
        btnOk.addSubview(leftImageView2)
        
        //back
        let x_pos3 = (btnBack.frame.size.width / 2) - 16
        
        let leftImageView3 = UIImageView()
        leftImageView3.image = UIImage(named: "back104")
        leftImageView3.frame = CGRect(x: x_pos3, y: 5, width: 32, height: 32)
        
        btnBack.addSubview(leftImageView3)
        
        self.not_selected_color = btnAddPercent.backgroundColor
        self.selected_color = btnColor.backgroundColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        
        
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
    
    @IBAction func btnPoint(_ sender: Any) {
        
        if(self.txtPassword.text?.characters.contains(".") != true){
            self.txtPassword.text = self.txtPassword.text! + "."
        }
        
        
    }
    
    
    @IBAction func btnBack(_ sender: Any) {
        if(self.txtPassword.text != ""){
            let old_text: String = self.txtPassword.text!
            let back_text = old_text.substring(to: old_text.index(before: old_text.endIndex))
            
            self.txtPassword.text = back_text
        }
        
        
    }
    
    //end numpad
    
    
    @IBAction func btnAddPercent(_ sender: Any) {
        
     let color = self.btnAddPercent.backgroundColor
        
        if(color == self.selected_color){
            self.is_percent = false
            self.btnAddPercent.backgroundColor = self.not_selected_color
        }else{
            self.is_percent = true
            self.btnAddPercent.backgroundColor = self.selected_color
        }
        
        
    }
    
    @IBAction func btnOk(_ sender: Any) {
        if(self.txtPassword.text != "" && self.txtPassword.text != "."){
            
            
            
            
            
            self.protocolDelegate?.didOpenEnterTips(viewController: self, success: true, amount: self.txtPassword.text!, is_percent: self.is_percent)
        }
        
        
    }
    
    
    



}
