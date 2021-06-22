//
//  GetDetails.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class GetDetails{
    var ban = Bank()
    var auth = Authentication()
    var atm = ATM1()
    
    func getDetails(){
    print("Enter Card No")
    let cardNo = Int(readLine()!)!
    let index = ban.getCardsByIndex(cardNo:cardNo)
    if(index != -1 ){
    if(cards[index].cardStatus){
        print("Enter the pin")
        let pinNo = readLine()!
        if(auth.validate(index:index,password:pinNo)){
            atm.bankServices(index:index)
             } // validate pin
        else{
          cards[index].pinValidationCount += 1
            if(!(auth.validatePinInvalidCount(index:index))){
                  cards[index].cardStatus  = false
        print("Account has been blocked permanently...Due to three invalid attempts")
            }
             else{
                print("invalid pin.. try again")
                  }
            }
        } // card.Status
    else{
        print("card has been blocked permanently")
            }
    }  // index != -1
    else {
        print("Invalid card no .card doesnot exist")
        }
   }
}

