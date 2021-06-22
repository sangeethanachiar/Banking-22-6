//
//  File11.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class Transaction{
    var amount : Double
   // var transactionCount : Int
    var description : String?
    init(amount:Double,description :String){
        self.amount = amount
      //  self.transactionCount = transactionCount
        self.description = description
    }
}

