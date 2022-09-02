pragma solidity ^0.8.10;

contract CandyShop{
    address public candyMan;
    mapping(address=>uint8) candyorders;
    uint256 public candyRates=500;   //rates in gwei

    event NoChecker(uint256);

    constructor(){
        candyMan = msg.sender;
    }

    modifier candyMaker(){
        require(msg.sender==candyMan,"You are not the Candy Man");
        _;
    }

    function changeCandyRates(uint256 newRates) public candyMaker{
        candyRates=newRates;
    }

    function nonceGetter() public view returns(uint256){
    
        uint256 _nonce = block.number;
        uint finally=uint256(blockhash(block.number-1));
        return finally;
    }

    function nonceChecker() public {
        uint256 current =nonceGetter();
        uint256[] memory times = new uint256[](0);
        times[0] =current;
        times[times.length] =current;
        for(uint i =1;i<5;i++){
            require(current == block.timestamp);
        }

    }
}

