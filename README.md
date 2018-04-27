this work in WINDOWS SERVER 2012/.. but in Windows 7/8/..

you need to open it with powershell and make this command 

PowerShell powershell -ExecutionPolicy ByPass -File ./go.ps1

---

or you can make it auto 

Open Task Scheduler(Local) -> Task Scheduler Library ->Right click-> Import Task->OK

and import xml file 

you need just change dictionary in xml file
