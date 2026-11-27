# Quantum Başlangıç

Bu depo, Quantum Team Blokzincir Takımı yeni üye oryantasyon sürecindeki çalışmalarımı ve araştırma notlarımı içermektedir.

## Amaç

Bu çalışmanın amacı blokzincirin temel kavramlarını öğrenmek, Ethereum ekosistemini tanımak, cüzdanlar ve akıllı sözleşmeler hakkında bilgi edinmek ve ilerleyen görevlerde kendi uygulamalarımı geliştirebilmektir.

## Öğrenmek İstediğim Konular

- Blokzincir kriptolojisi
- DLT sistemlerinde mahremiyet
- Akıllı sözleşmeler
- Web3 uygulamaları
- DeFi ve DAO sistemleri

## İçerik

- Araştırma notları
- Oryantasyon görevleri
- Uygulama çalışmaları
- Ethereum ve blokzincir deneyleri

## Kullanılan Araçlar

- Git
- GitHub
- Visual Studio Code
- MetaMask
- Remix IDE
### İP 19 – Etherscan Kayıt ve Doğrulama

* **Sözleşme:** `0x9b4B2fcd0456fd6b60bC8663350F48118146566E`
* **Cüzdan:** `0x73330A079CEDC968804590E9a854657b3b774818`
* **İsim:** `fatmamirayyahyaoglu`
* **Tx Hash:** `0xd0df2b638da8e23e1fccb9c8afb4315f916c66cbbdaa366f27fb8eb7711a6291`

* **Doğrulama:** Sepolia Etherscan'de `register` işlemi yapıldı; `kayitliMi` (`true`), `tumKayitlar` (`sira: 1`) ve `Registered` logu ile doğrulandı. Kayıt yalnızca kendi sözleşmeme aittir, takım sözleşmesindeki (`0x81Dd700C459BF2806A1B5F2a349c89f0106A9036`) verilerden bağımsızdır.
* **Remix ve Etherscan:** İkisi de aynı Sepolia ağına ve aynı sözleşme adresine bağlanıp cüzdan imzasıyla işlem gönderir; fark sadece arayüzdür.
* **Kendi kopyaya kayıt:** Her sözleşme adresinin kendi bağımsız depolama (`storage`) alanı vardır; takım sözleşmesinde kayıtlı olsam da kendi kopyamda ilk kaydım olduğu için kabul edildi.