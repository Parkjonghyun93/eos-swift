import Foundation
import XCTest

@testable import eos_swift

class TransferArgsTests: XCTestCase {

    func testTransferDecodable() {
        let transferArgs: TransferArgs = TransferArgs(
            fromValue: AccountNameWriterValue(name: "memtripissu5"),
            to: AccountNameWriterValue(name: "memtripblock"),
            quantity: AssetWriterValue(asset: "12.3040 EOS"),
            memo: "this is a memo")
        let transferBody: TransferBody = TransferBody(args: transferArgs)

        let abiEncoder = AbiEncoder(capacity: 512)
        try! abiEncoder.encode(encodable: transferBody)
        let hexEncodedString = abiEncoder.toData().hexEncodedString()

        XCTAssertEqual(hexEncodedString, "5034c6aeba9ba59200118da7ba9ba592a0e001000000000004454f53000000000e746869732069732061206d656d6f")
    }
}