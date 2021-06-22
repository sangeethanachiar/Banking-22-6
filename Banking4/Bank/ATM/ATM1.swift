//
//  ATM.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class ATM1 {
    var ban = Bank()
    var totalCash = 10000
   
            func getScreen() {
                while(totalCash>0){
                        print("\nWelcome To ATM Service")
                    var obj1 = GetDetails()
                    obj1.getDetails();
                }
            }
    func bankServices(index:Int){
                              print("1.Withdrawal\n2.Balance Enquiry\n3.Pin Change \n4.Mini Statement\n5.exit")
                              print("Enter choice")
                              let choice = Int(readLine()!)
                              switch(choice){
                              case 1:
                                var obj2 = GetAmount()
                                obj2.getAmount(index: index)
                             
                              case 2:
                                
                                var obj3 = Printer()
                                obj3.printBalanceReciept(index: index)
                              case 3 :
                                var obj4 = PinChange()
                                obj4.pinChange(index:index)
                              case 4:
                               // var accountIndex = ban.getAccountByIndex(accountNo: cards[index].account.accNo)
                               // var obj =  Login()
                                //obj.transactionHistory(index: accountIndex)
                                
                                 var obj5 = MiniStatement()
                                obj5.transactionHistory(index: index)
                              case 5:
                                 exit(0)
                              default:
                                 print("invalid")
                              }
                       
                }
    
        
        
}
