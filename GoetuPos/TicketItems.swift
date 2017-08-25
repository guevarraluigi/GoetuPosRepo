//
//  TicketItems.swift
//  GoetuPos
//
//  Created by Luigi Guevarra on 8/14/17.
//  Copyright © 2017 Luigi Guevarra. All rights reserved.
//

import UIKit

class TicketItems: UIViewController {



    @IBOutlet weak var btnService: UIButton!
    @IBOutlet weak var btnProducts: UIButton!
    @IBOutlet weak var btnPackages: UIButton!
    @IBOutlet weak var btnGiftCards: UIButton!
    
    @IBOutlet weak var colVw: UICollectionView!
    @IBOutlet weak var tblVw: UITableView!
    
    @IBOutlet weak var colVwLeading: NSLayoutConstraint!
    
    var not_selected_color: UIColor!
    var selected_color: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.not_selected_color = btnProducts.backgroundColor
        self.selected_color = btnService.backgroundColor

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

    @IBAction func btnServices(_ sender: Any) {
        btnService.backgroundColor = self.selected_color
        btnProducts.backgroundColor = self.not_selected_color
        btnPackages.backgroundColor = self.not_selected_color
        btnGiftCards.backgroundColor = self.not_selected_color
        
        colVwLeading.constant = 154
        tblVw.isHidden = false
        
    }
    
    @IBAction func btnProducts(_ sender: Any) {
        btnService.backgroundColor = self.not_selected_color
        btnProducts.backgroundColor = self.selected_color
        btnPackages.backgroundColor = self.not_selected_color
        btnGiftCards.backgroundColor = self.not_selected_color
        
        colVwLeading.constant = 0
        tblVw.isHidden = true
        
    }
    
    @IBAction func btnPackages(_ sender: Any) {
        btnService.backgroundColor = self.not_selected_color
        btnProducts.backgroundColor = self.not_selected_color
        btnPackages.backgroundColor = self.selected_color
        btnGiftCards.backgroundColor = self.not_selected_color
        
        colVwLeading.constant = 0
        tblVw.isHidden = true
        
        
    }
    
    @IBAction func btnGiftCards(_ sender: Any) {
        btnService.backgroundColor = self.not_selected_color
        btnProducts.backgroundColor = self.not_selected_color
        btnPackages.backgroundColor = self.not_selected_color
        btnGiftCards.backgroundColor = self.selected_color
        
        colVwLeading.constant = 0
        tblVw.isHidden = true
        
        
    }


}
