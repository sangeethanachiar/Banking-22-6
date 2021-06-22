//
//  GetAmount.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class GetAmount{
    var ban = Bank()
    var atm = ATM1()
    func getAmount(index : Int){
        print("Enter amount in multiple of Rs 100")
         let amt = Int(readLine()!)!
       
                if(validateAmount(amount: amt)){
                    if(validateAmountQuantity(amount: amt)){
                        if(amt <= atm.totalCash){
                       
                            var accountIndex = ban.getAccountByIndex(accountNo: cards[index].account.accNo)
                            var obj1 = BankOperation()
                           var result =  obj1.withdraw(index1: accountIndex, amt: amt)
                            if(result == 0){
                            var obj2 = Printer()
                            obj2.printTransactionReciept(index :index ,amt:amt)
                            atm.totalCash = atm.totalCash - amt
                            }
                            else{
                                var obj = Printer()
                                obj.printBalanceReciept(index:index)
                                exit(0)
                            }
                           
                        }
                        else{
                           
                            print("Insufficient balance in ATM")
                            
                        }
                    } // amt <= cash
                    else{
                     print("Maximum amouunt per transaction must not exceed limit of Rs.2000")
                        
                    }
                } // end validateAmountQuantity
                else{
                    print("Please enter amount in multiples of Rs 100")
                    
                }
        
            }  // end validateAmount
            
        

        
        func validateAmount(amount:Int)->Bool{
            if(amount %  100 == 0){
                return true
            }
            return false
            
        }
        
    func validateAmountQuantity(amount :Int)->Bool{
            if (amount <= 2000){
                return true
            }
            return false
        }
        
}
