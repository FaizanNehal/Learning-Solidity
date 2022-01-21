from audioop import add
import os
import solcx
solcx.install_solc('0.8.7')
import json
from web3 import Web3
from dotenv import load_dotenv

load_dotenv()

from solcx import compile_standard

with open("./simpleStorage.sol","r") as file:
    simple_storage_file=file.read()
    print(simple_storage_file)

compile_sol = compile_standard(
    {
        "language":"Solidity",
        "sources":{"simpleStorage.sol":{"content":simple_storage_file}},
        "settings":{
            "outputSelection":{
            "*":{"*":["abi","metadata","evm.bytecode","evm.sourceMap"]}
             }
        },
    },
    solc_version="0.8.7",
)

print(compile_sol)

with open("compile_code.json","w") as file:
    json.dump(compile_sol,file)


#Getting ByteCode
byteCode = compile_sol["contracts"]["simpleStorage.sol"]["SecretStorage"]["evm"]["bytecode"]["object"]

#Getting ABI
abi = compile_sol["contracts"]["simpleStorage.sol"]["SecretStorage"]["abi"]

#Connecting to ganache Blockchain via HTTP
w3 = Web3(Web3.HTTPProvider("http://127.0.0.1:7545"))
print(w3.eth.get_block("latest"))
chain_id = 1337
address ="0x48e8EA338619C9eACB8CC0a79259d03C64C21A4C"
private_key = "0xca25faf0cfe9366549d775888abd8367d8c29a6535c714c411999e3215bd576e"

#Create the Contract in PYTHON

simpleStorage = w3.eth.contract(abi=abi,bytecode=byteCode)
print(simpleStorage)

#Getting the nonce
nonce = w3.eth.getTransactionCount(address)
print(nonce)

#Building transaction
transaction = simpleStorage.constructor().buildTransaction({
    "chainId":chain_id,"from":address,"nonce":nonce,"gasPrice": w3.eth.gas_price
})

print(transaction)

#Siging the Transaction
signed_transaction = w3.eth.account.sign_transaction(transaction,private_key=private_key)

print(os.getenv("PRIVATE_KEY"))
