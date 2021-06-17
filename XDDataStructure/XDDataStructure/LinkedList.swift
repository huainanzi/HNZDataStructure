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
    func get(index:Int) -> SingleLinkedListNode<T>? {
        if index<0 || index >= count {
            return nil
        }
        var node = head
        for _ in 0...index-1 {
            node = node?.next
        }
        
        return node
    }
    
    
    /// 设置某位置的元素
    /// - Parameters:
    ///   - index:
    ///   - ele:
    /// - Returns:
    func set(index:Int,ele:T) -> SingleLinkedListNode<T>? {
        if index < 0 || index >= count {
            return nil
        }
        let newNode = SingleLinkedListNode(value: ele)
        if index == 0 {
            let pre = head
            newNode.next = head?.next
            head = newNode
            return pre
        }
        var node = get(index: index-1)
        let pre = node?.next
        node?.next = newNode
        
        return pre
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
