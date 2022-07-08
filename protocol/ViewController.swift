//
//  ViewController.swift
//  protocol
//
//  Created by Kullanici on 7.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var obj = user(iname: "melih", iage: 25)
        get(p: obj)
             
         }

         func get(p: vip){
             p.nameGetter()
             p.ageGetter()
         }

     }

     protocol vip {
         var name: String? {get}
         var age: Int? {get}
         
         func nameGetter()
         func ageGetter()
     }

     class user: vip {
         
         var name: String?
         var age: Int?
         
         init () {}
         
         init(iname: String?, iage: Int?) {
             name = iname
             age = iage
         }
         
         func nameGetter() {
             print(name!)
         }
         
         func ageGetter() {
             print(age!)
         }
         
     }

