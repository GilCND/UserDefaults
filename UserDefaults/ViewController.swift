//
//  ViewController.swift
//  UserDefaults
//
//  Created by Felipe Gil on 2021-06-29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let defaults = UserDefaults.standard
        defaults.set(32, forKey: "Age")
        defaults.set(true, forKey: "UseFaceID")
        defaults.set(CGFloat.pi, forKey: "Pi")
        
        defaults.set("Felipe G", forKey: "Name")
        defaults.set(Date(), forKey: "LastRun")
        
        let array = ["Hello","World!"]
        defaults.set(array, forKey: "SavedArray")
        
        let dictionary = ["Name": "Felipe", "Country": "BR"]
        defaults.set(dictionary, forKey: "SavedDictionary")
        
        let saveInteger = defaults.integer(forKey: "Age")
        let saveBoolean = defaults.bool(forKey: "UseFaceID")
        
        let savedArray = defaults.object(forKey: "SavedArray") as? [String] ?? []
        let saveDictionary = defaults.object(forKey: "SavedDictionary") as? [String: String] ?? [:]
    }
}

