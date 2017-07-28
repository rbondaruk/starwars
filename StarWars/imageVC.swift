//
//  imageVC.swift
//  StarWars
//
//  Created by Robert Bondaruk on 2/6/17.
//  Copyright © 2017 Fred. All rights reserved.
//

import UIKit

class imageVC: UIViewController {

    //"films","people","planets","species","starships","vehicles"
    
    var nodePick = ""
    
    @IBAction func buttonFilms(_ sender: Any) {
        nodePick = "films"
        performSegue(withIdentifier: "segueToData2", sender: nil)
    }

    @IBAction func buttonPeople(_ sender: Any) {
        nodePick = "people"
        performSegue(withIdentifier: "segueToData2", sender: nil)
    }
    
    @IBAction func buttonPlanets(_ sender: Any) {
        nodePick = "planets"
        performSegue(withIdentifier: "segueToData2", sender: nil)
    }
    
    @IBAction func buttonSpecies(_ sender: Any) {
        nodePick = "species"
        performSegue(withIdentifier: "segueToData2", sender: nil)
    }
    
    @IBAction func buttonStarships(_ sender: Any) {
        nodePick = "starships"
        performSegue(withIdentifier: "segueToData2", sender: nil)
    }
    
    @IBAction func buttonVehicles(_ sender: Any) {
        nodePick = "vehicles"
        performSegue(withIdentifier: "segueToData2", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToData2" {
            if let dest = segue.destination as?
                dataVC {
                dest.node = nodePick
            }
        }
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
