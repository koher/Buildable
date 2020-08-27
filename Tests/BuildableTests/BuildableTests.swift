import XCTest
@testable import Buildable

extension Array: Buildable {
    public static func empty() -> Self {
        []
    }

    public mutating func merge(_ value: Self) {
        append(contentsOf: value)
    }
}

final class BuildableTests: XCTestCase {
    func testFunctionBuilderWork() {
        let condition = true
        XCTAssertEqual(
            [Int].build {
                [1, 2, 3]
                if condition {
                    [4, 5]
                }
            },
            [1, 2, 3, 4, 5]
        )
        XCTAssertEqual(
            [Int].build {
                [1, 2, 3]
                if !condition {
                    [0]
                } else {
                    [4, 5]
                }
            },
            [1, 2, 3, 4, 5]
        )
    }

    static var allTests = [
        ("testFunctionBuilderWork", testFunctionBuilderWork),
    ]
}
