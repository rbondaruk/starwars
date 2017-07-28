//
//  ViewController.swift
//  StarWars
//
//  Created by Robert Bondaruk on 2/3/17.
//  Copyright © 2017 Fred. All rights reserved.
//

import UIKit

class dataVC: UIViewController {

    @IBOutlet weak var textOutput: UITextView!
    
    var node = ""
    var results = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://swapi.co/api/\(node)/") {
            //print("got url")
            let task = URLSession.shared.dataTask(with: url) {
                (data, response, error) in
                if error != nil {
                    print(error)
                }
                else {
                    //print("got task")
                    if let urlContent = data {
                        //print("getting data")
                        do {
                            let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                            //print(jsonResult)
                            let count = jsonResult["count"]
                            
                            //Parse JSON data
                            let jsonRs = jsonResult["results"] as! [AnyObject]
                            for jsonR in jsonRs {
                                if self.node == "films" {
                                    //print(jsonR["title"] as! String)
                                    self.results = self.results + (jsonR["title"] as! String) + "\n"
                                }
                                else {
                                    self.results = self.results + (jsonR["name"] as! String) + "\n"
                                }
                            }
                            //print("\(self.ships)")
                            DispatchQueue.main.sync(execute: {
                                self.textOutput.text = self.results })
                        }
                        catch {
                            
                        }
                    }
                }
            }
            task.resume()
            
        }
 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
