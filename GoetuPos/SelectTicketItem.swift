//
//  SelectTicketItem.swift
//  GoetuPos
//
//  Created by Luigi Guevarra on 8/15/17.
//  Copyright © 2017 Luigi Guevarra. All rights reserved.
//

import UIKit

protocol SelectTicketItemViewControllerDelegate {
    func didOpenSelectTicketItem(viewController vc: SelectTicketItem, success: Bool)
}



class SelectTicketItem: UIViewController {

    
    @IBOutlet weak var btnRequest: UIButton!
    @IBOutlet weak var btnTransfer: UIButton!
    @IBOutlet weak var btnVoidItem: UIButton!
    @IBOutlet weak var btnItemDiscount: UIButton!
    @IBOutlet weak var btnQuantity: UIButton!
    
    
    @IBOutlet weak var colVw: UICollectionView!
    
    @IBOutlet weak var txtRequest: UITextView!
    
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnOk: UIButton!
    
    @IBOutlet weak var vwNumpad: UIView!
    
    @IBOutlet weak var btnNumBack: UIButton!
    @IBOutlet weak var btnNumUpdate: UIButton!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    
    
        var protocolDelegate : SelectTicketItemViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //request
        let x_pos = (btnRequest.frame.size.width / 2) - 16
        
        let leftImageView1 = UIImageView()
        leftImageView1.image = UIImage(named: "idea")
        leftImageView1.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnRequest.addSubview(leftImageView1)
        
        //transfer
        let leftImageView2 = UIImageView()
        leftImageView2.image = UIImage(named: "move")
        leftImageView2.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnTransfer.addSubview(leftImageView2)
        
        
        //void item
        
        let leftImageView3 = UIImageView()
        leftImageView3.image = UIImage(named: "void")
        leftImageView3.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnVoidItem.addSubview(leftImageView3)
        
        //item discount
        
        let leftImageView4 = UIImageView()
        leftImageView4.image = UIImage(named: "discount")
        leftImageView4.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnItemDiscount.addSubview(leftImageView4)
        
        //cancel
        
        let leftImageView5 = UIImageView()
        leftImageView5.image = UIImage(named: "cancel")
        leftImageView5.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnCancel.addSubview(leftImageView5)
        
        //ok
        
        let leftImageView6 = UIImageView()
        leftImageView6.image = UIImage(named: "ok")
        leftImageView6.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnOk.addSubview(leftImageView6)
        
        //quantity
        
        let leftImageView7 = UIImageView()
        leftImageView7.image = UIImage(named: "add")
        leftImageView7.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnQuantity.addSubview(leftImageView7)
        
        //num back
        
        let x_pos_back = (btnNumBack.frame.size.width / 2) - 16
        
        let leftImageView8 = UIImageView()
        leftImageView8.image = UIImage(named: "back")
        leftImageView8.frame = CGRect(x: x_pos_back, y: 5, width: 32, height: 32)
        
        btnNumBack.addSubview(leftImageView8)
        
        //update
        
        let x_pos_update = (btnNumUpdate.frame.size.width / 2) - 16
        
        let leftImageView9 = UIImageView()
        leftImageView9.image = UIImage(named: "update")
        leftImageView9.frame = CGRect(x: x_pos_update, y: 5, width: 32, height: 32)
        
        btnNumUpdate.addSubview(leftImageView9)

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
    
    
    @IBAction func btnUpdate(_ sender: Any) {
        
    }
    
    
    @IBAction func btnBack(_ sender: Any) {
        if(self.txtPassword.text != ""){
            let old_text: String = self.txtPassword.text!
            let back_text = old_text.substring(to: old_text.index(before: old_text.endIndex))
            
            self.txtPassword.text = back_text
        }
        
        
    }
    
    //end numpad
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func btnRequest(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Ticket", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AddRequest") as! AddRequest
        
        vc.protocolDelegate = self
        
        self.present(vc, animated: false, completion: nil)
    }

    @IBAction func btnItemDiscount(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Ticket", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ModalAddDiscount") as! ModalAddDiscount
        
        vc.protocolDelegate = self
        
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func btnQuantity(_ sender: Any) {
        self.txtRequest.isHidden = true
        self.btnCancel.isHidden = true
        self.btnOk.isHidden = true
        self.vwNumpad.isHidden = false
        self.colVw.isHidden = true
    }
    
    
    @IBAction func btnVoidItem(_ sender: Any) {
        
    }
    
    @IBAction func btnTransfer(_ sender: Any) {
        self.txtRequest.isHidden = true
        self.btnCancel.isHidden = true
        self.btnOk.isHidden = true
        self.vwNumpad.isHidden = true
        self.colVw.isHidden = false
    }
    
    
    @IBAction func btnCancel(_ sender: Any) {
        self.txtRequest.isHidden = true
        self.btnCancel.isHidden = true
        self.btnOk.isHidden = true
        self.vwNumpad.isHidden = true
        self.colVw.isHidden = true
    }
    
    @IBAction func btnOk(_ sender: Any) {
        self.txtRequest.isHidden = true
        self.btnCancel.isHidden = true
        self.btnOk.isHidden = true
        self.vwNumpad.isHidden = true
        self.colVw.isHidden = true
    }
    
    

}




extension SelectTicketItem:ModalAddDiscountViewControllerDelegate {
    func didOpenModalAddDiscount(viewController vc: ModalAddDiscount, success: Bool)
    {
        //vc.dismiss(animated: true, completion: nil)
        
        if success
        {
            vc.dismiss(animated: true, completion: nil)
            
            self.protocolDelegate?.didOpenSelectTicketItem(viewController: self, success: true)

            
            
            
        }
        
    }
}

extension SelectTicketItem:AddRequestViewControllerDelegate {
    func didOpenAddRequest(viewController vc: AddRequest, button_str: String)
    {
        vc.dismiss(animated: true, completion: nil)
        
        if(button_str == "add"){
            self.txtRequest.isHidden = false
            self.btnCancel.isHidden = false
            self.btnOk.isHidden = false
            self.colVw.isHidden = true

        }else{
            self.txtRequest.isHidden = true
            self.btnCancel.isHidden = true
            self.btnOk.isHidden = true
            self.colVw.isHidden = true
        }
        
    }
}


