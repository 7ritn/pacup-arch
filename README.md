# pacup-arch
***Simplify package updating***

Arch系 もしくは Manjaro系のディストリビューションで、パッケージのアップデートをする際に  
`sudo pacman -Syu && sudo pacman -Rns $(pacman -Qtdq) && sudo snap refresh && flatpak update && yay -Sayu`  
と入力するのを `pacup` として**大幅に短縮する**コマンドです。

(「yay -Sayu」の部分は各自のAURヘルパーのコマンドに適宜読み替えて下さい。意味は「AURのパッケージのみの更新」です)

## 「pacup-arch」のインストール方法
```
sudo pacman -S git
git clone https://github.com/Jin-Asanami/pacup-arch
cd pacup-arch
sudo bash ./install_pacup.sh
```

## 詳細
元々は「[**EtupOS**](https://etupos.penginn.com)」の開発者である「**ペンえぬ**」氏が作り､ 桜咲ヒロ氏が｢[**Flatpak**](https://flatpak.org)｣ と ｢[**Snap**](https://snapcraft.io)｣ のサポートを追加したコマンドです｡
それをPacmanとAURに対応させたのがこの「pacup-arch」です。

## コマンド制作者
- **ペンえぬ**  （テンプレートを作成）
- **桜咲ヒロ**  （プラットフォームを更新するために｢[**Snap**](https://snapcraft.io)」と「[**Flatpak**](https://flatpak.org)」を追加）
- **シューゴ**  （主に機能追加・修正）
- **麻浪迅**    （Pacman及びAURに対応）

## AURの対応状況
2022/12/23 Yay、Paru、Pacaur、Pikaurに対応。
