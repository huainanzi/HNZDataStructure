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
class ArrayList<T:Hashable> {
    var elements:Array<T>
    let count = 0
    
    init(capacity:Int) {
        elements = Array<T>()
        elements.reserveCapacity(capacity)
    }
    
    convenience init() {
        
    }
    
    func size() -> Int {
        return arr.count
    }
    
    func isEmpty() -> Bool {
        
        return arr.count == 0
    }
    
    func contains(ele:T) -> Bool {
        
        return false
    }
    
    func add(ele: T) {
       
    }
    
    func get(index: Int) -> T? {
        return nil
    }
    
    func set(index: Int, ele: T) -> T? {
        return nil
    }
    
    func add(index: Int, ele: T) {
        
    }
    
    func remove(ele: T) {
        
    }
    
    func indexOf(ele: T) -> Int? {
        return nil
    }
    
    func clear() {
        
    }
}
