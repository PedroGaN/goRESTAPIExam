//
//  Model.swift
//  GoRestTest
//
//  Created by Rodrigo Hernández Gómez on 17/12/2020.
//  Copyright © 2020 Rodrigo Hernández Gómez. All rights reserved.
//

import Foundation

class User : Codable {
    
    var name : String?
    var gender : String?
    var email : String?
    var status : String?
    
    init (name : String?, gender : String?, email : String?, status : String?){
        
        if name != "" {self.name = name}
        if gender != "" {self.gender = gender}
        if email != "" {self.email = email}
        if status != "" {self.status = status}
        
    }
    
}
