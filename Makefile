kmonad:
	mkdir -pv ~/.local/share/kmonad/
	cp -v ./kmonad ./launch_kmonad.sh ~/.local/share/kmonad/
	chmod +x ~/.local/share/kmonad/kmonad ~/.local/share/kmonad/launch_kmonad.sh
	cp -v ./kmonad.service /etc/systemd/system/
	systemctl enable kmonad.service
	systemctl start kmonad.service

clean_kmonad:
	rm -rfv ~/.local/share/kmonad/ /etc/systemd/system/kmonad.service
