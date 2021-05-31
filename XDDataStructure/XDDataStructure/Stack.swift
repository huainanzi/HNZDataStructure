//
//  Stack.swift
//  XDDataStructure
//
//  Created by Qiyeyun2 on 2021/5/31.
//

import Foundation

class Stack <T> {
    private var eles: [T] = []
    private var size: Int = 0
    
    /// <#Description#>
    /// - Returns: <#description#>
    func isEmpty() -> Bool {
        return size == 0
    }
    
    /// <#Description#>
    /// - Parameter ele: <#ele description#>
    func push(ele: T) {
        eles.append(ele)
        size += 1
    }
    
    /// <#Description#>
    /// - Returns: <#description#>
    func pop() -> T? {
        if isEmpty() {
            return nil
        }
        let ele = eles[size-1]
        eles.remove(at: size-1)
        size -= 1
        return ele
    }
    
    func top() -> T? {
        if isEmpty() {
            return nil
        }
        let ele = eles[size - 1]
        return ele
        
    }
    
    func description() -> String {
        var str = ""
        for index in 0..<size {
            
        }
        
        return str
    }
}
