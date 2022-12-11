(async() => {
    const address ="0xD4Fc541236927E2EAf8F27606bD7309C1Fc2cbee";
    const abiArray = [
	{
		"inputs": [],
		"name": "myuint",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_newUint",
				"type": "uint256"
			}
		],
		"name": "setMyUint",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
	];

    const contractInstance = new web3.eth.contract(abiArray, address);

    console.log(await contractInstance.methods.myUint().call());

	let accounts = await web3.eth.getAccounts();
	let txResult = await contractInstance.methods.setMyUint(345).send({from: accounts[0]});

	console.log(await contractInstance.methods.myUint().call());
	console.log(txResult);

})()