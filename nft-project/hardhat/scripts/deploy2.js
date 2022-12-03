(async () => {
    try {
        const Spacebear = await hre.ethers.getContractFactory("Spacebear");

        const spacebearInstance = await Spacebear.deploy();

        await spacebearInstance.deployed();

        console.log(`Deploy contract at ${spacebearInstance.address}`);
    } catch (error) {
        console.error(error);
        Process.exitCode = 1;
    }
})