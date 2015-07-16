# Zstatus Productivity Indicator
### Description
This is a simple command-line controlled LED indicator to show your co-workers your current availibility status.
The light will turn green when available and red when you do not want to be disturbed. 
### Implementation
#### Items Required:
* Pro Micro - 5V/16MHz
* LED - RGB Diffused Common Cathode
* Wires

#### Hardware Setup:
* Solder wires from pins 10 and 16 on the Pro Micro to two of the annodes on the LED
* Solder cathode of LED to GND pin on the Pro Micro

#### Software Setup:
* Download Arduino Software and run application
* Go to Tools and select Arduino Leonardo for the board
* Compile and load the .ino file above
* run 'screen /dev/tty.usbmodem1451 -dmS "status"' in your terminal
* run 'screen -ls' as well and look at result for something similar to this: 32220.ttys002.4223
* grab pattern and replace all instances of '32220.ttys002.4223' with your own pattern in status.rb
* in script.sh replace '/Users/zfeuerstein/Documents/scripts/zstatus/' with your local location of this code
* run chmod +x script.sh
* add 'alias zstatus='/Users/zfeuerstein/Documents/scripts/zstatus/status.sh'' to your .bashrc file and replace my file location with yours
* reload your .bashrc file by running source .bashrc

#### Running the Software
* type in terminal 'zstatus <state>'
* the <state> should be replaced by one of the 3 following states:  busy, available, or off
* busy will turn the light red
* available will turn the light green
* off will turn the light off

#### Next Steps
* Implementing this to run over wifi or bluetooth
* Software to alert whether your personal site or any other site is down
