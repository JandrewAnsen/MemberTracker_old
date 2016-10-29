//
//  Cabin.swift
//  MemberTracker2
//
//  Created by Andrew H T Jansen on 2016/10/18.
//  Copyright © 2016 Cowmpany. All rights reserved.
//

import Foundation
public class Cabin{
    
    var CabinNum: UInt64 = 0
    var CabinDesc: String = ""
    var Location: LocationEnum = LocationEnum.Unspecified
    
}


public class CabinCRUD{
    
    public typealias Row = [String:Any]
    public typealias ResultSet = [Row]
    
    //pass in a row retrieved from the database that contains all the fields of a member.
    static func RetrieveCabin(row: Row) -> Cabin
    {
        let retVal : Cabin = Cabin()
        
        retVal.CabinNum = row["CabinNum"] as! UInt64
        retVal.CabinDesc = row["CabinDesc"] as! String
        retVal.Location = LocationEnum(rawValue: row["Location"] as! UInt)!
        
        return retVal
    }
    
    //pass in a list of rows retrieved from the database where each row contains all the fields of a Cabin.
    static func RetrieveListCabin(rows: [Row]) -> [Cabin]
    {
        var returnVal: [Cabin] = [Cabin]()
        for row in rows {
            let retVal : Cabin = Cabin()
            retVal.CabinNum = row["CabinNum"] as! UInt64
            retVal.CabinDesc = row["CabinDesc"] as! String
            retVal.Location = LocationEnum(rawValue: row["Location"] as! UInt)!
            returnVal.append(retVal)
        }
        return returnVal
    }
}
