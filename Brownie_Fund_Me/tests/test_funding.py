from brownie import accounts,network, exceptions
from scripts.scripts import get_account,LOCAL_BLOCKCHAIN_ENV
from scripts.deploy import deploying
import pytest

def testing_funding():

    #Arrange
    acc = get_account()
    #Act
    funding= deploying()
    fee = funding.getEntranceFee()
    starting = funding.fund({"from":acc,"value":fee})
    starting.wait(1)
    #Assert
    assert funding.addressToAmountFunded(acc.address)==fee

def testing_withdraw():
    #Arrange
    acc = get_account()
    #Act
    funding= deploying()
    withdrawl = funding.withdraw({"from":acc})
    withdrawl.wait(1)
    expected =0
    print("HELLO")
    assert funding.addressToAmountFunded(acc.address)==expected
    pass

def testing_onlyOwner():
    if network.show_active() not in LOCAL_BLOCKCHAIN_ENV:
        pytest.skip("This test only works locally")
    funding= deploying()
    acc= accounts[0]
    #with pytest.raises(exceptions.VirtualMachineError):
    withdrawl =funding.withdraw({"from":acc}) 
    withdrawl.wait(1)

