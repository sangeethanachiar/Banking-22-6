//
//  File8.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class User{
    var name : String
    var city : String
    var accountNo : Int
    var cardNo: Int?
    var cardType : type?
    enum type {
        case   debit , credit, none
    }
    init(name : String,city :String,accountNo : Int,cardNo : Int,cardType : type){
        self.name = name
        self.city = city
        self.accountNo = accountNo
        self.cardNo = cardNo
        self.cardType = cardType
    }
}
