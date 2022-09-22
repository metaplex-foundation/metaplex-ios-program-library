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
 * @category AuctioneerSell
 * @category generated
 */
public struct AuctioneerSellInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let tradeStateBump: UInt8
    let freeTradeStateBump: UInt8
    let programAsSignerBump: UInt8
    let tokenSize: UInt64
}
/**
 * @category Instructions
 * @category AuctioneerSell
 * @category generated
 */
public let auctioneerSellStruct = FixableBeetArgsStruct<AuctioneerSellInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("tradeStateBump", Beet.fixedBeet(.init(value: .scalar(u8())))),
        ("freeTradeStateBump", Beet.fixedBeet(.init(value: .scalar(u8())))),
        ("programAsSignerBump", Beet.fixedBeet(.init(value: .scalar(u8())))),
        ("tokenSize", Beet.fixedBeet(.init(value: .scalar(u64()))))
    ],
    description: "AuctioneerSellInstructionArgs"
)
/**
* Accounts required by the _auctioneerSell_ instruction
*
* @property [_writable_] wallet  
* @property [_writable_] tokenAccount  
* @property [] metadata  
* @property [] authority  
* @property [**signer**] auctioneerAuthority  
* @property [] auctionHouse  
* @property [_writable_] auctionHouseFeeAccount  
* @property [_writable_] sellerTradeState  
* @property [_writable_] freeSellerTradeState  
* @property [] ahAuctioneerPda  
* @property [] programAsSigner   
* @category Instructions
* @category AuctioneerSell
* @category generated
*/
public struct AuctioneerSellInstructionAccounts {
        let wallet: PublicKey
        let tokenAccount: PublicKey
        let metadata: PublicKey
        let authority: PublicKey
        let auctioneerAuthority: PublicKey
        let auctionHouse: PublicKey
        let auctionHouseFeeAccount: PublicKey
        let sellerTradeState: PublicKey
        let freeSellerTradeState: PublicKey
        let ahAuctioneerPda: PublicKey
        let programAsSigner: PublicKey
        let tokenProgram: PublicKey?
        let systemProgram: PublicKey?
        let rent: PublicKey?
}

public let auctioneerSellInstructionDiscriminator = [103, 108, 111, 98, 97, 108, 58, 97] as [UInt8]

/**
* Creates a _AuctioneerSell_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category AuctioneerSell
* @category generated
*/
public func createAuctioneerSellInstruction(accounts: AuctioneerSellInstructionAccounts, 
args: AuctioneerSellInstructionArgs, programId: PublicKey=PublicKey(string: "hausS13jsjafwWwGqZTUQRmWyvyxn9EQpqMwV1PBBmk")!) -> TransactionInstruction {

    let data = auctioneerSellStruct.serialize(
            instance: ["instructionDiscriminator": auctioneerSellInstructionDiscriminator,
"tradeStateBump": args.tradeStateBump,
  "freeTradeStateBump": args.freeTradeStateBump,
  "programAsSignerBump": args.programAsSignerBump,
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
            publicKey: accounts.metadata,
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
            publicKey: accounts.sellerTradeState,
            isSigner: false,
            isWritable: true
        ),
        Account.Meta(
            publicKey: accounts.freeSellerTradeState,
            isSigner: false,
            isWritable: true
        ),
        Account.Meta(
            publicKey: accounts.ahAuctioneerPda,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.programAsSigner,
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