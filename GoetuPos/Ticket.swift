//
//  Ticket.swift
//  GoetuPos
//
//  Created by Luigi Guevarra on 8/14/17.
//  Copyright © 2017 Luigi Guevarra. All rights reserved.
//

import UIKit

class Ticket: UIViewController {

    @IBOutlet weak var lblTicketHeader: UILabel!
    @IBOutlet weak var lblTicketDate: UILabel!
    @IBOutlet weak var txtCustomer: UITextField!
    
    @IBOutlet weak var lblMemberId: UILabel!
    @IBOutlet weak var lblPhoneNumber: UILabel!
    @IBOutlet weak var lblEmailAddress: UILabel!
    @IBOutlet weak var lblBirthDate: UILabel!
    @IBOutlet weak var lblDefaultKit: UILabel!
    
    @IBOutlet weak var lblFirstVisit: UILabel!
    @IBOutlet weak var lblLastVisit: UILabel!
    @IBOutlet weak var lblVisitCount: UILabel!
    @IBOutlet weak var lblTotalSpend: UILabel!
    @IBOutlet weak var lblTotalPoints: UILabel!

    @IBOutlet weak var tblVw: UITableView!
    
    @IBOutlet weak var lblRetail: UILabel!
    @IBOutlet weak var lblService: UILabel!
    @IBOutlet weak var lblGiftCards: UILabel!
    @IBOutlet weak var lblPackages: UILabel!
    
    
    @IBOutlet weak var lblbTipsLabel: UILabel!
    @IBOutlet weak var lblTips: UILabel!
    @IBOutlet weak var lblDiscounts: UILabel!
    @IBOutlet weak var lblSubtotal: UILabel!
    @IBOutlet weak var lblTax: UILabel!
    @IBOutlet weak var lblTotalAmount: UILabel!
    
    @IBOutlet weak var btnVoid: UIButton!
    @IBOutlet weak var btnCashDrawer: UIButton!
    @IBOutlet weak var btnPrint: UIButton!
    @IBOutlet weak var btnDone: UIButton!
    @IBOutlet weak var btnQuickCash: UIButton!
    
    @IBOutlet weak var btnMenu: UIButton!
    @IBOutlet weak var btnTips: UIButton!
    @IBOutlet weak var btnDiscounts: UIButton!
    @IBOutlet weak var btnCustomers: UIButton!
    @IBOutlet weak var btnPayments: UIButton!
    
    @IBOutlet weak var btnExit: UIButton!
    
    @IBOutlet weak var conVw: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //void
        let x_pos = (btnVoid.frame.size.width / 2) - 16
        
        let leftImageView1 = UIImageView()
        leftImageView1.image = UIImage(named: "void")
        leftImageView1.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnVoid.addSubview(leftImageView1)
        
        //cash_drawer
        let leftImageView2 = UIImageView()
        leftImageView2.image = UIImage(named: "cash_drawer")
        leftImageView2.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnCashDrawer.addSubview(leftImageView2)
        
        
        //print
        
        let leftImageView3 = UIImageView()
        leftImageView3.image = UIImage(named: "print")
        leftImageView3.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnPrint.addSubview(leftImageView3)
        
        //done
        
        let leftImageView4 = UIImageView()
        leftImageView4.image = UIImage(named: "done")
        leftImageView4.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnDone.addSubview(leftImageView4)
        
        //quick_cash
        
        let leftImageView5 = UIImageView()
        leftImageView5.image = UIImage(named: "cash")
        leftImageView5.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnQuickCash.addSubview(leftImageView5)
        
        //tax
        
        let leftImageView6 = UIImageView()
        leftImageView6.image = UIImage(named: "details")
        leftImageView6.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnMenu.addSubview(leftImageView6)
        
        //tips
        
        let leftImageView7 = UIImageView()
        leftImageView7.image = UIImage(named: "tips")
        leftImageView7.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnTips.addSubview(leftImageView7)
        
        //discount
        
        let leftImageView8 = UIImageView()
        leftImageView8.image = UIImage(named: "discount")
        leftImageView8.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnDiscounts.addSubview(leftImageView8)
        
        //customer
        
        let leftImageView9 = UIImageView()
        leftImageView9.image = UIImage(named: "customer")
        leftImageView9.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnCustomers.addSubview(leftImageView9)
        
        //payment
        
        let leftImageView10 = UIImageView()
        leftImageView10.image = UIImage(named: "payment")
        leftImageView10.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnPayments.addSubview(leftImageView10)
        
        //exit
        
        let leftImageView11 = UIImageView()
        leftImageView11.image = UIImage(named: "cancel")
        leftImageView11.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
        
        btnExit.addSubview(leftImageView11)
        
