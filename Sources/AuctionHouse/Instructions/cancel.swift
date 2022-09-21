/**
 * This code was GENERATED using the solita package.
 * Please DO NOT EDIT THIS FILE, instead rerun solita to update it or write a wrapper to add functionality.
 *
 * See: https://github.com/metaplex-foundation/solita-swift
 */
import Foundation
import Beet
import Solana

/**
 * @category Instructions
 * @category Cancel
 * @category generated
 */
public struct CancelInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let buyerPrice: UInt64
    let tokenSize: UInt64
}
/**
 * @category Instructions
 * @category Cancel
 * @category generated
 */
public let cancelStruct = FixableBeetArgsStruct<CancelInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("buyerPrice", Beet.fixedBeet(.init(value: .scalar(u64())))),
        ("tokenSize", Beet.fixedBeet(.init(value: .scalar(u64()))))
    ],
    description: "CancelInstructionArgs"
)
/**
* Accounts required by the _cancel_ instruction
*
* @property [_writable_] wallet  
* @property [_writable_] tokenAccount  
* @property [] tokenMint  
* @property [] authority  
* @property [] auctionHouse  
* @property [_writable_] auctionHouseFeeAccount  
* @property [_writable_] tradeState   
* @category Instructions
* @category Cancel
* @category generated
*/
public struct CancelInstructionAccounts {
        let wallet: PublicKey
        let tokenAccount: PublicKey
        let tokenMint: PublicKey
        let authority: PublicKey
        let auctionHouse: PublicKey
        let auctionHouseFeeAccount: PublicKey
        let tradeState: PublicKey
        let tokenProgram: PublicKey?
}

public let cancelInstructionDiscriminator = [103, 108, 111, 98, 97, 108, 58, 99] as [UInt8]

/**
* Creates a _Cancel_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category Cancel
* @category generated
*/
public func createCancelInstruction(accounts: CancelInstructionAccounts, 
args: CancelInstructionArgs, programId: PublicKey=PublicKey(string: "hausS13jsjafwWwGqZTUQRmWyvyxn9EQpqMwV1PBBmk")!) -> TransactionInstruction {

    let data = cancelStruct.serialize(
            instance: ["instructionDiscriminator": cancelInstructionDiscriminator,
"buyerPrice": args.buyerPrice,
  "tokenSize": args.tokenSize])

    let keys: [Account.Meta] = [
        Account.Meta(
            publicKey: accounts.wallet,
            isSigner: false,
            isWritable: true
        ),
        Account.Meta(
            publicKey: accounts.tokenAccount,
            isSigner: false,
            isWritable: true
        ),
        Account.Meta(
            publicKey: accounts.tokenMint,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.authority,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.auctionHouse,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.auctionHouseFeeAccount,
            isSigner: false,
            isWritable: true
        ),
        Account.Meta(
            publicKey: accounts.tradeState,
            isSigner: false,
            isWritable: true
        ),
        Account.Meta(
            publicKey: accounts.tokenProgram ?? PublicKey.tokenProgramId,
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