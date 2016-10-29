//
//  Queries.swift
//  MemberTracker2
//
//  Created by Andrew H T Jansen on 2016/10/21.
//  Copyright © 2016 Cowmpany. All rights reserved.
//

import Foundation
import MySqlSwiftNative
public class Queries{
    private static let con = MySQL.Connection()
    private static let db_name="memberTracker"
    
    public static func Connect() {
        do{
            // open a new connection
            try con.open("localhost", user: "root", passwd: "")
            
            // select the database
            try con.use(db_name)
            
        }
        catch (let e) {
            print(e)
        }
    }
    
    public static func GetAllMembers() ->[Member]{
        var retVal = [Member]()
        
        retVal.append(Member())
        
        do {
            // prepare a new statement for select
            let select_stmt = try con.prepare("SELECT * FROM Member")
            
            // send query
            let res = try select_stmt.query([]) //pass in the values of the "?" in order. Since we're selecting all, pass in an empty list.
            
            //read all rows from the resultset
            let rows = try res.readAllRows()
            
            // print the rows
            print(rows)
        }
        catch (let err) {
            // if we get a error print it out
            print(err)
        }
        
        return retVal
    }
    
    
    
    
    
}
