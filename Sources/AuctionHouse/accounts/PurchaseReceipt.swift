/**
 * This code was GENERATED using the solita package.
 * Please DO NOT EDIT THIS FILE, instead rerun solita to update it or write a wrapper to add functionality.
 *
 * See: https://github.com/metaplex-foundation/solita-swift
 */
import Foundation
import Solana
import BeetSolana
import Beet


/**
* Arguments used to create {@link Purchasereceipt}
* @category Accounts
* @category generated
*/
public protocol PurchasereceiptArgs {
    
     var bookkeeper: PublicKey { get }
     var buyer: PublicKey { get }
     var seller: PublicKey { get }
     var auctionHouse: PublicKey { get }
     var metadata: PublicKey { get }
     var tokenSize: UInt64 { get }
     var price: UInt64 { get }
     var bump: UInt8 { get }
     var createdAt: Int64 { get }
}


/**
 * Holds the data for the {@link Purchasereceipt} Account and provides de/serialization
 * functionality for that data
 *
 * @category Accounts
 * @category generated
 */
public struct Purchasereceipt: PurchasereceiptArgs {
  public let bookkeeper: PublicKey
  public let buyer: PublicKey
  public let seller: PublicKey
  public let auctionHouse: PublicKey
  public let metadata: PublicKey
  public let tokenSize: UInt64
  public let price: UInt64
  public let bump: UInt8
  public let createdAt: Int64

  /**
   * Creates a {@link Purchasereceipt} instance from the provided args.
   */
  public static func fromArgs(args: Args) -> Purchasereceipt {
    return Purchasereceipt(
        bookkeeper: args["bookkeeper"] as! PublicKey,
        buyer: args["buyer"] as! PublicKey,
        seller: args["seller"] as! PublicKey,
        auctionHouse: args["auctionHouse"] as! PublicKey,
        metadata: args["metadata"] as! PublicKey,
        tokenSize: args["tokenSize"] as! UInt64,
        price: args["price"] as! UInt64,
        bump: args["bump"] as! UInt8,
        createdAt: args["createdAt"] as! Int64
    )
  }
  /**
   * Deserializes the {@link Purchasereceipt} from the data of the provided {@link web3.AccountInfo}.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func fromAccountInfo(
    accountInfo: Foundation.Data,
    offset:Int=0
  ) -> ( Purchasereceipt, Int )  {
    return Purchasereceipt.deserialize(buf: accountInfo, offset: offset)
  }
  /**
   * Retrieves the account info from the provided address and deserializes
   * the {@link Purchasereceipt} from its data.
   *
   * @throws Error if no account info is found at the address or if deserialization fails
   */
  public static func fromAccountAddress(
    connection: Api,
    address: PublicKey,
    onComplete: @escaping (Result<Purchasereceipt, Error>) -> Void
  ) {
    connection.getAccountInfo(account: address.base58EncodedString) { result in
        switch result {
            case .success(let pureData):
                if let data = pureData.data?.value {
                    onComplete(.success(Purchasereceipt.deserialize(buf: data).0))
                } else {
                    onComplete(.failure(SolanaError.nullValue))
                }
            case .failure(let error):
                onComplete(.failure(error))
        }
    }
  }
  /**
   * Deserializes the {@link Purchasereceipt} from the provided data Buffer.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func deserialize(
    buf: Foundation.Data,
    offset: Int = 0
  ) -> ( Purchasereceipt, Int ) {
    return purchaseReceiptBeet.deserialize(buffer: buf, offset: offset)
  }
  /**
   * Serializes the {@link Purchasereceipt} into a Buffer.
   * @returns a tuple of the created Buffer and the offset up to which the buffer was written to store it.
   */
  public func serialize() -> ( Foundation.Data, Int ) {
    return purchaseReceiptBeet.serialize(instance: Purchasereceipt(bookkeeper : self.bookkeeper,
        buyer : self.buyer,
        seller : self.seller,
        auctionHouse : self.auctionHouse,
        metadata : self.metadata,
        tokenSize : self.tokenSize,
        price : self.price,
        bump : self.bump,
        createdAt : self.createdAt))
  }
    /**
  * Returns the byteSize of a {@link Buffer} holding the serialized data of
  * {@link Purchasereceipt}
  */
  static func byteSize() -> UInt {
      return purchaseReceiptBeet.byteSize
  }
  /**
  * Fetches the minimum balance needed to exempt an account holding
  * {@link Purchasereceipt} data from rent
  *
  * @param connection used to retrieve the rent exemption information
  */
  static func getMinimumBalanceForRentExemption(
      connection: Api,
      commitment: Commitment?,
      onComplete: @escaping(Result<UInt64, Error>) -> Void
  ) {
      return connection.getMinimumBalanceForRentExemption(dataLength: UInt64(Purchasereceipt.byteSize()), commitment: commitment, onComplete: onComplete)
  }
  /**
  * Determines if the provided {@link Buffer} has the correct byte size to
  * hold {@link Purchasereceipt} data.
  */
  static func hasCorrectByteSize(buf: Foundation.Data, offset:Int=0) -> Bool {
      return buf.bytes.count - offset == Purchasereceipt.byteSize()
  }
}
  /**
   * @category Accounts
   * @category generated
   */
  public let purchaseReceiptBeet = BeetStruct(
    fields:[
        
        ("bookkeeper", (.init(value: .scalar(BeetPublicKey())))),
        ("buyer", (.init(value: .scalar(BeetPublicKey())))),
        ("seller", (.init(value: .scalar(BeetPublicKey())))),
        ("auctionHouse", (.init(value: .scalar(BeetPublicKey())))),
        ("metadata", (.init(value: .scalar(BeetPublicKey())))),
        ("tokenSize", (.init(value: .scalar(u64())))),
        ("price", (.init(value: .scalar(u64())))),
        ("bump", (.init(value: .scalar(u8())))),
        ("createdAt", (.init(value: .scalar(i64()))))
    ],
    construct: Purchasereceipt.fromArgs,
    description: "Purchasereceipt"
)