        self.showTicketItems()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func btnVoid(_ sender: Any) {
        self.removeSubviews()
        
        conVw.isHidden = false
        
        let storyboard = UIStoryboard(name: "Ticket", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SelectVoidReason") as! SelectVoidReason

        
        vc.modalPresentationStyle = .overCurrentContext
        addChildViewController(vc)
        vc.view.frame = CGRect(x: 0, y: 0, width: conVw.frame.size.width, height: conVw.frame.size.height)
        conVw.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
    }

    @IBAction func btnCashDrawer(_ sender: Any) {
        self.showTicketItems()
    }
    
    @IBAction func btnPrint(_ sender: Any) {
        self.removeSubviews()
        
        conVw.isHidden = false
        
        let storyboard = UIStoryboard(name: "Ticket", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SelectTicketItem") as! SelectTicketItem
        vc.protocolDelegate = self
        
        vc.modalPresentationStyle = .overCurrentContext
        addChildViewController(vc)
        vc.view.frame = CGRect(x: 0, y: 0, width: conVw.frame.size.width, height: conVw.frame.size.height)
        conVw.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
    }
    
    @IBAction func btnDone(_ sender: Any) {
        
    }
    
    
    @IBAction func btnQuickCash(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Ticket", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ModalQuickCash") as! ModalQuickCash
        
       // vc.protocolDelegate = self
        
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func btnMenu(_ sender: Any) {
        self.showTicketItems()
    }
    
    @IBAction func btnTips(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Ticket", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ModalAddTips") as! ModalAddTips
        
        vc.protocolDelegate = self
        
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func btnDiscounts(_ sender: Any) {
        self.removeSubviews()
        
        conVw.isHidden = false
        
        let storyboard = UIStoryboard(name: "Ticket", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SelectDiscount") as! SelectDiscount
        vc.protocolDelegate = self
        vc.is_ticket = true
        
        vc.modalPresentationStyle = .overCurrentContext
        addChildViewController(vc)
        vc.view.frame = CGRect(x: 0, y: 0, width: conVw.frame.size.width, height: conVw.frame.size.height)
        conVw.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
    }

    @IBAction func btnCustomer(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Customer", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CustomerManagement") as! CustomerManagement
        
        self.present(vc, animated: false, completion: nil)
    }
    
    // Remove all child subviews before addsubviews
     func removeSubviews() {
        for view in self.conVw.subviews{
            view.removeFromSuperview()
        }
    }
    
    @IBAction func btnPayment(_ sender: Any) {
        self.removeSubviews()
        
        conVw.isHidden = false
        
        let storyboard = UIStoryboard(name: "Ticket", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TicketPayment") as! TicketPayment
        //vc.protocolDelegate = self
        
        vc.modalPresentationStyle = .overCurrentContext
        addChildViewController(vc)
        vc.view.frame = CGRect(x: 0, y: 0, width: conVw.frame.size.width, height: conVw.frame.size.height)
        conVw.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
    }
    
    @IBAction func btnExit(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    func showDiscountList(){
        self.removeSubviews()
    
        conVw.isHidden = false
    
        let storyboard = UIStoryboard(name: "Ticket", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SelectDiscount") as! SelectDiscount
        vc.is_ticket = false
        
        vc.modalPresentationStyle = .overCurrentContext
        addChildViewController(vc)
        vc.view.frame = CGRect(x: 0, y: 0, width: conVw.frame.size.width, height: conVw.frame.size.height)
        conVw.addSubview(vc.view)
    
        vc.didMove(toParentViewController: self)
    }
    
    func showEnterTips(){
        self.removeSubviews()
        
        conVw.isHidden = false
        
        let storyboard = UIStoryboard(name: "Ticket", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "EnterTips") as! EnterTips
        vc.protocolDelegate = self
        
        
        vc.modalPresentationStyle = .overCurrentContext
        addChildViewController(vc)
        vc.view.frame = CGRect(x: 0, y: 0, width: conVw.frame.size.width, height: conVw.frame.size.height)
        conVw.addSubview(vc.view)
        
        vc.didMove(toParentViewController: self)
    }
    
    func showTicketItems()
    {
        self.removeSubviews()
        
        conVw.isHidden = false
        
        let storyboard = UIStoryboard(name: "Ticket", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TicketItems") as! TicketItems
        
        
        vc.modalPresentationStyle = .overCurrentContext
        addChildViewController(vc)
        vc.view.frame = CGRect(x: 0, y: 0, width: conVw.frame.size.width, height: conVw.frame.size.height)
        conVw.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
    }
    
    
}



extension Ticket:SelectTicketItemViewControllerDelegate {
    func didOpenSelectTicketItem(viewController vc: SelectTicketItem, success: Bool)
    {
        //vc.dismiss(animated: true, completion: nil)
        
        if success
        {
            //vc.dismiss(animated: true, completion: nil)

            self.showDiscountList()

            
            
            
        }
        
    }
}

extension Ticket:SelectDiscountViewControllerDelegate {
    func didOpenSelectDiscount(viewController vc: SelectDiscount, success: Bool)
    {
        //vc.dismiss(animated: true, completion: nil)
        
        if success
        {
            //vc.dismiss(animated: true, completion: nil)
            
            //self.showDiscountList()
            
            
            
            
        }
        
    }
}

extension Ticket:ModalAddTipsViewControllerDelegate {
    func didOpenModalAddTips(viewController vc: ModalAddTips, button_str: String)
    {
        vc.dismiss(animated: true, completion: nil)
        
        if (button_str == "tips"){
            self.showEnterTips()
        }else if(button_str == "tax"){
            //remove or add tax
        }
        
    }
}

extension Ticket:EnterTipsViewControllerDelegate {
    func didOpenEnterTips(viewController vc: EnterTips, success: Bool, amount: String, is_percent: Bool)
    {
        //vc.dismiss(animated: true, completion: nil)
        
        self.showTicketItems()
        
        if success
        {
            //vc.dismiss(animated: true, completion: nil)
            
            //self.showDiscountList()
            if(is_percent){
                self.lblbTipsLabel.text = "Tips (\(amount)%):"
            }else{
                self.lblbTipsLabel.text = "Tips:"
            }
            
            self.lblTips.text = amount
            
            
            
        }
        
    }
}



