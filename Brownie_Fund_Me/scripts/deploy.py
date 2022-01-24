from unittest import mock
from brownie import accounts,config,FundMe, MockV3Aggregator, network
from scripts.scripts import get_account, deploy_mock, LOCAL_BLOCKCHAIN_ENV

def deploying():
    acc=get_account()
    if network.show_active() not in LOCAL_BLOCKCHAIN_ENV:
        priceFeedData=config["networks"][network.show_active()]["address"]
    else:
        deploy_mock()
        priceFeedData=MockV3Aggregator[-1].address
        
    funding = FundMe.deploy(priceFeedData,{"from":acc},publish_source=config["networks"][network.show_active()].get("verify"))
    print(f"The address is {funding.address}")
    return funding

def main():
    deploying()
    accf= accounts[1]
    print("HHELOOE")
    print(accf.address)
    pass