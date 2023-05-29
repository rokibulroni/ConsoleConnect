$serverIpAddress = "xxx.xxx.xx.xx"  
$port = xxxx                  

$client = New-Object System.Net.Sockets.TcpClient($serverIpAddress, $port)
$stream = $client.GetStream()
$reader = New-Object System.IO.StreamReader($stream)
$writer = New-Object System.IO.StreamWriter($stream)
$writer.AutoFlush = $true

Write-Host "Connected to server: $($client.Client.RemoteEndPoint)"

# Start the chat loop
do {
    $message = Read-Host "Enter your message (type 'exit' to quit): "
    $writer.WriteLine($message)
    
    $receivedMessage = $reader.ReadLine()
    Write-Host "Received: $receivedMessage"
} while ($message -ne "exit")

# Clean up
$reader.Close()
$writer.Close()
$stream.Close()
$client.Close()
