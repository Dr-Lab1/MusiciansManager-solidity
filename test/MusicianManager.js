const MusicianManager = artifacts.require('./MusicianManager')

contract('MusicianManager', accounts => {

    it("Ajouter un musicien", async function () {
        const Contract = await MusicianManager.deployed()
        const result = await Contract.addMusician("0xfa10a538711109e44b709cc677059816215a4622", "Jonathan", {from: accounts[0]})
        // assert.equal(result.logs[0].args._name, "Jonathan", "C'est pas Joe")
        console.log(result)
    })

})