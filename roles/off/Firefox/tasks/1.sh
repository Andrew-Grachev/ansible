echo "export GTK_IM_MODULE=ibus" >> ~/.bashrc
echo "export XMODIFIERS=@im=ibus" >> ~/.bashrc
echo "export QT_IM_MODULE=ibus" >> ~/.bashrc
echo "ibus-daemon -d -x -r" >> ~/.profile
echo "export GTK_IM_MODULE=ibus" >> /etc/skel/.bashrc
echo "export XMODIFIERS=@im=ibus" >> /etc/skel/.bashrc
echo "export QT_IM_MODULE=ibus" >> /etc/skel/.bashrc
echo "ibus-daemon -d -x -r" >> /etc/skel/.profile
