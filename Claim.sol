pragma solidity ^0.4.10;

contract Claim {
  string[] public claims;
  mapping (string => address) claimSigner;
  uint256 public claimCount;

  function put(string _claim) returns (bool _success) {
    if (claimSigner[_claim] > 0) return false;
    claimSigner[_claim] = msg.sender;
    claims.push(_claim);
    claimCount++;
    return true;
  }

  // normally we would overload `put(...)`, but solidity function overloading seems
  // not correctly supported by the browser libraries we use :(
  function put2(string _claim1, string _claim2) returns (bool _success) {
    var result1 = put(_claim1);
    var result2 = put(_claim2);
    return result1 && result2;
  }

  function getSigner(string claim) returns (address _signer) {
    return claimSigner[claim];
  }

  function getClaim(uint256 index) returns (string _claim) {
    return claims[index];
  }

  function whoami() returns (address) {
    return msg.sender;
  }

  // throw on malformed calls
  function () {
    throw;
  }
}
