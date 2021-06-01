//
//  ArrayList.swift
//  XDDataStructure
//
//  Created by try on 2021/5/18.
//

import Foundation
/**
 *动态数组
 */

fileprivate let DEFAULT_CAPACITY = 10

class ArrayList<T> {
    
    private var count = 0
    var eles: [T]
    
    init(capaticy:Int) {
        var c = capaticy
        if c < DEFAULT_CAPACITY {
            c = DEFAULT_CAPACITY
        }
        eles = []
        eles.reserveCapacity(c)
    }
    
    convenience init() {
        self.init(capaticy: DEFAULT_CAPACITY)
    }
    
    /// 元素的数量
    /// - Returns: <#description#>
    func size() -> Int {
        
        return count
    }
    
    /// <#Description#>
    /// - Returns: <#description#>
    func isEmpty() -> Bool {
        
        return count == 0
    }
    
    /// <#Description#>
    /// - Parameter ele: <#ele description#>
    func contains(ele:T) {
        
    }
    
    /// <#Description#>
    /// - Parameter ele: <#ele description#>
    func add(ele:T) {
        eles[count] = ele
        count += 1
    }
    
    /// <#Description#>
    /// - Parameter index: <#index description#>
    /// - Returns: <#description#>
    func get(index:Int) -> T? {
        return nil
    }
    
    /// <#Description#>
    /// - Parameters:
    ///   - index: <#index description#>
    ///   - ele: <#ele description#>
    /// - Returns: <#description#>
    func set(index: Int, ele:T) -> T? {
        return nil
    }
    
    /// <#Description#>
    /// - Parameters:
    ///   - index: <#index description#>
    ///   - ele: <#ele description#>
    func add(index: Int,ele:T) {
        
    }
    
    /// <#Description#>
    /// - Parameter index: <#index description#>
    /// - Returns: <#description#>
    func remove(index: Int) -> T? {
        return nil
    }
    
    /// <#Description#>
    /// - Parameter ele: <#ele description#>
    /// - Returns: <#description#>
    func indexOf(ele:T) -> Int {
        return 0
    }
    
    /// <#Description#>
    func clear()  {
        
    }
    
    func description() -> String {
        var str  = ""
        for index in 0..<count {
            
        }
        return str
    }
    
}
