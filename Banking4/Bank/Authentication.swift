//
//  File10.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class Authentication : Validate{
    var ban = Bank()
    func validate(index: Int,password  :String)->Bool{
        if(cards[index].pinNo == password){
            return true
        }
         return false
        }
        func validatePinInvalidCount(index:Int)->Bool{
            if(cards[index].pinValidationCount < 3){
                return true
            }
            return false
        }
        
        
}
