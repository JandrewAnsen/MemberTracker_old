//
//  CabinMember.swift
//  MemberTracker2
//
//  Created by Andrew H T Jansen on 2016/10/18.
//  Copyright © 2016 Cowmpany. All rights reserved.
//

import Foundation
public class CabinMember{
    var CabinMemberNum: UInt64 = 0
    var MemberNum: UInt64 = 0
    var CabinNum: UInt64 = 0
    var SeasonNum: UInt64 = 0
    var ArrivalDate: NSDate = NSDate.distantPast()
    var DepartureDate: NSDate = NSDate.distantPast()
    
    
}


public class CabinMemberCRUD{
    
    public typealias Row = [String:Any]
    public typealias ResultSet = [Row]
    
    //pass in a row retrieved from the database that contains all the fields of a CabinMember.
    static func RetrieveCabinMember(row: Row) -> CabinMember
    {
        let retVal : CabinMember = CabinMember()
        
        retVal.CabinMemberNum = row["CabinMemberNum"] as! UInt64
        retVal.MemberNum = row["MemberNum"] as! UInt64
        retVal.CabinNum = row["CabinNum"] as! UInt64
        retVal.SeasonNum = row["SeasonNum"] as! UInt64
        retVal.ArrivalDate = row["ArrivalDate"] as! NSDate
        retVal.DepartureDate = row["DepartureDate"] as! NSDate
        
        return retVal
    }
    
    //pass in a list of rows retrieved from the database where each row contains all the fields of a CabinMember.
    static func RetrieveListCabinMember(rows: [Row]) -> [CabinMember]
    {
        var returnVal: [CabinMember] = [CabinMember]()
        for row in rows {
            let retVal : CabinMember = CabinMember()
            retVal.CabinMemberNum = row["CabinMemberNum"] as! UInt64
            retVal.MemberNum = row["MemberNum"] as! UInt64
            retVal.CabinNum = row["CabinNum"] as! UInt64
            retVal.SeasonNum = row["SeasonNum"] as! UInt64
            retVal.ArrivalDate = row["ArrivalDate"] as! NSDate
            retVal.DepartureDate = row["DepartureDate"] as! NSDate
            returnVal.append(retVal)
        }
        return returnVal
    }
}
