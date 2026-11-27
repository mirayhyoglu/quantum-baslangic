// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EtkinlikKayitV3 {
    address public gorevli;
    mapping(address => string) private kayitlar;
    mapping(address => bool) public girisYaptiMi;
    uint256 public constant KAPASITE = 3;
    uint256 public toplamKayit;

    event KatilimciKaydoldu(address indexed katilimci, string takmaAd);
    event KatilimciGirisYapti(address indexed katilimci);

    constructor() {
        gorevli = msg.sender;
    }

    modifier sadeceGorevli() {
        require(msg.sender == gorevli, "Bu islem icin yetkiniz yok");
        _;
    }

    function takmaAdKaydet(string calldata takmaAd) external {
        require(bytes(takmaAd).length > 0, "Takma ad bos olamaz");
        require(bytes(kayitlar[msg.sender]).length == 0, "Bu adres zaten kayitli");
        require(toplamKayit < KAPASITE, "Etkinlik kapasitesi doldu");

        kayitlar[msg.sender] = takmaAd;
        toplamKayit += 1;

        emit KatilimciKaydoldu(msg.sender, takmaAd);
    }

    function girisOnayla(address katilimci) external sadeceGorevli {
        require(bytes(kayitlar[katilimci]).length > 0, "Bu adres kayitli degil");
        require(!girisYaptiMi[katilimci], "Bu katilimci zaten giris yapti");

        girisYaptiMi[katilimci] = true;

        emit KatilimciGirisYapti(katilimci);
    }
}