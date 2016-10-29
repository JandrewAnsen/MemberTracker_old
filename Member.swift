//
//  Member.swift
//  MemberTracker2
//
//  Created by Andrew H T Jansen on 2016/10/18.
//  Copyright © 2016 Cowmpany. All rights reserved.
//

import Foundation
import MySqlSwiftNative

public class Member{
    
    var MemberNum: UInt64 = 0
    var Birthdate: NSDate = NSDate.distantPast()
    var Gender: GenderEnum = GenderEnum.Unspecified
    var MemberTypeNum : UInt64 = 0
    var FName: String = ""
    var LName: String = ""
    var MName: String = ""
    var Phone: String = ""
    var Cell: String = ""
    var Email: String = ""
}


public class MemberCRUD{
    
    public typealias Row = [String:Any]
    public typealias ResultSet = [Row]

    //pass in a row retrieved from the database that contains all the fields of a member.
    static func RetrieveMember(row: Row) -> Member
    {
        let retVal : Member = Member()
        
        retVal.MemberNum = row["MemberNum"] as! UInt64
        retVal.Birthdate = row["Birthdate"] as! NSDate
        retVal.Gender = GenderEnum(rawValue: row["Gender"] as! UInt)!
        retVal.MemberTypeNum = row["MemberTypeNum"] as! UInt64
        retVal.FName = row["FName"] as! String
        retVal.LName = row["LName"] as! String
        retVal.Phone = row["Phone"] as! String
        retVal.Cell = row["Cell"] as! String
        retVal.Email = row["Email"] as! String
        
        return retVal
    }

    //pass in a list of rows retrieved from the database where each row contains all the fields of a member.
    static func RetrieveListMember(rows: [Row]) -> [Member]
    {
        var returnVal: [Member] = [Member]()
        for row in rows {
            let retVal : Member = Member()
            retVal.MemberNum = row["MemberNum"] as! UInt64
            retVal.Birthdate = row["Birthdate"] as! NSDate
            retVal.Gender = GenderEnum(rawValue: row["Gender"] as! UInt)!
            retVal.MemberTypeNum = row["MemberTypeNum"] as! UInt64
            retVal.FName = row["FName"] as! String
            retVal.LName = row["LName"] as! String
            retVal.Phone = row["Phone"] as! String
            retVal.Cell = row["Cell"] as! String
            retVal.Email = row["Email"] as! String
            returnVal.append(retVal)
        }
        return returnVal
    }
}

