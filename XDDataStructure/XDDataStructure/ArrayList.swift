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

class ArrayList<T:Equatable> {
    
    private var count = 0
    var eles: [T?]
    
    init(capaticy:Int) {
        var c = capaticy
        if c < DEFAULT_CAPACITY {
            c = DEFAULT_CAPACITY
        }
        eles = Array(repeating: nil, count: c)
    }
    
    convenience init() {
        self.init(capaticy: DEFAULT_CAPACITY)
    }
    
    /// 元素的数量
    /// - Returns:
    func size() -> Int {
        
        return count
    }
    
    /// 判断数组是否为空
    /// - Returns:
    func isEmpty() -> Bool {
        
        return count == 0
    }
    
    /// 是否包含某元素
    /// - Parameter ele:
    func contains(ele:T) -> Bool {
        for index in 0..<count {
            let value = eles[index]
            if value == ele {
                return true
            }
        }
        return false
    }
    
    /// 尾部添加元素
    /// - Parameter ele:
    func add(ele:T) {
//        eles[count] = ele
//        count += 1
        add(index: count, ele: ele)
    }
    
    /// 获取末位置元素
    /// - Parameter index:
    /// - Returns:
    func get(index:Int) -> T? {
        if index < 0 || index >= count {
            return nil
        }
        return eles[index]
    }
    
    /// 某位置设置元素
    /// - Parameters:
    ///   - index:
    ///   - ele:
    /// - Returns:
    func set(index: Int, ele:T) -> T? {
        if index < 0 || index >= count {
            return nil
        }
        let old = eles[index]
        eles[index] = ele
        return old
    }
    
    /// 某位置插入元素
    /// - Parameters:
    ///   - index:
    ///   - ele:
    func add(index: Int,ele:T) {
        if 0 > index || index > count {
            return
        }
        ensureCapacity(capacity: count+1)
        var j = count
        for _ in index..<count {
            eles[j] = eles[j-1]
            j -= 1
        }
        eles[index] = ele
        count += 1
        
    }
    
    /// 移除某位置元素
    /// - Parameter index:
    /// - Returns:
    func remove(index: Int) -> T? {
        if index<0 || index>=count {
            return nil
        }
        let old = eles[index]
        for index in index+1..<count {
            eles[index-1] = eles[index]
        }
        count -= 1
        return old
    }
    
    /// 获取某元素的索引
    /// - Parameter ele:
    /// - Returns:
    func indexOf(ele:T) -> Int {
        for index in 0..<count {
            if let value = eles[index] {
                if value == ele {
                    return index
                }
            }
        }
        return -1
    }
    
    /// 清空数组
    func clear()  {
        count = 0
    }
    
    /// 扩容
    /// - Parameter capacity: 
    func ensureCapacity(capacity:Int) {
        let oldCapacity = eles.count
        if oldCapacity > capacity {
            return
        }
        let newCapacity = oldCapacity + (oldCapacity >> 1)
        var newEles: [T?] = Array(repeating: nil, count: newCapacity)
        for index in 0..<eles.count {
            newEles[index] = eles[index]
        }
        eles = newEles
        
    }
    
    func description() -> String {
        var str  = ""
        for index in 0..<count {
            if index == 0 {
                str += "["
            }
            if index != count-1 {
                str += "\(eles[index]),"
            }else {
                str += "\(eles[index])"
            }
            
            if index == count-1 {
                str += "]"
            }
        }
        return str
    }
    
}
