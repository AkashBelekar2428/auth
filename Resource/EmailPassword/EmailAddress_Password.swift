//
//  EmailAddress_Password.swift
//  Reusable
//
//  Created by Akash Belekar on 28/04/23.
//

import UIKit
//protocol EmailAddress_PasswordDelegate{
//    func validate(username:String,password:String,addView:UIViewController)
//}

public class EmailAddress_Password: UIView {
    @IBOutlet weak var emailAddressLbl:UILabel!
    @IBOutlet weak var tfEmailAddress:UITextField!
    @IBOutlet weak var tfPassword:UITextField!
    @IBOutlet weak var validateBtn:UIButton!
    @IBOutlet weak var eyeImg:UIImageView!
    
  public let nibName = "EmailAddress_Password"
   // var delegate:EmailAddress_PasswordDelegate?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    @IBAction func validateBtnAction(_ sender:UIButton){
        if Utility.shared.isValideEmail(email: tfEmailAddress.text!){
            if Utility.shared.isPasswordValide(password: tfPassword.text!){
                print("Success")
            }else{
                Utility.shared.showAltersBtn(title: "Password", msg: "Invalide Password", firstAction: "DONE", secondAction: "CANCLE", firstComplition: {
                    //Action
                }, secondComplition: {
                    //Action
                }, viewController: UIViewController(nibName: "EmailAddress_Password", bundle: nil))
            }
        }else{
            Utility.shared.showAltersBtn(title: "Email", msg: "Invalide Email Address", firstAction: "OK", secondAction: "CANCLE", firstComplition: {
                //Action
            }, secondComplition: {
                //Action
            }, viewController: UIViewController())
        }        
    }
}

