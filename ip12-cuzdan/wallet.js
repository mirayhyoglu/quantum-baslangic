const crypto = require("crypto");
const bip39 = require("bip39");
const { HDNodeWallet } = require("ethers");

async function createWallet() {
    const entropy = crypto.randomBytes(16);

    const mnemonic = bip39.entropyToMnemonic(entropy);

    const seed = await bip39.mnemonicToSeed(mnemonic);

    const wallet = HDNodeWallet.fromPhrase(
        mnemonic,
        "",
        "m/44'/60'/0'/0/0"
    );

    console.log("Entropy:");
    console.log(entropy.toString("hex"));

    console.log("\nMnemonic:");
    console.log(mnemonic);

    console.log("\nSeed:");
    console.log(seed.toString("hex"));

    console.log("\nPrivate Key:");
    console.log(wallet.privateKey);

    console.log("\nPublic Key:");
    console.log(wallet.publicKey);

    console.log("\nEthereum Address:");
    console.log(wallet.address);
}

createWallet(); 