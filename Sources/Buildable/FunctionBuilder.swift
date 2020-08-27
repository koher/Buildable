//
//  FunctionBuilder.swift
//  
//
//  Created by tarunon on 2020/08/27.
//

/// Generic function builder
@_functionBuilder
public struct FunctionBuilder<Value: Buildable> {
    public static func buildBlock(_ values: Value...) -> Value {
        values.reduce(into: .empty()) {
            $0.merge($1)
        }
    }
    
    public static func buildEither(first: Value) -> Value {
        first
    }
    
    public static func buildEither(second: Value) -> Value {
        second
    }
    
    public static func buildIf(_ value: Value?) -> Value {
        value ?? .empty()
    }
}
