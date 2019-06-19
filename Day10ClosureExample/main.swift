//
//  main.swift
//  Day10ClosureExample
//
//  Created by Neeraj Prasher on 2019-06-19.
//  Copyright © 2019 lambton. All rights reserved.
//

import Foundation

func add(a: Int, b: Int) -> Int
{
    return a+b
}

func sub(a: Int, b: Int) -> Int
{
    return a-b
}

let c = add(a: 10, b:20)
print("c \(c)")

//
var  funcAdd :(Int, Int) -> Int
funcAdd = add(a:b:)

let cc = funcAdd(100, 200)
print("cc \(cc)")

//
let funcSub = sub(a:b:)
let s = funcSub(200, 100)
print("s \(s)")

//
var mul = {
    (a: Int, b: Int) -> Int in
    return a * b
}

let m = mul(10, 20)
print("m \(m)")

funcAdd = mul
print("m \(funcAdd(2, 5))")

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

print(names)
//

var reversedNames = names.sorted(by: backward)
print(reversedNames)

//

reversedNames = names.sorted(by:
    {
        (a: String, b: String) -> Bool in
        return a < b
})
print(reversedNames)

//

reversedNames = names.sorted(by:
    {
        (a, b) -> Bool in
        return a < b
    })
print(reversedNames)

//

reversedNames = names.sorted(by:
    {
        (a, b) in
        return a < b
})
print(reversedNames)

//

reversedNames = names.sorted(by:
    {
        return $0 < $1
})
print(reversedNames)

//

reversedNames = names.sorted(by:
    {
        $0 < $1
})
print(reversedNames)

//

reversedNames = names.sorted(by: <)
print(reversedNames)

//

reversedNames = names.sorted(by: >)
print(reversedNames)


