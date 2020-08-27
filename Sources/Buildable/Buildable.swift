//
//  Buildable.swift
//  App
//
//  Created by tarunon on 2020/08/27.
//

/// Adding FucntionBuilder feature in some Type.
public protocol Buildable {
    static func empty() -> Self
    mutating func merge(_ value: Self)
}

extension Buildable {
    public static func build(@FunctionBuilder<Self> _ body: () -> Self) -> Self {
        return body()
    }
}
