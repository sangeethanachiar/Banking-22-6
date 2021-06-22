//
//  main.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation





class Manager {
    
    func getChoice(){
        var ban = Bank()
        var data = Database()
        data.createDatabase()

    print("1.Bank\n2.Online Banking\n3.ATM ")
        print("Enter your choice")
        let ch = Int(readLine()!)
        switch(ch){
        case 1:
            
            print("Welcome to the Bank")
           var obj1 = Bank()
            obj1.getUserType()
            getChoice()
        case 2:
            var  obj = OnlineBanking()
            obj.openApp()
            getChoice()
        case 3:
            
           var atm =  ATM1()
            atm.getScreen()
            getChoice()
        default :
            print("Invalid")
        }
}
    
    
}
var obj = Manager()
//obj.viewAccounts()
obj.getChoice()

/*
func viewAccounts(){
    for items in ban.accounts{
        print("hi")
        print(items.accNo)
    }
}
viewAccounts()*/
