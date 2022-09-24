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
 * @category ExecuteSale
 * @category generated
 */
public struct ExecuteSaleInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let escrowPaymentBump: UInt8
    let freeTradeStateBump: UInt8
    let programAsSignerBump: UInt8
    let buyerPrice: UInt64
    let tokenSize: UInt64
}
/**
 * @category Instructions
 * @category ExecuteSale
 * @category generated
 */
public let executeSaleStruct = FixableBeetArgsStruct<ExecuteSaleInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("escrowPaymentBump", Beet.fixedBeet(.init(value: .scalar(u8())))),
        ("freeTradeStateBump", Beet.fixedBeet(.init(value: .scalar(u8())))),
        ("programAsSignerBump", Beet.fixedBeet(.init(value: .scalar(u8())))),
        ("buyerPrice", Beet.fixedBeet(.init(value: .scalar(u64())))),
        ("tokenSize", Beet.fixedBeet(.init(value: .scalar(u64()))))
    ],
    description: "ExecuteSaleInstructionArgs"
)
/**
* Accounts required by the _executeSale_ instruction
*
* @property [_writable_] buyer  
* @property [_writable_] seller  
* @property [_writable_] tokenAccount  
* @property [] tokenMint  
* @property [] metadata  
* @property [] treasuryMint  
* @property [_writable_] escrowPaymentAccount  
* @property [_writable_] sellerPaymentReceiptAccount  
* @property [_writable_] buyerReceiptTokenAccount  
* @property [] authority  
* @property [] auctionHouse  
* @property [_writable_] auctionHouseFeeAccount  
* @property [_writable_] auctionHouseTreasury  
* @property [_writable_] buyerTradeState  
* @property [_writable_] sellerTradeState  
* @property [_writable_] freeTradeState  
* @property [] programAsSigner   
* @category Instructions
* @category ExecuteSale
* @category generated
*/
public struct ExecuteSaleInstructionAccounts {
        let buyer: PublicKey
        let seller: PublicKey
        let tokenAccount: PublicKey
        let tokenMint: PublicKey
        let metadata: PublicKey
        let treasuryMint: PublicKey
        let escrowPaymentAccount: PublicKey
        let sellerPaymentReceiptAccount: PublicKey
        let buyerReceiptTokenAccount: PublicKey
        let authority: PublicKey
        let auctionHouse: PublicKey
        let auctionHouseFeeAccount: PublicKey
        let auctionHouseTreasury: PublicKey
        let buyerTradeState: PublicKey
        let sellerTradeState: PublicKey
        let freeTradeState: PublicKey
        let tokenProgram: PublicKey?
        let systemProgram: PublicKey?
        let ataProgram: PublicKey?
        let programAsSigner: PublicKey
        let rent: PublicKey?
}

public let executeSaleInstructionDiscriminator = [103, 108, 111, 98, 97, 108, 58, 101] as [UInt8]

/**
* Creates a _ExecuteSale_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category ExecuteSale
* @category generated
*/
public func createExecuteSaleInstruction(accounts: ExecuteSaleInstructionAccounts, 
args: ExecuteSaleInstructionArgs, programId: PublicKey=PublicKey(string: "hausS13jsjafwWwGqZTUQRmWyvyxn9EQpqMwV1PBBmk")!) -> TransactionInstruction {

    let data = executeSaleStruct.serialize(
            instance: ["instructionDiscriminator": executeSaleInstructionDiscriminator,
"escrowPaymentBump": args.escrowPaymentBump,
  "freeTradeStateBump": args.freeTradeStateBump,
  "programAsSignerBump": args.programAsSignerBump,
  "buyerPrice": args.buyerPrice,
  "tokenSize": args.tokenSize])

    let keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.buyer,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.seller,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.tokenAccount,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.tokenMint,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.metadata,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.treasuryMint,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.escrowPaymentAccount,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.sellerPaymentReceiptAccount,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.buyerReceiptTokenAccount,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.authority,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.auctionHouse,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.auctionHouseFeeAccount,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.auctionHouseTreasury,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.buyerTradeState,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.sellerTradeState,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.freeTradeState,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.tokenProgram ?? PublicKey.tokenProgramId,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.systemProgram ?? PublicKey.systemProgramId,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.ataProgram ?? PublicKey.splAssociatedTokenAccountProgramId,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.programAsSigner,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.rent ?? PublicKey.sysvarRent,
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