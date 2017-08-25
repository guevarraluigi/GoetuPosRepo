//
//  Main.swift
//  GoetuPos
//
//  Created by Luigi Guevarra on 8/10/17.
//  Copyright © 2017 Luigi Guevarra. All rights reserved.
//

import UIKit

class Main: UIViewController {

    
    
    @IBOutlet weak var btnFunction: UIButton!
    @IBOutlet weak var btnMove: UIButton!
    @IBOutlet weak var btnCheckIn: UIButton!
    @IBOutlet weak var btnAppointment: UIButton!
    @IBOutlet weak var btnWaitList: UIButton!
    @IBOutlet weak var btnFastSale: UIButton!
    @IBOutlet weak var btnRefund: UIButton!
    @IBOutlet weak var btnExit: UIButton!

    
    @IBOutlet weak var btnAppointmentList: UIButton!
    @IBOutlet weak var btnInServiceList: UIButton!
    @IBOutlet weak var btnWaitingList: UIButton!
    
    
    var not_selected_color: UIColor!
    var selected_color: UIColor!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.not_selected_color = btnAppointmentList.backgroundColor
        self.selected_color = btnInServiceList.backgroundColor

    }
    
    
    func setupButtons(){
        
    let x_pos = (btnFunction.frame.size.width / 2) - 16
    
    let leftImageView1 = UIImageView()
    leftImageView1.image = UIImage(named: "function")
    leftImageView1.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
    
    btnFunction.addSubview(leftImageView1)
    
    let leftImageView2 = UIImageView()
    leftImageView2.image = UIImage(named: "move")
    leftImageView2.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
    
    btnMove.addSubview(leftImageView2)
    
    let leftImageView3 = UIImageView()
    leftImageView3.image = UIImage(named: "check_in")
    leftImageView3.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
    
    btnCheckIn.addSubview(leftImageView3)
    
    let leftImageView4 = UIImageView()
    leftImageView4.image = UIImage(named: "appointment")
    leftImageView4.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
    
    btnAppointment.addSubview(leftImageView4)
    
    let leftImageView5 = UIImageView()
    leftImageView5.image = UIImage(named: "waitlist")
    leftImageView5.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
    
    btnWaitList.addSubview(leftImageView5)
    
    let leftImageView6 = UIImageView()
    leftImageView6.image = UIImage(named: "fastsale")
    leftImageView6.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
    
    btnFastSale.addSubview(leftImageView6)
    
    let leftImageView7 = UIImageView()
    leftImageView7.image = UIImage(named: "refund")
    leftImageView7.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
    
    btnRefund.addSubview(leftImageView7)
    
    let leftImageView8 = UIImageView()
    leftImageView8.image = UIImage(named: "exit")
    leftImageView8.frame = CGRect(x: x_pos, y: 5, width: 32, height: 32)
    
    btnExit.addSubview(leftImageView8)
    
    
    }
    
    override func viewDidAppear(_ animated: Bool) {

        //print("subviews = \()")
        
        if(self.btnFunction.subviews.count == 1){
            setupButtons()
        }

        

    }
    
    
    
    @IBAction func btnAppointmentList(_ sender: Any) {
        btnAppointmentList.backgroundColor = self.selected_color
        btnInServiceList.backgroundColor = self.not_selected_color
        btnWaitingList.backgroundColor = self.not_selected_color
    }

    @IBAction func btnInServiceList(_ sender: Any) {
        btnAppointmentList.backgroundColor = self.not_selected_color
        btnInServiceList.backgroundColor = self.selected_color
        btnWaitingList.backgroundColor = self.not_selected_color
    }

    @IBAction func btnWaitingList(_ sender: Any) {
        btnAppointmentList.backgroundColor = self.not_selected_color
        btnInServiceList.backgroundColor = self.not_selected_color
        btnWaitingList.backgroundColor = self.selected_color
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnFunction(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Function", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Function") as! Function
        
       // vc.modalPresentationStyle = .overCurrentContext
        
        
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ModalCategories") as! ModalCategories
//        vc.protocolDelegate = self
//        
//        vc.category_info.id = ""
//        vc.category_info.name = ""
//        vc.category_info.notes = ""
//        vc.isEdit = false
        
        
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func btnMove(_ sender: Any) {
        
    }
    
    @IBAction func btnCheckIn(_ sender: Any) {
        
    }
    
    @IBAction func btnAppointmentBook(_ sender: Any) {
        
    }
    
    @IBAction func btnWaitList(_ sender: Any) {
        
    }

    @IBAction func btnFastSale(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Ticket", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Ticket") as! Ticket
        
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func btnRefund(_ sender: Any) {
        
    }
    
    @IBAction func btnExit(_ sender: Any) {
        
    }

    
}

