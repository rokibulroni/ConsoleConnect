$ipAddress = "xxx.xxx.xx.xx"  
$port = xxxx      

$listener = New-Object System.Net.Sockets.TcpListener ([System.Net.IPAddress]::Parse($ipAddress), $port)
$listener.Start()

Write-Host "Chat server started on $($listener.LocalEndpoint)"

$client = $listener.AcceptTcpClient()
$stream = $client.GetStream()
$reader = New-Object System.IO.StreamReader($stream)
$writer = New-Object System.IO.StreamWriter($stream)
$writer.AutoFlush = $true

Write-Host "Connected to client: $($client.Client.RemoteEndPoint)"

# Start the chat loop
do {
    $receivedMessage = $reader.ReadLine()
    Write-Host "Received: $receivedMessage"
    
    $response = Read-Host "Reply: "
    $writer.WriteLine($response)
} while ($receivedMessage -ne "exit")

# Clean up
$reader.Close()
$writer.Close()
$stream.Close()
$client.Close()
$listener.Stop()
