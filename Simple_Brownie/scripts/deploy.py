from brownie import accounts, config, SecretStorage, network

def deploying():
    acc = get_account()
    print(acc)
    acc1= accounts.add(config["walletConfig"]["key"])
    print(acc1)

    secStorage = SecretStorage.deploy({"from":acc})
    print(secStorage)

    secret = secStorage.retrieve()
    print(secret)
    trxn = secStorage.storeSecret(69, {"from":acc})
    trxn.wait(1)
    secret= secStorage.retrieve()
    print(secret)

    trxnArray =secStorage.addPersion("Faizan",55,{"from":acc})
    trxnArray.wait(1)
    pass


def get_account():
    if (network.show_active() =="development"):
        return accounts[0]
    else:
        return accounts.add(config["walletConfig"]["key"])
    pass

def main():
    deploying()