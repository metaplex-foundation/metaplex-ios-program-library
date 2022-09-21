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
 * @category AuctioneerWithdraw
 * @category generated
 */
public struct AuctioneerWithdrawInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let escrowPaymentBump: UInt8
    let amount: UInt64
}
/**
 * @category Instructions
 * @category AuctioneerWithdraw
 * @category generated
 */
public let auctioneerWithdrawStruct = FixableBeetArgsStruct<AuctioneerWithdrawInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("escrowPaymentBump", Beet.fixedBeet(.init(value: .scalar(u8())))),
        ("amount", Beet.fixedBeet(.init(value: .scalar(u64()))))
    ],
    description: "AuctioneerWithdrawInstructionArgs"
)
/**
* Accounts required by the _auctioneerWithdraw_ instruction
*
* @property [] wallet  
* @property [_writable_] receiptAccount  
* @property [_writable_] escrowPaymentAccount  
* @property [] treasuryMint  
* @property [] authority  
* @property [**signer**] auctioneerAuthority  
* @property [] auctionHouse  
* @property [_writable_] auctionHouseFeeAccount  
* @property [] ahAuctioneerPda   
* @category Instructions
* @category AuctioneerWithdraw
* @category generated
*/
public struct AuctioneerWithdrawInstructionAccounts {
        let wallet: PublicKey
        let receiptAccount: PublicKey
        let escrowPaymentAccount: PublicKey
        let treasuryMint: PublicKey
        let authority: PublicKey
        let auctioneerAuthority: PublicKey
        let auctionHouse: PublicKey
        let auctionHouseFeeAccount: PublicKey
        let ahAuctioneerPda: PublicKey
        let tokenProgram: PublicKey?
        let systemProgram: PublicKey?
        let ataProgram: PublicKey?
        let rent: PublicKey?
}

public let auctioneerWithdrawInstructionDiscriminator = [103, 108, 111, 98, 97, 108, 58, 97] as [UInt8]

/**
* Creates a _AuctioneerWithdraw_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category AuctioneerWithdraw
* @category generated
*/
public func createAuctioneerWithdrawInstruction(accounts: AuctioneerWithdrawInstructionAccounts, 
args: AuctioneerWithdrawInstructionArgs, programId: PublicKey=PublicKey(string: "hausS13jsjafwWwGqZTUQRmWyvyxn9EQpqMwV1PBBmk")!) -> TransactionInstruction {

    let data = auctioneerWithdrawStruct.serialize(
            instance: ["instructionDiscriminator": auctioneerWithdrawInstructionDiscriminator,
"escrowPaymentBump": args.escrowPaymentBump,
  "amount": args.amount])

    let keys: [Account.Meta] = [
        Account.Meta(
            publicKey: accounts.wallet,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.receiptAccount,
            isSigner: false,
            isWritable: true
        ),
        Account.Meta(
            publicKey: accounts.escrowPaymentAccount,
            isSigner: false,
            isWritable: true
        ),
        Account.Meta(
            publicKey: accounts.treasuryMint,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.authority,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.auctioneerAuthority,
            isSigner: true,
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
            publicKey: accounts.ahAuctioneerPda,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.tokenProgram ?? PublicKey.tokenProgramId,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.systemProgram ?? PublicKey.systemProgramId,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.ataProgram ?? PublicKey.splAssociatedTokenAccountProgramId,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
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