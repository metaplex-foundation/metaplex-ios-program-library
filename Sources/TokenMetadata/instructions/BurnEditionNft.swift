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
 * @category BurnEditionNft
 * @category generated
 */
public struct BurnEditionNftInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = burnEditionNftInstructionDiscriminator
    ) {
        self.instructionDiscriminator = instructionDiscriminator
    }
}
/**
 * @category Instructions
 * @category BurnEditionNft
 * @category generated
 */
public let BurnEditionNftStruct = FixableBeetArgsStruct<BurnEditionNftInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        
    ],
    description: "BurnEditionNftInstructionArgs"
)
/**
* Accounts required by the _BurnEditionNft_ instruction
*
* @property [_writable_] metadata  
* @property [_writable_, **signer**] owner  
* @property [_writable_] printEditionMint  
* @property [] masterEditionMint  
* @property [_writable_] printEditionTokenAccount  
* @property [] masterEditionTokenAccount  
* @property [_writable_] masterEditionAccount  
* @property [_writable_] printEditionAccount  
* @property [_writable_] editionMarkerAccount  
* @property [] splTokenProgram   
* @category Instructions
* @category BurnEditionNft
* @category generated
*/
public struct BurnEditionNftInstructionAccounts {
    let metadata: PublicKey
    let owner: PublicKey
    let printEditionMint: PublicKey
    let masterEditionMint: PublicKey
    let printEditionTokenAccount: PublicKey
    let masterEditionTokenAccount: PublicKey
    let masterEditionAccount: PublicKey
    let printEditionAccount: PublicKey
    let editionMarkerAccount: PublicKey
    let splTokenProgram: PublicKey

    public init(
        metadata: PublicKey,
        owner: PublicKey,
        printEditionMint: PublicKey,
        masterEditionMint: PublicKey,
        printEditionTokenAccount: PublicKey,
        masterEditionTokenAccount: PublicKey,
        masterEditionAccount: PublicKey,
        printEditionAccount: PublicKey,
        editionMarkerAccount: PublicKey,
        splTokenProgram: PublicKey
    ) {
        self.metadata = metadata
        self.owner = owner
        self.printEditionMint = printEditionMint
        self.masterEditionMint = masterEditionMint
        self.printEditionTokenAccount = printEditionTokenAccount
        self.masterEditionTokenAccount = masterEditionTokenAccount
        self.masterEditionAccount = masterEditionAccount
        self.printEditionAccount = printEditionAccount
        self.editionMarkerAccount = editionMarkerAccount
        self.splTokenProgram = splTokenProgram
    }
}

public let burnEditionNftInstructionDiscriminator = [221, 105, 196, 64, 164, 27, 93, 197] as [UInt8]

/**
* Creates a _BurnEditionNft_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
* @category Instructions
* @category BurnEditionNft
* @category generated
*/
public func createBurnEditionNftInstruction(accounts: BurnEditionNftInstructionAccounts, 
programId: PublicKey=PublicKey(string: "metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s")!) -> TransactionInstruction {

    let data = BurnEditionNftStruct.serialize(
            instance: ["instructionDiscriminator": burnEditionNftInstructionDiscriminator ])

    let keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.metadata,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.owner,
            isSigner: true,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.printEditionMint,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.masterEditionMint,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.printEditionTokenAccount,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.masterEditionTokenAccount,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.masterEditionAccount,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.printEditionAccount,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.editionMarkerAccount,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.splTokenProgram,
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