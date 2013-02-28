xdotool mousemove 4000 4000
cd /home/sysad/Celestra/Weapons/Torpedo
/home/sysad/.rvm/rubies/ruby-1.9.2-p180/bin/ruby server.rb -s ninja -c celestra -d for -r > /home/sysad/rubylog &
sleep 10
chromium-browser --incognito --kiosk http://0.0.0.0:4000 &