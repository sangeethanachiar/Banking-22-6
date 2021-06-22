//
//  Login.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 21/06/21.
//

import Foundation
var userName : String = ""
var password : String = ""

class Login {
    var on = OnlineBanking()
    var ban = Bank()
   
    
    
    func login(){
        print("1.New user\n2.Existing user\n")
        print("Enter your choice")
        let ch = Int(readLine()!)!
            switch(ch){
            case 1:
                newUser()
            case 2:
                existingUser()
            default:
                print("Invalid")
                }
        }
        
        
        
        
        
    func newUser(){
        print("Enter username ")
         userName = readLine()!
        print("Enter password")
         password = readLine()!
        print("\n1.Add Your Account\n2.exit")
        print("Enter your choice")
        let ch = Int(readLine()!)!
            switch(ch){
            case 1:
             var obj1 =    AddAccount()
                obj1.addAccount()
            case 2:
               exit(0)
            default:
                print("Invalid")
                }
        }
    
        
    func existingUser(){
        print("Enter username ")
        let user = readLine()!
        print("Enter password")
        let pass = readLine()!
        if(user == userName && pass == password){
          print("1.FundTransfer\n2.Transaction History")
            print("Enter your choice")
            let ch = Int(readLine()!)!
                switch(ch){
                case 1:
                 var obj1 = BankOperation()
                    var accountIndex = ban.getAccountByIndex(accountNo: myAccount.accNo)
                    obj1.transferFund(index1: accountIndex)
                case 2:
                   
                   // var accountIndex = ban.getAccountByIndex(accountNo: myAccount.accNo)
                   var ob = AddAccount()
                    
                    transactionHistory(index:ob.myAccountIndex )
                default:
                    print("Invalid")
                    }
            }
        else{
            print("Password or username Invalid...Try Again")
            existingUser()
        }
    }
   func transactionHistory(index: Int){
        
     /*   if(accounts[index].transactions.count  == 0){
            print("No transactions")
        }*/
  //      else{
        print(" s.no            Amount         Description")
        for i  in     0..<accounts[index].transactions.count {
            print("\(i+1)  \( accounts[index].transactions[i].amount)    \( accounts[index].transactions[i].description!)")
        }
   // }
}
}
