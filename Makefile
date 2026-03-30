HOME=/home/skip


setup_kmonad:
	mkdir -pv $(HOME)/.local/share/kmonad/
	cp -v ./kmonad/kmonad ./kmonad/launch_kmonad.sh $(HOME)/.local/share/kmonad/
	chmod +x $(HOME)/.local/share/kmonad/kmonad $(HOME)/.local/share/kmonad/launch_kmonad.sh
	cp -v ./kmonad/kmonad.service /etc/systemd/system/
	systemctl enable kmonad.service
	systemctl start kmonad.service

clean_kmonad:
	rm -rfv $(HOME)/.local/share/kmonad/ /etc/systemd/system/kmonad.service
