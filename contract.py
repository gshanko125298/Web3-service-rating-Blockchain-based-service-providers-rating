from pyteal import *

from beaker import *


def approval_program():
    return Seq(
        Log(Bytes("hello World")),
        Return(Int(1))
    )



print(compileTeal(approval_program(), Mode.Application, version=6))   
