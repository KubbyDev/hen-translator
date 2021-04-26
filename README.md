# Hen Translator

The goal of this project is to make a small module that can be attached around the neck of a chicken. This module listens for chicken sounds and "translates" them (it says a random sentence with a synthesized voice).
This idea is dumb, I know, but I leaned a lot doing it.

## Demo

The electronics are working, the mechanical part is finished too. On the software part I only tested every part independently. The only thing left to do is fixing a sound level problem and writing the complete program.

(TODO: Video demo)
![The PCB](https://i.imgur.com/riOErjP.jpg)

## How does it work?

### Electronics

I made my own PCB for this project. The main concerns when selecting the components were size, power consumption and cost.
All the components I used on the final board are listed here:
<https://github.com/KubbyDev/hen-translator/blob/main/Infos/Components.txt>

##### Storage

To store all the audio samples, I decided to use an SD card because it's easy to load new wave files. I used a mosfet to cut power when the SD card is not needed because the board is just listening most of the time.

##### Speaker

I used a simple 8 Ohm 0.7 Watt smd speaker to produce sounds. I added a large capacitor to filter out current spikes and a mosfet so the microcontroller can control it without powering it.

##### Microcontroller

At the beginning of the project I wanted to use an Arduino Nano because I was familiar with these board. The main problem was its size. But then I heard about the Pro Mini which is much smaller. The only catch is that it doesn't have a USB port for programming, but it's not that hard to go without it. Then I did some research and saw that it's a good idea to desolder the power led and the 3.3V LDO if I don't use it because it draws power. Ok why not. But then it's easier to just buy the microcontroller and solder it into my own board. The only difficulty it adds it the bootloader that doesn't come preinstalled.
So I chose an AtMega328p, and I added through-hole test points to plug wires to burn the bootloader (SPI) and load programs (Serial). I also added a switch between the power pins of the MCU and the power rail of the rest of the board because it's 3.3V and I want to be able to program it with an Arduino (5V) without putting 5V in the 3.3V components.
My first attempt at burning the bootloader didn't work because I was using the Arduino Uno bootloader but the chip on the 1st version of the PCB was using a 10 MHz crystal oscillator. This didn't cause problems to burn the bootloader because SPI is synchronous, but then I couldn't upload sketches because the baud rates were wrong. I solved this by simply using the 8 MHz internal clock instead of my 10 MHz external crystal, and burning a bootloader made for an 8 MHz clock. I could hack a 10 MHz bootloader but now that I know the external crystal is not needed, I prefer just removing it.

##### Power management

My first idea was to use a 3V button battery and a boost converter to get 5V to power the microcontroller. But I wanted to use an SD card which works at 3.3V, so I had to add a 3.3V LDO from 5V or a second boost converter. This is not efficient at all.
But then I saw that the AtMega328p works from 1.8V to 5.5V, so I decided to use a single boost converter to 3.3V and power everything from it. I also did some research about low voltage mode (1.8V) on SD card but didn't find much information so I gave up this idea.
Later I realized I had another problem: the speaker draws 200 mA at 3.3V which a button battery can't provide. So I switched to a 1.5V AAA battery. But 200mA is also too much for the cheap boost converter I had found, and better boost converters are a lot more expensive. So I just connected the speaker directly to the battery so I don't need to change the converter (I had already ordered it), I can remove the resistor I had to limit current at 3.3V and I can have a higher current than if I chose a cheap regulator that I would have to run at its limits (so with a low efficiency). With this solution I get 0.3W at 1.5V.
The final change I made was switching to two 1/2 AAA 1.2V batteries. They take the same space as the 1.5V battery but have a combined output of 2.4V which forces 0.7W to pass through the speaker.

##### Crystal oscillator

To provide a clock to the microcontroller I wanted to use a 16 MHz quartz oscillator at first because it's what's used on Uno and Nano boards. But when I chose to power everything from 3.3V I saw that the AtMega328p has a maximum clock speed that depends on the power input voltage. For 3.3V, 16 MHz is too fast, but 10 MHz should work fine so I used a 10 MHz external oscillator.
Then, because of the bootloader problems described in the microcontroller section, I just removed it to use the internal 8 MHz oscillator.

##### Microphone

I chose a MEMS microphone because they are cheap and very small. For the first version of the PCB I chose a PDM microphone without doing much research about it and found out later that it's very hard to read from an AtMega328p...
I did a lot of research and found solutions like hacking the SPI controller to read PDM with it, using a DAC to convert PDM to analog to read it, using a low pass filter to filter out low SPL values and just triggering the translation when something comes out of the filter etc...
Eventually I just changed the PDM microphone for an analog output microphone with an operational amplifier. It was a nightmare to solder but it works well.

##### PCB

The first PCB had some major flaws like the microphone I couldn't read, the speaker that drew too much current and some pullup resistors that were missing on the SPI lines for the SD card.
I also connected Aref to VCC instead of a capacitor to GND on the microcontroller.
The test points were too small for my wires, so I had to solder them but some of the vias detached and everything was a big mess, but I was able to learn from it and I haven't had any problem with the second version of the PCB.

(TODO: picture of first version + second version with cables and led)

### Software

To burn the bootloader, I use an Arduino Uno with the ArduinoISP example sketch connected via SPI to my PCB. To upload sketches, I use an Arduino Uno with the microcontroller removed and a Serial connection to my PCB. The procedure is detailed here:
<https://github.com/KubbyDev/hen-translator/blob/main/Infos/BurnBootloader.txt>

The program has 3 things to do:

- listen for chicken sounds
- when it detects one, play a random wav file from the SD card
- monitor the battery voltage and alert with the led or the speaker when power is too low

Currently I have tested all the parts independently and everything works except the sound levels are too low with wav files (not with raw tones) and the gain of the microphone is too low (but usable. I will still change it).

##### Speaker control

To play wav files I use the TMRpcm library. It works but this library is very complicated and I have some sound level problems. I might have to write my own player.

##### SD card reading

To read data from the SD card I use the Arduino SD library (and TMRpcm does too). It works with standard 2GB SD cards but not with the cheap 512B cards I bought. I will try to fix the library but for now I just use 2GB cards.

##### Microphone reading

I would like to do some cool FFT sound recognition but I don't think it will be possible on the AtMega328p mainly because it's too slow and doesn't have enough ram.
For the moment I will just trigger the translation when the sound pressure level goes higher than a certain threshold.

### Mechanics

I had to learn Fusion360 for this project so the CAD could probably be way better, but it works.
There are two parts. The box that goes on the chicken, and a stand because I don't actually have a chicken at home and also because this version is not reliable enough for these conditions.
Everything is 3D printed in white PLA and painted.

The collar is just a box holding the board and the battery with a power switch and holes for sound to come in and out.

The stand is based on a chicken I found on Thingyverse. The interior is hollow, and contains a PCB (the same PCB, but without microphone because it's not needed), a battery, a power switch and a button to trigger a chicken sound. The button is an end of travel sensor that we can trigger by pushing on the thingy on the head of the chicken.

(TODO: pictures)

## Things I should change

- The main problem in this design is the lack of some kind of sound recognition. Just looking at the sound level is not enough to trigger the translation only when the chicken makes noises. I originally planned to try to use FFTs to make a simple recognition system but the AtMega328p is too underpowered and has far too little memory to work with. If I make a V2, I will probably go for a much more powerful STM32 or even a Linux system.
- The speaker is not powerful enough. This should be fairly easy to change but I have to keep in mind that it will also draw more power.
