pragma solidity >=0.4.21 <0.7.0;

contract RandomBet {
    uint number;
    function rand()
    public
    returns(uint256)
{
    uint256 seed = uint256(keccak256(abi.encodePacked(
        block.timestamp + block.difficulty +
        ((uint256(keccak256(abi.encodePacked(block.coinbase)))) / (now)) +
        block.gaslimit + 
        ((uint256(keccak256(abi.encodePacked(msg.sender)))) / (now)) +
        block.number
    )));
    return number = (seed - ((seed / 1000) * 1000));
 }

   function get() public view returns (uint) {
        return number;
    }
}