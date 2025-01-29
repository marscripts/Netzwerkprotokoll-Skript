# Clear the screen before execution
Clear-Host

# Function to display the menu
function Show-Menu {
    Write-Host "`n==== Netzwerkprotokolle Erklärt ====" -ForegroundColor Cyan
    Write-Host "[1] Was ist eine IP-Adresse?" 
    Write-Host "[2] Was ist DNS?"
    Write-Host "[3] Was ist TCP?"
    Write-Host "[4] Was ist HTTP?"
    Write-Host "[5] Was ist FTP?"
    Write-Host "[6] Was ist SMTP?"
    Write-Host "[0] Beenden"
}

# Function Definitions

function Show-IP {
    Write-Host "`n🌍 **IP-Adresse (Internet Protocol)**" -ForegroundColor Green
    Write-Host "Stell dir vor, das Internet ist eine riesige Stadt, und jedes Gerät (Handy, PC, Router) ist ein Haus darin."
    Write-Host "`nDie **IP-Adresse** ist die Hausnummer, damit Daten wissen, wohin sie geschickt werden müssen."
    Write-Host "`n🔹 **IPv4** – klassische Adressen (z. B. 192.168.1.1)"
    Write-Host "🔹 **IPv6** – längere, moderne Adressen (z. B. 2001:db8::1)"
    Write-Host "`nOhne IP gäbe es kein Internet! 🚀"
}

function Show-DNS {
    Write-Host "`n📖 **DNS (Domain Name System)**" -ForegroundColor Green
    Write-Host "DNS ist wie das **Telefonbuch des Internets**."
    Write-Host "`nAnstatt lange Zahlen (IP-Adressen) einzugeben, kannst du einfach `google.com` eingeben."
    Write-Host "`n🔹 DNS übersetzt Namen in IP-Adressen, damit dein Computer weiß, wohin er Daten schicken muss."
    Write-Host "🔹 Ohne DNS müsstest du jede IP-Adresse auswendig wissen – ganz schön unpraktisch! 😅"
}

function Show-TCP {
    Write-Host "`n📦 **TCP (Transmission Control Protocol)**" -ForegroundColor Green
    Write-Host "TCP ist wie ein **zuverlässiger Postbote für das Internet**."
    Write-Host "`nStell dir vor, du schickst einen Brief in viele kleine Teile zerlegt (Datenpakete)."
    Write-Host "`n✅ Alle Pakete kommen in der richtigen Reihenfolge an."
    Write-Host "✅ Kein Paket geht verloren (sonst wird es neu gesendet)."
    Write-Host "✅ Die Daten sind vollständig und fehlerfrei."
    Write-Host "`n🚀 TCP wird für Webseiten, E-Mails und Downloads genutzt, da Genauigkeit wichtig ist."
}

function Show-HTTP {
    Write-Host "`n🌐 **HTTP (Hypertext Transfer Protocol)**" -ForegroundColor Green
    Write-Host "HTTP ist die **Sprache, mit der dein Browser mit Webseiten spricht**."
    Write-Host "`nWenn du eine Website aufrufst, passiert folgendes:"
    Write-Host "1️⃣ Dein Browser sendet eine HTTP-Anfrage an den Server."
    Write-Host "2️⃣ Der Server sendet die Website-Daten zurück."
    Write-Host "3️⃣ Dein Browser zeigt die Website an."
    Write-Host "`n🔹 **HTTP ist schnell, aber unsicher (Daten werden unverschlüsselt übertragen).**"
    Write-Host "🔹 **HTTPS** (mit *S* für *Secure*) verschlüsselt die Daten für mehr Sicherheit. 🔒"
}

function Show-FTP {
    Write-Host "`n📂 **FTP (File Transfer Protocol)**" -ForegroundColor Green
    Write-Host "FTP ist wie ein **digitaler Lieferdienst für Dateien**."
    Write-Host "`nEs wird benutzt, um Dateien zwischen Computern oder Servern zu übertragen, z. B.:"
    Write-Host "✅ Hochladen von Dateien auf eine Website"
    Write-Host "✅ Herunterladen großer Dateien von einem Server"
    Write-Host "✅ Austausch von Daten in Netzwerken"
    Write-Host "`n🔹 **FTP ist schnell, aber unsicher (Daten werden unverschlüsselt gesendet).**"
    Write-Host "🔹 **SFTP (Secure FTP)** bietet eine verschlüsselte Alternative. 🔒"
}

function Show-SMTP {
    Write-Host "`n📧 **SMTP (Simple Mail Transfer Protocol)**" -ForegroundColor Green
    Write-Host "SMTP ist das **Postsystem des Internets** – es sorgt dafür, dass E-Mails ihr Ziel erreichen! 📬"
    Write-Host "`nSo funktioniert SMTP:"
    Write-Host "1️⃣ Dein E-Mail-Client (z. B. Outlook, Gmail) schickt eine Nachricht an den SMTP-Server."
    Write-Host "2️⃣ Der SMTP-Server verarbeitet die E-Mail und sucht den richtigen Empfänger-Server."
    Write-Host "3️⃣ Die Nachricht wird an den E-Mail-Server des Empfängers weitergeleitet."
    Write-Host "4️⃣ Der Empfänger kann die E-Mail über ein Protokoll wie **IMAP oder POP3** abrufen."
    Write-Host "`n🔹 SMTP sendet nur E-Mails, empfängt aber keine (das übernehmen IMAP oder POP3)."
    Write-Host "🔹 Viele Mail-Server verlangen eine **Authentifizierung**, um Spam zu verhindern."
    Write-Host "🔹 SMTP kann mit **SSL/TLS** gesichert werden, um verschlüsselte Übertragung zu ermöglichen. 🔒"
    Write-Host "`n🚀 Kurz gesagt: SMTP ist das Herzstück des E-Mail-Versands im Internet!"
}


# Main Loop
do {
    Show-Menu
    $choice = Read-Host "`nGib die Nummer ein, um mehr zu erfahren (oder 0 zum Beenden)"

    switch ($choice) {
        "1" { Show-IP }
        "2" { Show-DNS }
        "3" { Show-TCP }
        "4" { Show-HTTP }
        "5" { Show-FTP }
        "6" {Show-SMTP}
        "0" { Write-Host "`nProgramm beendet. 👋 Bis zum nächsten Mal!" -ForegroundColor Yellow; exit }
        default { Write-Host "`n⚠ Ungültige Eingabe. Bitte wähle eine Zahl von 0 bis 5." -ForegroundColor Red }
    }

    Read-Host "`nDrücke [Enter], um fortzufahren..."
    Clear-Host

} while ($true)
