#  ~/.dotfiles/.zshrc

#  共通設定を読み込む


source ~/.dotfiles/zshrc.common

#  環境に応じて読み分け
case "$OSTYPE" in
	linux-android*)
		source ~/.dotfiles/zshrc.termux ;;
	linux-gnu*)
		if grep -qEi "Microsoft" /procversion; then
			source ~/.dotfiles/zshrc.wsl
		fi ;;
	darwin*)
		source ~/.dotfiles/zshrc.mac ;;
esac

