//
//  switchVC.swift
//  StarWars
//
//  Created by Robert Bondaruk on 2/6/17.
//  Copyright © 2017 Fred. All rights reserved.
//

import UIKit

class switchVC: UIViewController {

    @IBAction func buttonPicker(_ sender: Any) {
        performSegue(withIdentifier: "segueToPicker", sender: nil)
    }
    
    @IBAction func buttonImages(_ sender: Any) {
        performSegue(withIdentifier: "segueToImages", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
