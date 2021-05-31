//
//  LinkedList.swift
//  XDDataStructure
//
//  Created by Qiyeyun2 on 2021/5/28.
//

import Foundation

/// 单链表节点
class SingleLinkedListNode <T> {
    var next: SingleLinkedListNode?
    var value:T
    init(value:T) {
        self.value = value
    }
}

/// 单链表
class SingleLinnkedList<T> {
    var head:SingleLinkedListNode<T>?
    var size = 0
    
    /// 判空
    /// - Returns: 
    func isEmpty() -> Bool {
        return head == nil
    }
    
    /// 尾部添加节点
    /// - Parameter value: 
    func append(value:T) {
        let newNode = SingleLinkedListNode(value: value)
        guard var node = head else {
            head = newNode
            size += 1
            return
        }
        while let next = node.next {
            node = next
        }
        node.next = newNode
        size += 1
    }
    
    /// 获取某索引下节点
    /// - Parameter atIndex: <#atIndex description#>
    /// - Returns: <#description#>
    func node(atIndex:Int) -> SingleLinkedListNode<T>? {
        if atIndex < 0 || atIndex >  size-1 {
            return nil
        }
        var node = head
        for _ in 0..<atIndex {
            if node?.next == nil {
                break;
            }else {
                node = node?.next
            }
        }
        return node
    }
    
    /// 某索引插入节点
    /// - Parameters:
    ///   - n: <#n description#>
    ///   - index: <#index description#>
    func insert(n:SingleLinkedListNode<T>,index:Int) {
        if index < 0 && index > size-1  {
            return
        }
        if index == 0 {
            n.next = head
            head = n
        }else {
            let pre = node(atIndex: index-1)
            n.next = pre?.next
            pre?.next = n
        }
        size += 1
    }
    
    /// 移除所有节点
    func removeAll() {
        head = nil
    }
    
    func remove(node:SingleLinkedListNode<T>) -> T? {
        var n = head
        while n != nil {
            
        }
        return nil
    }
    
    func description() -> String {
        var str = "LinkedList:"
        var node = head
        for index in 0..<size {
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
