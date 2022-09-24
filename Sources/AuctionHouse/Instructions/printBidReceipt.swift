/**
 * This code was GENERATED using the solita package.
 * Please DO NOT EDIT THIS FILE, instead rerun solita to update it or write a wrapper to add functionality.
 *
 * See: https://github.com/metaplex-foundation/solita-swift
 */
import Foundation
import Solana
import Beet

/**
 * @category Instructions
 * @category PrintBidReceipt
 * @category generated
 */
public struct PrintBidReceiptInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let receiptBump: UInt8
}
/**
 * @category Instructions
 * @category PrintBidReceipt
 * @category generated
 */
public let printBidReceiptStruct = FixableBeetArgsStruct<PrintBidReceiptInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("receiptBump", Beet.fixedBeet(.init(value: .scalar(u8()))))
    ],
    description: "PrintBidReceiptInstructionArgs"
)
/**
* Accounts required by the _printBidReceipt_ instruction
*
* @property [_writable_] receipt  
* @property [_writable_, **signer**] bookkeeper  
* @property [] instruction   
* @category Instructions
* @category PrintBidReceipt
* @category generated
*/
public struct PrintBidReceiptInstructionAccounts {
        let receipt: PublicKey
        let bookkeeper: PublicKey
        let systemProgram: PublicKey?
        let rent: PublicKey?
        let instruction: PublicKey
}

public let printBidReceiptInstructionDiscriminator = [103, 108, 111, 98, 97, 108, 58, 112] as [UInt8]

/**
* Creates a _PrintBidReceipt_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category PrintBidReceipt
* @category generated
*/
public func createPrintBidReceiptInstruction(accounts: PrintBidReceiptInstructionAccounts, 
args: PrintBidReceiptInstructionArgs, programId: PublicKey=PublicKey(string: "hausS13jsjafwWwGqZTUQRmWyvyxn9EQpqMwV1PBBmk")!) -> TransactionInstruction {

    let data = printBidReceiptStruct.serialize(
            instance: ["instructionDiscriminator": printBidReceiptInstructionDiscriminator,
"receiptBump": args.receiptBump])

    let keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.receipt,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.bookkeeper,
            isSigner: true,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.systemProgram ?? PublicKey.systemProgramId,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.rent ?? PublicKey.sysvarRent,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.instruction,
            isSigner: false,
            isWritable: false
        )
    ]

    let ix = TransactionInstruction(
                keys: keys,
                programId: programId,
                data: data.0.bytes
            )
    return ix
}