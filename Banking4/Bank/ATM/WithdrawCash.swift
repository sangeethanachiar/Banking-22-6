//
//  WithdrawCash.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 20/06/21.
//

import Foundation
class WithdrawCash {
    var ban = Bank()
    func withdrawCash(index : Int,amount : Int){
        var userIndex =  ban.getUserIndexFromCardno(cardNo: ban.cards[index].cardNo)
       
        if(ban.users[userIndex].cardType! == .debit ){
            
            obj.withdraw(index1: accountIndex, amt: amount)
        }
        if(ban.users[userIndex].cardType! == .credit ){
            
    }
       
}

    
}
