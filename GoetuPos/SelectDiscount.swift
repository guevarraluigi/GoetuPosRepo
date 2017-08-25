//
//  SelectDiscount.swift
//  GoetuPos
//
//  Created by Luigi Guevarra on 8/16/17.
//  Copyright © 2017 Luigi Guevarra. All rights reserved.
//

import UIKit

protocol SelectDiscountViewControllerDelegate {
    func didOpenSelectDiscount(viewController vc: SelectDiscount, success: Bool)
}

class SelectDiscount: UIViewController {

    @IBOutlet weak var lblTopLabel: UILabel!
    @IBOutlet weak var txtDiscounts: UITextField!
    @IBOutlet weak var colVw: UICollectionView!
    
    var protocolDelegate : SelectDiscountViewControllerDelegate?
    
    var is_ticket = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    



}
