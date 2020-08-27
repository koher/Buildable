# Buildable

Add FunctionBuilder syntax using Buildable Protocol.

```swift
extension Array: Buildable {
  public static func empty() -> Self { [] }
  public mutating func merge(_ value: Self) {
    append(contentsOf: value)
  }
}

[Int].build {
  [1, 2, 3]
  if myCondition {
    [4, 5, 6] 
  } else {
    [7, 8, 9]  
  }
}
```
