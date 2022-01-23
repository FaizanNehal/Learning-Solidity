from brownie import accounts, SecretStorage

def testing_start():

    #Arrange
    acc = accounts[0]
    #Act
    simple_storage = SecretStorage.deploy({"from":acc})
    starting = simple_storage.retrieve()
    expected =0
    #Assert
    assert starting==expected
    pass

def testing_update():
    acc = accounts[0]
    #Act
    simple_storage = SecretStorage.deploy({"from":acc})
    trxn= simple_storage.storeSecret(69,{"from":acc})
    starting = simple_storage.retrieve()
    expected =69
    #Assert
    assert starting==expected
    pass