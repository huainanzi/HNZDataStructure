//
//  main.swift
//  XDDataStructure
//
//  Created by try on 2021/5/18.
//

import Foundation

var arr = ArrayList<Int>(capaticy: 20)
arr.add(ele: 7)
arr.add(ele: 9)
arr.add(index: 0, ele: 99)
//arr.add(ele: 9)
//arr.add(ele: 3)
print(arr.indexOf(ele: 7))
print(arr.description())

//
let linkedList = SingleLinnkedList<Int>()
//linkedList.append(value: 7)
//linkedList.append(value: 9)
//let node = linkedList.node(atIndex: 0)
//linkedList.insert(n: SingleLinkedListNode(value: 8), index: 9)
//print(node?.value)
linkedList.insert(n: SingleLinkedListNode(value: 9), index: 1)
print(linkedList.description())
