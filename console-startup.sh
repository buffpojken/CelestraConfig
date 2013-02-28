xdotool mousemove 4000 4000
cd /home/sysad/Celestra/Sensor/Dradis
/home/sysad/.rvm/rubies/ruby-1.9.2-p180/bin/ruby server.rb -s ninja > /home/sysad/rubylog &
sleep 10
chromium-browser --incognito --kiosk http://0.0.0.0:4001 &