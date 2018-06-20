**Author:** [Sjshovan (Apogee)](https://github.com/Ap0gee)  
**Version:** v0.9.0  


# Battle Stations

> A Windower 4 addon that allows the user to change or remove the default battle music in Final Fantasy 11 Online.


### Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Aliases](#aliases)
- [Usage](#usage)
- [Commands](#commands)
- [Support](#support)
- [Change Log](#change-log)
- [Known Issues](#known-issues)
- [TODOs](#todos)
- [License](#license)

___
### Prerequisites
1. [Final Fantasy 11 Online](http://www.playonline.com/ff11us/index.shtml)
2. [Windower 4](http://windower.net/)

___
### Installation

**Windower:**   
Not yet available on windower, installation will have to be done manually.

**Manual:**
1. Navigate to <https://github.com/Ap0gee/BattleStations>.
2. Click on `Releases`. 
3. Click on the `Source code (zip)` link within the latest release to download.
4. Extract the zipped folder to `Windower4/addons/`.
5. Rename the folder to remove the version tag (`-v0.9.0`). The folder should be named `BattleStations`.

___
### Aliases
The following aliases are available to Battle Stations commands:    

**battlestations:** stations | bs   
**list:** l    
**set:** s   
**get:** g  
**default:** d    
**normal:** n   
**reload:** r    
**help:** h   
**stations:** station | s   
**radios:** receivers | receiver | radio | r   
**all:** all | a | *   

___
### Usage

Manually load the addon by using one of the following commands:
    
    //lua load battlestations 
    //lua l battlestations

___    
### Commands 

**help**

Displays the available Battle Stations commands. Below are the equivalent ways of calling the command:

    //battlestations help
    //stations help
    //bs help
    
    //battlestations h
    //stations h
    //bs h

**list _[radios|stations] [category#]_** 

Displays the available radios and or stations. Below are some useage examples of this command:
	
    //bs list
    //bs l
    
    //bs list radios
    //bs l radios
    //bs l r
    
	//bs list stations
    //bs l stations
    //bs l s
    
    //bs l s 100
    
* _**[radios|stations]:**_ Optional parameter used to filter the list display to show only available radios or stations. If neither filter type is present, all available stations and radios will be listed.    
* _**[category#]:**_ Optional parameter used to filter the list of stations by the given category number. The available category numbers are 100-107.
   
**set _\<station> [radio]_**

Sets the radio(s) to the given station. Below are some useage examples of this command:

    //bs set 100.1
    //bs s 100.1
    
    //bs s 100.1 solo
    //bs s 100.1 party
    
* _**\<station>:**_ Required parameter.     
* _**[radio]:**_ Optional parameter used to specify which radio to set the given station to. If no radio type is present both radios will be set to the given station.    

**get _[radio]_** 

Displays the currently set station on the given radio(s).  Below are some useage examples of this command:

    //bs get
    //bs g
    
    //bs g solo
    //bs g party

* _**[radio]:**_ Optional parameter used to specify the radio for which you would like to display the currently set station. If no radio type is present, the currently set station for both radios will be displayed.

**default _[radio]_**

Sets the given radio(s) to the default station (Current Zone Music). Below are some useage examples of this command:

	//bs default
    //bs d
   	
    //bs d solo
    //bs d party
    
* _**[radio]:**_ Optional parameter used to specify which radio to set the default station to. If no radio type is present, both radios will be set to the default station.


**normal _[radio]_**

Sets the given radio(s) to the original game music. Below are some useage examples of this command:

	//bs default
    //bs d
   	
    //bs d solo
    //bs d party
    
* _**[radio]:**_ Optional parameter used to specify which radio to set the default station to. If no radio type is present, both radios will be set to the default station.

**reload**

Reloads the Battle Stations addon. Below are the equivalent ways of calling the command:
	
    //battlestations reload
    //stations reload
    //bs reload
    
    //battlestations r
    //stations r
    //bs r

___
### Support
**Having Issues with this addon?**
* Please let me know [here](https://github.com/Ap0gee/BattleStations/issues/new).
  
**Have something to say?**
* Send me some feedback here: <sjshovan@gmail.com>

**Want to stay in the loop with my work?**
* You can follow me at: <https://twitter.com/Sjshovan>

**Want to show your love and help me make more awesome stuff?**
* You can do so here: <https://www.paypal.me/Sjshovan>  

___
### Change Log

**v0.9.0** - 6/19/2018
- Initial release

___
### Known Issues

None

___    
### TODOS

- **TODO:** Consider providing aliases to stations to make references easier.
- **TODO:** Consider adding categories as a list type.
___

### License

Copyright © 2018, [Sjshovan (Apogee)](https://github.com/Ap0gee).
Released under the [BSD License](LICENSE).

***