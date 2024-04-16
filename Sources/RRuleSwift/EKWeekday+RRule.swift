//
//  EKWeekday+RRule.swift
//  RRuleSwift
//
//  Created by Xin Hong on 16/3/28.
//  Copyright © 2016年 Teambition. All rights reserved.
//

import EventKit

internal extension EKWeekday {
    
    func toSymbol() -> String {
        
        switch self {
        case .monday: "MO"
        case .tuesday: "TU"
        case .wednesday: "WE"
        case .thursday: "TH"
        case .friday: "FR"
        case .saturday: "SA"
        case .sunday: "SU"
        }
        
    }

    func toNumberSymbol() -> Int {
        
        switch self {
        case .monday: 0
        case .tuesday: 1
        case .wednesday: 2
        case .thursday: 3
        case .friday: 4
        case .saturday: 5
        case .sunday: 6
        }
        
    }

    static func weekdayFromSymbol(_ symbol: String) -> EKWeekday? {
        
        switch symbol {
        case "MO", "0": EKWeekday.monday
        case "TU", "1": EKWeekday.tuesday
        case "WE", "2": EKWeekday.wednesday
        case "TH", "3": EKWeekday.thursday
        case "FR", "4": EKWeekday.friday
        case "SA", "5": EKWeekday.saturday
        case "SU", "6": EKWeekday.sunday
        default: nil
        }
        
    }
    
}

extension EKWeekday: Comparable { }

public func <(lhs: EKWeekday, rhs: EKWeekday) -> Bool {
    
    lhs.toNumberSymbol() < rhs.toNumberSymbol()
    
}

public func ==(lhs: EKWeekday, rhs: EKWeekday) -> Bool {
    
    lhs.toNumberSymbol() == rhs.toNumberSymbol()
    
}
