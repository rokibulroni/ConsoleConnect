# ConsoleConnect
Console Connect - A Secure Chat Server on powershell

## Requirements:
- Portforwarding: You can use portmap io, here I am using PIA VPN for that.
- Set Execution Policy before run: Set-ExecutionPolicy Unrestricted
- run the server script 1st: ./chatserver.ps1 from powershell admin
- run the client script 2nd: ./clientserver.ps1 from another pc
- both pc/computer needs to run: Set-ExecutionPolicy Unrestricted


**In the client script, replace `"xxx.xxx.xx.xx"` with the IP address and Port of the computer running the server script.**

*With both scripts running, you can now start chatting between the two computers by entering messages in the client's PowerShell console. The server will display the received messages and prompt for a reply.*

> Note that this is a simple example and doesn't handle multiple clients
> or error conditions. It's meant to provide a basic understanding of
> how to create a chat application using PowerShell.

 
