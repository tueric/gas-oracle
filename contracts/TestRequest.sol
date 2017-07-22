pragma solidity ^0.4.8;

import "./GasHole.sol";

contract TestRequest {
  uint public x;

  GasHole gasHole;
  function TestRequest(address _gasHole) {
    gasHole = GasHole(_gasHole);
  }

  function makeRequest() {
    gasHole.requestStat(bytes4(sha3("getRequest(uint256)")), 0, 0);
  }

  function getRequest(uint stat) {
    x = stat;
  }

}
