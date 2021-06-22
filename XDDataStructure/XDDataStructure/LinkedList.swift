//
//  LinkedList.swift
//  XDDataStructure
//
//  Created by Qiyeyun2 on 2021/5/28.
//

import Foundation

/// 单链表节点
class SingleLinkedListNode <T:Hashable> {
    var next: SingleLinkedListNode?
    var value:T
    init(value:T) {
        self.value = value
    }
}

/// 单链表
class SingleLinnkedList<T:Hashable> {
    var head:SingleLinkedListNode<T>?
    var count = 0
    
    /// 数量
    /// - Returns:
    func size() -> Int {
        return count
    }
    
    func isEmpty() -> Bool {
        return head == nil
    }
    
    /// 是否包含某元素
    /// - Parameter ele:
    /// - Returns:
    func contains(ele:T) -> Bool {
        var node = head
        if node?.value == ele {
            return true
        }
        while let n = node?.next  {
            if n.value == ele {
                return true
            }
            node = n
        }
        return false
    }
    
    /// 尾部插入一节点
    /// - Parameter ele: 
    func add(ele:T) {
        let newNode = SingleLinkedListNode(value: ele)
        if head == nil {
            head = newNode
            count += 1
            return
        }
        var node = head
        while let n = node?.next {
            node = n
        }
        node?.next = newNode
        count += 1
    }
    
    /// 获取某位置的元素
    /// - Parameter index:
    /// - Returns:
    func get(index:Int) -> T? {
        if index<0 || index >= count {
            return nil
        }
        let n = node(atIndex: index)
        return n?.value
    }
    
    
    /// 设置某位置的元素
    /// - Parameters:
    ///   - index:
    ///   - ele:
    /// - Returns:
    func set(index:Int,ele:T) -> T? {
        if index < 0 || index >= count {
            return nil
        }
        let n = node(atIndex: index)
        let old = n?.value
        n?.value = ele
        return old
    }
    
    /// 获取某位置的节点
    /// - Parameter atIndex:
    /// - Returns:
    func node(atIndex:Int) -> SingleLinkedListNode<T>? {
        if atIndex < 0 || atIndex >= count {
            return nil
        }
        var node = head
        if atIndex == 0 {
            return node
        }
        for _ in 1 ... atIndex {
            node = node?.next
        }
        return node
    }
    
    /// 插入节点
    /// - Parameters:
    ///   - index:
    ///   - ele: 
    func add(index:Int,ele:T) {
        if index < 0 || index>count {
            return
        }
        let newNode = SingleLinkedListNode(value: ele)
        if index == 0 {
            newNode.next = head
            head = newNode
            count += 1
            return
        }
        let n = node(atIndex: index-1)
        newNode.next = n?.next
        n?.next = newNode
        count += 1
    }
    
    /// 删除某位置的节点
    /// - Parameter index: 
    func remove(index:Int) {
        if index < 0 || index >= count {
            return
        }
        if index == 0 {
            head = head?.next
            count -= 1
            return
        }
        let n = node(atIndex: index-1)
        n?.next = n?.next?.next
    }
    
    /// 获取某元素的位置
    /// - Parameter ele:
    /// - Returns:
    func indexOf(ele:T) -> Int {
        if isEmpty() {
            return -1
        }
        var node = head
        if node?.value == ele {
            return 0
        }
        for index in 1...count-1 {
            node = node?.next
            if node?.value == ele {
                return index
            }
        }
        
        return -1
    }
    
    /// 清空链表
    func clear() {
        head = nil
        count = 0
    }
    
    func description() -> String {
        var str = "LinkedList:"
        var node = head
        for index in 0..<count {
            if node == nil {
                break
            }
            if index == 0 {
                str += "\(node!.value)"
            }else {
                str += " -> \(node!.value)"
            }
            node = node?.next
        }
        
        return str
    }
    
}
