//
//  Season.swift
//  MemberTracker2
//
//  Created by Andrew H T Jansen on 2016/10/18.
//  Copyright © 2016 Cowmpany. All rights reserved.
//

import Foundation
public class Season{
    var SeasonNum: UInt64 = 0
    var SeasonStartDate: NSDate = NSDate.distantPast()
    var SeasonEndDate: NSDate = NSDate.distantPast()
}


public class SeasonCRUD{
    
    public typealias Row = [String:Any]
    public typealias ResultSet = [Row]
    
    //pass in a row retrieved from the database that contains all the fields of a Season.
    static func RetrieveSeason(row: Row) -> Season
    {
        let retVal : Season = Season()
        
        retVal.SeasonNum = row["SeasonNum"] as! UInt64
        retVal.SeasonStartDate = row["SeasonStartDate"] as! NSDate
        retVal.SeasonEndDate = row["SeasonEndDate"] as! NSDate
        
        return retVal
    }
    
    //pass in a list of rows retrieved from the database where each row contains all the fields of a Season.
    static func RetrieveListSeason(rows: [Row]) -> [Season]
    {
        var returnVal: [Season] = [Season]()
        for row in rows {
            let retVal : Season = Season()
            retVal.SeasonNum = row["SeasonNum"] as! UInt64
            retVal.SeasonStartDate = row["SeasonStartDate"] as! NSDate
            retVal.SeasonEndDate = row["SeasonEndDate"] as! NSDate
            returnVal.append(retVal)
        }
        return returnVal
    }
}