//
//  Model.swift
//  Looc5
//
//  Created by PK on 4/27/15.
//  Copyright (c) 2015 PK. All rights reserved.
//


import Foundation

class Model {
    var name: String?
    var num: String?
    var data: Array<String>?
    var secondLevel: Model?
}

private let _sharedInstance = ModelController()
class ModelController {
    class var sharedInstance: ModelController {
        return _sharedInstance
    }
    
    var modelArray: [Model] = [Model]()
    
    init() {
        let path = NSBundle.mainBundle().pathForResource("Questions", ofType: "plist")
        if let p = path {
            var stuff = NSArray(contentsOfFile: p) as! [AnyObject]
            for d in stuff {
                let m = Model()
                if let name = d["PictureName"] as? String {
                    m.name = name
                }
                if let num = d["PictureURL"] as? String {
                    m.num = num
                }
                if let secondLevel = d["Question - 1"] as? Dictionary<String, AnyObject> {
                    let m2 = Model()
                    if let name = secondLevel["Q"] as? String {
                        m2.name = name
                    }
                    
                    if let data = secondLevel["A"] as? Array<String> {
            
                        m2.data = data
                    }
                   
                    
                    m.secondLevel = m2
                }
                modelArray.append(m)
            }
        }
    }
}
