import Foundation
import XCTest

@testable import eosswift

class BlockIdDetailsTest: XCTestCase {

    func testBlockIdDetails() {
        let blockIdDetails = BlockIdDetails(blockId: "0000000ac7619ca01df1e0b4964921020e772ceb7343ec51f65537cdbce192d3")
        XCTAssertEqual(blockIdDetails.blockNum, 10)
        XCTAssertEqual(blockIdDetails.blockPrefix, 3034640669)
    }

    func testBlockIdDetails2() {
        let blockIdDetails = BlockIdDetails(blockId: "00008009f6a3e931273c63d1caa4bb2d1520223251cf3ea939ffe29a770471f7")
        XCTAssertEqual(blockIdDetails.blockNum, 32777)
        XCTAssertEqual(blockIdDetails.blockPrefix, 3512941607)
    }
}

