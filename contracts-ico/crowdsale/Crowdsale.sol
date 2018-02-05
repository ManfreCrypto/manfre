/**
 *  
 *  Crowdsale Contract (Example)
 *  
 **/

pragma solidity ^0.4.15;

contract tokeninterface {

}

contract SafeMath {
	//internals

	function safeMul(uint a, uint b) internal returns(uint) {
		uint c = a * b;
		assert(a == 0 || c / a == b);
		return c;
	}

	function safeSub(uint a, uint b) internal returns(uint) {
		assert(b <= a);
		return a - b;
	}

	function safeAdd(uint a, uint b) internal returns(uint) {
		uint c = a + b;
		assert(c >= a && c >= b);
		return c;
	}

}


contract Crowdsale is SafeMath {
	
	/* tokens will be transfered from this address */
	address public tokenOwner;
	
	/* the minimum amount of tokens to be sold */
	uint constant public softCap = 1000000000000;
	
	/* the maximum amount of tokens to be sold */
	uint constant public hardCap = 10000000000000;
	
	/* the start date of the ico */
	uint public start;
	
	/* the end date of the ico */
	uint public end;
	
	
	/* the rates before and after the soft cap is reached */
	uint constant public rateSoft = 24;
	uint constant public rateHard = 20;

	uint constant public rateCoefficient = 100000000000;
	
	/* the address of the token contract */
	token public tokenAddress;
	
	/* the balances (in ETH) of all investors */
	mapping(address => uint) public balanceOf;
	
	/* indicates if the crowdsale has been closed already */
	bool public isClosed = false;
	
	address walletFunds;
	
	/* notifying transfers and the success of the crowdsale*/
	event SoftCapReached(address _tokenOwner, uint _amountRaised);
	event Transfer(address backer, uint amount, bool isContribution, uint _amountRaised);



	/*  initialization */
	function Crowdsale() {
	}

	/* Payable function */
	function() payable {
		//check if crowdsale started and hasn't been closed already
		//transfer the corresponding number of tokens to the receiver
	}

	/* Exchange the value in token */
	function exchange(uint _value)  {

	}


	/* Check if the goal is reached */
	function checkSoftCapReached()  {
	}


}
