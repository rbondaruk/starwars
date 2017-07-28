//
//  startVC.swift
//  StarWars
//
//  Created by Robert Bondaruk on 2/4/17.
//  Copyright © 2017 Fred. All rights reserved.
//

import UIKit

class pickerVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var swPicker: UIPickerView!
    
    @IBAction func goButton(_ sender: Any) {
        performSegue(withIdentifier: "segueToData", sender: nil)
    }

    var pickerData: [String] = ["films","people","planets","species","starships","vehicles"]
    
    var nodePick = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nodePick = "films"
        
        // Connect data:
        self.swPicker.delegate = self
        self.swPicker.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToData" {
            if let dest = segue.destination as?
                dataVC {
                dest.node = nodePick
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Load the picker data
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    // The number of rows in the picker
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) ->
        Int {
            return pickerData.count
    }
    
    // The number of columns in the picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Capture the picker selection
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        nodePick = pickerData[row]
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
