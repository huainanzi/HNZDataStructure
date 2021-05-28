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
    
}
