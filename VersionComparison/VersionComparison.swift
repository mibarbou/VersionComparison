//
//  VersionComparison.swift
//  VersionComparison
//
//  Created by Michel on 15/06/2017.
//
//

import Foundation

class VersionComparison {
    
    static func isVersion(_ v1: String, newerOrEqualThan v2: String) -> Bool {
        
        let ver1 = normalizeVersion(string: v1)
        let ver2 = normalizeVersion(string: v2)
        
        return isSuperiorOrEqual(firstVersion: ver1, secondVersion: ver2)
    }
    
    private static func normalizeVersion(string: String) -> String {
        
        let stringArray = string.components(separatedBy: ".")
        
        if stringArray.count == 3 {
            return string
        } else if stringArray.count == 2 {
            return string + ".0"
        } else if stringArray.count == 1 {
            return string + ".0.0"
        }
        
        return ""
    }
    
    private static func isSuperiorOrEqual(firstVersion v1: String, secondVersion v2: String) -> Bool {
        
        let v1Array = getIntArrayFor(version: v1)
        let v2Array = getIntArrayFor(version: v2)
        
        if v1Array[0] > v2Array[0] {
            return true
        } else if v1Array[0] < v2Array[0] {
            return false
        } else if v1Array[1] > v2Array[1] {
            return true
        } else if v1Array[1] < v2Array[1] {
            return false
        } else if v1Array[2] > v2Array[2] {
            return true
        }  else if v1Array[2] < v2Array[2] {
            return false
        } else {
            return true
        }
    }
    
    private static func isEqual(firstVersion v1: String, secondVersion v2: String) -> Bool {
        
        let v1Array = getIntArrayFor(version: v1)
        let v2Array = getIntArrayFor(version: v2)
        
        if v1Array[0] != v2Array[0] {
            return false
        } else if v1Array[1] != v2Array[1] {
            return false
        } else if v1Array[2] != v2Array[2] {
            return false
        }  else {
            return true
        }
    }
    

    private static func getIntArrayFor(version: String) -> [Int] {
        
        let stringArray = version.components(separatedBy: ".")
        
        var array = [Int]()
        
        for str in stringArray {
            
            let num = Int(str)
            if let n = num {
                array.append(n)
            }
        }
        
        return array
    }
    
}
