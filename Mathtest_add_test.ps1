$roundCount = 1
$rightanswers = 0
$wronganswers = 0
cls
do {
            write-host "this is Round: $roundCount"
            $num1 =  Get-Random -Maximum 10 -Minimum 1
            $num2 = Get-Random -Maximum 10 -Minimum 1
        
            $MathAnswer = $num1 + $num2
            $MathAnswer


            write-host "$num1 + $num2 ="
            $typedAnswer = Read-Host "what is the answer?"
            
            if ($MathAnswer -eq $typedAnswer) {
            cls
            Write-Host "The Answer was Correct!"
            $rightanswers ++
            }
            else {
            cls
            Write-Host "your answer is wrong." 
            $wronganswers ++
            }
         $roundCount ++  
    read-Host "Hit any Key to Continue."
    cls 
    } until ($roundCount -eq 11)