//
//  MemberType.swift
//  MemberTracker2
//
//  Created by Andrew H T Jansen on 2016/10/18.
//  Copyright © 2016 Cowmpany. All rights reserved.
//

import Foundation
public class MemberType{
    var MemberTypeNum: UInt64 = 0
    var MemberTypeDescript: String = ""
    var IsHidden: Bool = false
    
}

public class MemberTypeCRUD{
    
    public typealias Row = [String:Any]
    public typealias ResultSet = [Row]
    
    //pass in a row retrieved from the database that contains all the fields of a MemberType.
    static func RetrieveMemberType(row: Row) -> MemberType
    {
        let retVal : MemberType = MemberType()
        
        retVal.MemberTypeNum = row["MemberTypeNum"] as! UInt64
        retVal.MemberTypeDescript = row["MemberTypeDescript"] as! String
        retVal.IsHidden = row["IsHidden"] as! Bool
        
        return retVal
    }
    
    //pass in a list of rows retrieved from the database where each row contains all the fields of a MemberType.
    static func RetrieveListMemberType(rows: [Row]) -> [MemberType]
    {
        var returnVal: [MemberType] = [MemberType]()
        for row in rows {
            let retVal : MemberType = MemberType()
            retVal.MemberTypeNum = row["MemberTypeNum"] as! UInt64
            retVal.MemberTypeDescript = row["MemberTypeDescript"] as! String
            retVal.IsHidden = row["IsHidden"] as! Bool
            returnVal.append(retVal)
        }
        return returnVal
    }
}