from pyteal import *

from beaker import *

class Auction(Applications):




        # Global state
        # 2 Global Bytes


        # owner: address
        owner =  ApplicationStateValue(stack_type = TealType.bytes)
        # highest_bidder:address
        
        highest_bidder= ApplicationStateValue(stack_type = TealType.uint64)
        
        #2 Global Ints 

        # highest_bid:uni64
        
        highest_bid = ApplicationStateValue(stack_type = TealType.uint64) 
        
        
        # bid_end:uni64

        bid_end = ApplicationStateValue(stack_type = TealType.uint64)
        # create the auction contract 
        @create
        def create(self):
                return Seq(
                        self.owner.set(Txn.sender()),
                        self.highest_bidder.set(Txn.sender()),
                        self.highest_bid.set(Txn.sender()),
                        self.bid_end.set(Txn.sender()),
                )


        # Start_auction
        @external
        def start_auction(self,payment: abi.PamentTransaction, length: abi.unit64):
                #funding the contract with 100_000 microalgo
               # set bid_end to whatever time specific 
                

                payment = payment.get()
                
                return Seq(
                        Assert(payment.receiver()== Global.current_application_address()),
                        Assert(payment.amount() == Int(100_000)),
                #setup a starting bid
                        self.bid_end.set(Global.latest_timestamp() + length.get()), 
                        self.highest_bid.set(start_price.get()),


                )



        # bid

        # end_auction






