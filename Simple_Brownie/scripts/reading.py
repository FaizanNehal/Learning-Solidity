from brownie import accounts, config, SecretStorage


def reading():
    contract=SecretStorage[0]
    print(contract.retrieve())

def main():
    reading()
    pass