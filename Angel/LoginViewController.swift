//
//  LoginViewController.swift
//  Angel
//
//  Created by kingcyk on 29/01/2017.
//  Copyright © 2017 kingcyk. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var DoneBtn: UIBarButtonItem!
    @IBOutlet weak var UserTF: UITextField!
    @IBOutlet weak var PwdTF: UITextField!
    @IBOutlet weak var ServerTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as! NSObject == self.DoneBtn {
            UserDefaults.standard.set(UserTF.text, forKey: "ID")
            UserDefaults.standard.set(PwdTF.text, forKey: "PWD")
            UserDefaults.standard.set(ServerTF.text, forKey: "Server")
        }
    }
    

}
