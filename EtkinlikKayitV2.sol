// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EtkinlikKayitV2 {
    mapping(address => string) private kayitlar;
    uint256 public constant KAPASITE = 3;
    uint256 public toplamKayit;

    function takmaAdKaydet(string calldata takmaAd) external {
        // 1. Boş takma adı reddet
        require(bytes(takmaAd).length > 0, "Takma ad bos olamaz");

        // 1. Aynı adresin ikinci kaydını reddet
        require(bytes(kayitlar[msg.sender]).length == 0, "Bu adres zaten kayitli");

        // 2. Kapasite dolunca yeni kaydı reddet
        require(toplamKayit < KAPASITE, "Etkinlik kapasitesi doldu");

        kayitlar[msg.sender] = takmaAd;
        toplamKayit += 1;
    }

    function kayitGetir(address kullanici) external view returns (string memory) {
        return kayitlar[kullanici];
    }
}