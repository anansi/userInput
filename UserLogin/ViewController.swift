//
//  ViewController.swift
//  UserLogin
//
//  Created by Julian Hulme on 2016/06/28.
//  Copyright © 2016 Julian Hulme. All rights reserved.
//

import UIKit

class CreditCard    {
}

enum Gender : String {
    
    case MALE = "Male"
    case FEMALE = "Female"
    
}

class User {
    
    var gender:Gender
    var email: String
    var password: String
    var firstName:String
    
    var middleName: String?
    var lastName:String
    var creditCard:CreditCard?
    
    
    init(email:String, password:String, firstName:String, middleName:String?, lastName:String, gender:Gender)  {
        
        self.email = email
        self.password = password
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
        self.gender = gender
        
    }
}

class ViewController: UIViewController {

    var userList:[User] = []
    
    @IBOutlet weak var genderMaleSwitch: UISwitch!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var middleNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addNewUserTapped(sender: UIButton) {
        
        //TODO check if the user entered middlename, the optional input in the input screen and create a variable thats either nil or the value of middleName
        
        //Example: Checking if the required email field is valid
        if (emailField.text == "")   {
            //the email was not entered, print that adding a new user is going to fail
            print("Adding a user failed, as the email was not provided")
            //return out of this function, as we are no longer going to continue
            return
        }
        
        //TODO check if all the other values were given on the input screen, like with email
        
        //TODO get the Gender enum for the user based on what the user gave as input
        
        //TODO initialise a new user object and set its attributes from the input data received
        //let user = ...
        
        //now save the user
        //self.userList.append(user)
        
        //print a message to indicate that the user was saved successfully
        print("user saved. A total of \(userList.count) users stored")

    }

}

