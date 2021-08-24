# Thermos
![Thermos](thermos_icon.png)

[![Build Status](https://jenkins.sirblobman.xyz/job/Cauldron/job/Thermos/badge/icon)](https://jenkins.sirblobman.xyz/job/Cauldron/job/Thermos/)
![Minecraft Forge v10.13.4.1614][forge]
![Minecraft v1.7.10][mc]
![Java JDK v1.8][java]
![Spigot 1.7.10][spigot]

### What's Thermos?
Thermos is a fork of KCauldron, a craftbukkit forge server for Minecraft 1.7.10.
After periods of inactivity on KCauldron's GitLab concerning major issues, Thermos was created to allow active members of the Minecraft coding community to optimize it and provide fixes in a timely manner.
We hope to eliminate all issues with CraftBukkit Forge servers. In the end, we envision a seamless, low lag Thermos experience.

#### Advantages over KCauldron:
+ Lag-lowering optimizations
+ Better world protection (Forge stuff doesn't bypass Bukkit plugins!)
+ Many patches that KCauldron didn't get from Spigot
+ Dupe glitch fixes

## Downloads
You can download the pre-built packages from [here](https://jenkins.sirblobman.xyz/job/Cauldron/job/Thermos/).  
P.S. **PLEASE** look at the changes list before downloading! :smile:

## Installation Instructions
1. Download the jar file and libraries ZIP from [here](https://jenkins.sirblobman.xyz/job/Cauldron/job/Thermos/).
2. Delete the "bin" and "libraries" folders if they exist in your server folder.
3. Extract the "libraries.zip" file into your server folder.
4. Use the following command to start the server:
```
java -XX:+UseG1GC -XX:+UseFastAccessorMethods -XX:+OptimizeStringConcat -XX:MetaspaceSize=1024m -XX:MaxMetaspaceSize=2048m -XX:+AggressiveOpts -XX:MaxGCPauseMillis=10 -XX:+UseStringDeduplication -Xms4G -Xmx6G -XX:hashCode=5 -Dfile.encoding=UTF-8 -jar "Thermos-1.7.10-1614-server.jar" --log-strip-color
```

## Build Requirements
* Java JDK 8 or higher
* `JAVA_HOME` defined on your OS

## Building Instructions
1. Checkout Project: `git clone https://github.com/SirBlobman/Thermos.git`
2. Setup Git Modules: `git submodule update --init --recursive`
2. Setup Project: `./gradlew clean setupCauldron`
3. Create JAR File: `./gradlew jar`

All builds will be in `build/distributions`

## Known Caveats, use provided fixes at your own risk.
✖ Lilypad: 100% not compatible with Forge, lead developer has declined to add support when asked.

✔ Mobius / Opis: You can download fixed version [HERE](https://cdn.discordapp.com/attachments/172072987154055168/186577486593785857/MobiusCore-1.2.5-Thermos.jar)

✔ SkinsRestorer: Latest working version is 10.4.4

[forge]: https://img.shields.io/badge/Minecraft%20Forge-v10.13.4.1614-green.svg "Minecraft Forge v10.13.4.1614"
[mc]: https://img.shields.io/badge/Minecraft-v1.7.10-green.svg "Minecraft 1.7.10"
[java]: https://img.shields.io/badge/Java%20JDK-v1.8-blue.svg "Java JDK 8"
[spigot]: https://img.shields.io/badge/Spigot-v1.7.10--R0.1--SNAPSHOT-lightgrey.svg "Spigot 1.7.10"
