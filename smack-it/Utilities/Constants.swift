//
//  Constants.swift
//  smack-it
//
//  Created by Krishna Torrence on 1/16/19.
//  Copyright © 2019 Krishna Torrence. All rights reserved.
//

import Foundation

//Renaming a type
typealias CompletionHandler = (_ Success: Bool) -> ()

//URL Constants
let BASE_URL = "https://smack-it.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//Headers
let HEADER = [
    "Content-Type" : "application/json; charset=utf-8"
]
