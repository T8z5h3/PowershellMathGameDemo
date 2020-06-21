cls

do {
#code functions to be called later in the script

$roundCount = $null
$roundCount = 1
$roundCount
#default numbers for calculations 
$num1 = 0
$num2 = 0
$rightanswers = 0 #tracking right numbers 
$wronganswers = 0 #tracking wrong numbers

cls



Write-Host "Math test program"
Write-Host ""
Write-Host ""
Write-Host "(1) Add, (2) Subtract, (3) Mautiply, (4) Devide, (5) exit"
write-host ""
$option = Read-Host "please enter a number from above"

cls

Switch ($option){

    1{
      do {
            write-host "this is Round: $roundCount"
            $num1 = Get-Random -Maximum 10 -Minimum 1
            $num2 = Get-Random -Maximum 10 -Minimum 1
        
            $MathAnswer = $num1 + $num2
            #$MathAnswer


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
    }

    2{
          do {
            write-host "this is Round: $roundCount"
            $num1 = Get-Random -Maximum 10 -Minimum 1
            $num2 = Get-Random -Maximum 10 -Minimum 1
          

         IF ($num1 -le $num2) {
            $MathAnswer = $num2 - $num1 
            #$MathAnswer
            write-host "$num2 - $num1 ="
            }
       else {
            $MathAnswer = $num1 - $num2
            $MathAnswer
             write-host "$num1 - $num2 ="
            }
            
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
   
   }

    3{
     do {
            write-host "this is Round: $roundCount"
            $num1 = Get-Random -Maximum 10 -Minimum 1
            $num2 = Get-Random -Maximum 10 -Minimum 1
        
            $MathAnswer = $num1 * $num2
            #$MathAnswer


            write-host "$num1 X $num2 ="
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

   }
    4{
              do {
            write-host "this is Round: $roundCount"
            $num1 = Get-Random -Maximum 10 -Minimum 1
            $num2 = Get-Random -Maximum 10 -Minimum 1
            do {
                $num1 =  Get-Random -Maximum 10 -Minimum 1
                $num2 = Get-Random -Maximum 10 -Minimum 1
                } until ($num1 % $num2 -eq 0)
          

         IF ($num1 -le $num2) {
            $MathAnswer = $num2 / $num1 
            #$MathAnswer
            write-host "$num2 / $num1 ="
            }
       else {
            $MathAnswer = $num1 / $num2
            #$MathAnswer
             write-host "$num1 / $num2 ="
            }
            
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

   }

}
$roundCount --

Write-Host "Finial Report"
Write-Host ""
Write-Host "right Answers: $rightanswers"
Write-Host "wrong Answers: $wronganswers"
Write-Host ""
write-host "Number of Questions Answered $roundCount"
write-host ""
read-Host "Hit any Key to Continue."
} until ($option -match 5)
break