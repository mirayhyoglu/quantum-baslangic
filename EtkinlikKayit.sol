// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EtkinlikKayit {
    string public etkinlikAdi;
    mapping(address => string) private takmaAdlar;

    constructor(string memory _etkinlikAdi) {
        etkinlikAdi = _etkinlikAdi;
    }

    function takmaAdKaydet(string calldata _takmaAd) external {
        require(bytes(_takmaAd).length > 0, "Takma ad bos olamaz");
        takmaAdlar[msg.sender] = _takmaAd;
    }

    function kayitGetir(address _kullanici) external view returns (string memory) {
        return takmaAdlar[_kullanici];
    }
}