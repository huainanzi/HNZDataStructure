//
//  main.swift
//  XDDataStructure
//
//  Created by try on 2021/5/18.
//

import Foundation

//var arr = ArrayList<Int>(capaticy: 20)
//arr.add(ele: 7)
//arr.add(ele: 9)
//arr.add(index: 0, ele: 99)
//arr.add(ele: 9)
//arr.add(ele: 3)
//print(arr.indexOf(ele: 7))
//print(arr.description())


//
var linkedList = SingleLinnkedList<Int>()
linkedList.add(ele: 8)
linkedList.add(ele: 5)
linkedList.add(ele: 7)
linkedList.add(ele: 98)
linkedList.add(index: 0, ele: 10)

print(linkedList.indexOf(ele: 7))
print(linkedList.description())
