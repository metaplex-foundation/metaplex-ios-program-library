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
 * @category CancelBidReceipt
 * @category generated
 */
public struct CancelBidReceiptInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = cancelBidReceiptInstructionDiscriminator
    ) {
        self.instructionDiscriminator = instructionDiscriminator
    }
}
/**
 * @category Instructions
 * @category CancelBidReceipt
 * @category generated
 */
public let cancelBidReceiptStruct = FixableBeetArgsStruct<CancelBidReceiptInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        
    ],
    description: "CancelBidReceiptInstructionArgs"
)
/**
* Accounts required by the _cancelBidReceipt_ instruction
*
* @property [_writable_] receipt  
* @property [] instruction   
* @category Instructions
* @category CancelBidReceipt
* @category generated
*/
public struct CancelBidReceiptInstructionAccounts {
    let receipt: PublicKey
    let systemProgram: PublicKey?
    let instruction: PublicKey

    public init(
        receipt: PublicKey,
        systemProgram: PublicKey? = nil,
        instruction: PublicKey
    ) {
        self.receipt = receipt
        self.systemProgram = systemProgram
        self.instruction = instruction
    }
}

public let cancelBidReceiptInstructionDiscriminator = [246, 108, 27, 229, 220, 42, 176, 43] as [UInt8]

/**
* Creates a _CancelBidReceipt_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
* @category Instructions
* @category CancelBidReceipt
* @category generated
*/
public func createCancelBidReceiptInstruction(accounts: CancelBidReceiptInstructionAccounts, 
programId: PublicKey=PublicKey(string: "hausS13jsjafwWwGqZTUQRmWyvyxn9EQpqMwV1PBBmk")!) -> TransactionInstruction {

    let data = cancelBidReceiptStruct.serialize(
            instance: ["instructionDiscriminator": cancelBidReceiptInstructionDiscriminator ])

    let keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.receipt,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.systemProgram ?? PublicKey.systemProgramId,
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