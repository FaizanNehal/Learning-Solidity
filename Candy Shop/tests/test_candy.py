import pytest
from brownie import *

def test_candyMan():
    shop = CandyShop.deploy({'from':accounts[0]})
    print(shop.candyMan())


def test_candyRates():
    shop = CandyShop.deploy({'from':accounts[0]})
    print("Old Rates: ",format(shop.candyRates()))
    shop.changeCandyRates(600,{'from':accounts[0]})
    print("New Rates: ",format(shop.candyRates()))


def test_nonce():
    shop = CandyShop.deploy({'from':accounts[0]})
    print("NONCE: ",shop.nonceGetter())