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
 * @category WithdrawFromTreasury
 * @category generated
 */
public struct WithdrawFromTreasuryInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let amount: UInt64

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = withdrawFromTreasuryInstructionDiscriminator,
        amount: UInt64
    ) {
        self.instructionDiscriminator = instructionDiscriminator
        self.amount = amount
    }
}
/**
 * @category Instructions
 * @category WithdrawFromTreasury
 * @category generated
 */
public let withdrawFromTreasuryStruct = FixableBeetArgsStruct<WithdrawFromTreasuryInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("amount", Beet.fixedBeet(.init(value: .scalar(u64()))))
    ],
    description: "WithdrawFromTreasuryInstructionArgs"
)
/**
* Accounts required by the _withdrawFromTreasury_ instruction
*
* @property [] treasuryMint  
* @property [**signer**] authority  
* @property [_writable_] treasuryWithdrawalDestination  
* @property [_writable_] auctionHouseTreasury  
* @property [_writable_] auctionHouse   
* @category Instructions
* @category WithdrawFromTreasury
* @category generated
*/
public struct WithdrawFromTreasuryInstructionAccounts {
    let treasuryMint: PublicKey
    let authority: PublicKey
    let treasuryWithdrawalDestination: PublicKey
    let auctionHouseTreasury: PublicKey
    let auctionHouse: PublicKey
    let tokenProgram: PublicKey?
    let systemProgram: PublicKey?

    public init(
        treasuryMint: PublicKey,
        authority: PublicKey,
        treasuryWithdrawalDestination: PublicKey,
        auctionHouseTreasury: PublicKey,
        auctionHouse: PublicKey,
        tokenProgram: PublicKey? = nil,
        systemProgram: PublicKey? = nil
    ) {
        self.treasuryMint = treasuryMint
        self.authority = authority
        self.treasuryWithdrawalDestination = treasuryWithdrawalDestination
        self.auctionHouseTreasury = auctionHouseTreasury
        self.auctionHouse = auctionHouse
        self.tokenProgram = tokenProgram
        self.systemProgram = systemProgram
    }
}

public let withdrawFromTreasuryInstructionDiscriminator = [0, 164, 86, 76, 56, 72, 12, 170] as [UInt8]

/**
* Creates a _WithdrawFromTreasury_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category WithdrawFromTreasury
* @category generated
*/
public func createWithdrawFromTreasuryInstruction(accounts: WithdrawFromTreasuryInstructionAccounts, 
args: WithdrawFromTreasuryInstructionArgs, programId: PublicKey=PublicKey(string: "hausS13jsjafwWwGqZTUQRmWyvyxn9EQpqMwV1PBBmk")!) -> TransactionInstruction {

    let data = withdrawFromTreasuryStruct.serialize(
            instance: ["instructionDiscriminator": withdrawFromTreasuryInstructionDiscriminator,
"amount": args.amount])

    let keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.treasuryMint,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.authority,
            isSigner: true,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.treasuryWithdrawalDestination,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.auctionHouseTreasury,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.auctionHouse,
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
        )
    ]

    let ix = TransactionInstruction(
                keys: keys,
                programId: programId,
                data: data.0.bytes
            )
    return ix
}