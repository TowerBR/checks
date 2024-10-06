::OPEN SSL BATCH FILE TOOL KIT
::Last Edited: 9/18/2007
::Jake Burton
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Turn the echo command off
@echo off
::Clear screen
cls  
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: *START MENU*
:menu
::*Clear screen
cls 
::Menu title
echo Menu
echo ----
::Display options
echo 1. Create Message
echo 2. Encryption Tool
echo 3. Hash Tool
echo 4. Exit to Command Line
::Clear %menu%
set menu=
::Display blank line
echo.
::Prompt for %menu%
set /p menu="Choose which tool you would like to use: "
::If %menu%= [1,2,3,4 ] GOTOs
if '%menu%'=='1' goto menu1
if '%menu%'=='2' goto menu2
if '%menu%'=='3' goto menu3
if '%menu%'=='4' goto menu4
::If the if statements havent redirected the pointer by now the ECHO command will be executed, as it is the next line of code
echo "%menu%" is not a valid choice.
::Pause
pause
::GOTO
goto :menu
:: *END MENU*
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: *START CREATE MESSAGE*
:menu1
::Clear screen
cls
::Create Message Title
echo Create Message
echo --------------
echo.
::Clear %messae%
set message=
::Prompt for %message%
set /P message="Enter the message: "
::Blank line
echo.
::Clear %path%
set path=
::Prompt for %path%
set /P path="Enter the full path of the (sub)directory to save the message in: "
::Blank line
echo.
::Clear %outfile%
set outfile=
::Prompt for %outfile%
echo NOTE: you must enter a file extension if you wish to have one
set /P outfile="Save file as: "
::Blank line
echo.
::Change dir to %path%
cd /d "%path%"
::Save %message% to %path%\%outfile%
echo "%message%">"%outfile%"
::Display %outfile%
echo Here is your message:
echo.
type "%outfile%"
::Blank line
echo.
::Pause
pause
::Return to :menu
goto :menu
:: *END CREATE MESSAGE*
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: *START ENCRYPTION TOOL*
:menu2
::Clear screen
cls
echo Encryption Tool
echo ---------------
:: Clear %path% 
set path=
::Promt for %path% (path of infile)
set /P path="Enter path of file (excluding file name): "
::Clear %infile%
set infile=
::Prompt for %infile% (infile name & extension)
set /P infile="Enter file name: "

::Clear %enc% 
set enc=
::Set %enc%
echo 1. Encrypt
echo 2. Decrypt
set /P enc="Would you like to encrypt or decrypt? "
::Display ciphers
echo Choose a cipher:
echo  1. aes-128-cbc    2. aes-128-ecb   3. aes-192-cbc     4. aes-192-ecb     5. aes-256-cbc
echo  6. aes-256-ecb    7. base64        8. bf              9. bf-cbc         10. bf-cfb
echo 11. bf-ecb        12. bf-ofb       13. cast           14. cast-cbc       15. cast5-cbc
echo 16. cast5-cfb     17. cast5-ecb    18. cast5-ofb      19. des            20. des-cbc
echo 21. des-cfb       22. des-ecb      23. des-ede        24. des-ede-cbc    25. des-ede-cfb
echo 26. des-ede-ofb   27. des-ede3     28. des-ede3-cbc   29. des-ede3-cfb   30. des-ede3-ofb
echo 31. des-ofb       32. des3         33. desx           34. idea           35. idea-cbc
echo 36. idea-cfb      37. idea-ecb     38. idea-ofb       39. rc2            40. rc2-40-cbc
echo 41. rc2-64-cbc    42. rc2-cbc      43. rc2-cfb        44. rc2-ecb        45. rc2-ofb
echo 46. rc4           47. rc4-40
::Display blank line
echo.
::Clear %cipher%
set cipher=
::Prompt for %cipher%
set /p cipher="Enter the number of your choice: "
::change %cipher% if statements
if '%cipher%'=='1' set cipher=aes-128-cbc
if '%cipher%'=='2' set cipher=aes-128-ecb
if '%cipher%'=='3' set cipher=aes-192-cbc
if '%cipher%'=='4' set cipher=aes-192-ecb
if '%cipher%'=='5' set cipher=aes-256-cbc
if '%cipher%'=='6' set cipher=aes-256-ecb
if '%cipher%'=='7' set cipher=base64
if '%cipher%'=='8' set cipher=bf
if '%cipher%'=='9' set cipher=bf-cbc
if '%cipher%'=='10' set cipher=bf-cfb
if '%cipher%'=='11' set cipher=bf-ecb
if '%cipher%'=='12' set cipher=bf-ofb
if '%cipher%'=='13' set cipher=cast
if '%cipher%'=='14' set cipher=cast-cbc
if '%cipher%'=='15' set cipher=cast5-cbc
if '%cipher%'=='16' set cipher=cast5-cfb
if '%cipher%'=='17' set cipher=cast5-ecb
if '%cipher%'=='18' set cipher=cast5-ofb
if '%cipher%'=='19' set cipher=des
if '%cipher%'=='20' set cipher=des-cbc
if '%cipher%'=='21' set cipher=des-cfb
if '%cipher%'=='22' set cipher=des-ecb
if '%cipher%'=='23' set cipher=des-ede
if '%cipher%'=='24' set cipher=des-ede-cbc
if '%cipher%'=='25' set cipher=des-ede-cfb
if '%cipher%'=='26' set cipher=des-ede-ofb
if '%cipher%'=='27' set cipher=des-ede3
if '%cipher%'=='28' set cipher=des-ede3-cbc
if '%cipher%'=='29' set cipher=des-ede3-cfb
if '%cipher%'=='30' set cipher=des-ede3-ofb
if '%cipher%'=='31' set cipher=des-ofb
if '%cipher%'=='32' set cipher=des3
if '%cipher%'=='33' set cipher=desx
if '%cipher%'=='34' set cipher=idea
if '%cipher%'=='35' set cipher=idea-cbc
if '%cipher%'=='36' set cipher=idea-cfb
if '%cipher%'=='37' set cipher=idea-ecb
if '%cipher%'=='38' set cipher=idea-ofb
if '%cipher%'=='39' set cipher=rc2
if '%cipher%'=='40' set cipher=rc2-40-cbc
if '%cipher%'=='41' set cipher=rc2-64-cbc
if '%cipher%'=='42' set cipher=rc2-cbc
if '%cipher%'=='43' set cipher=rc2-cfb
if '%cipher%'=='44' set cipher=rc2-ecb
if '%cipher%'=='45' set cipher=rc2-ofb
if '%cipher%'=='46' set cipher=rc4
if '%cipher%'=='47' set cipher=rc4-40
::Change directory to %path%
cd /d %path%
::%enc% option GOTOs if statements
if '%enc%'=='1' goto :enc
if '%enc%'=='2' goto :dec
:enc
::Execute OpenSSL and encrypt %infile% with %cipher%
C:\openssl\bin\openssl enc -e -in %infile% -%cipher% -out %infile%.%cipher%
:dec
C:\openssl\bin\openssl enc -d -in %infile% -%cipher% -out %infile%.txt
goto show2
::Display encrypted contents & type of cipher used *********(options will be shown here too )*********
:show1
echo The contents of the file %infile%.%cipher% are:
::Display blank line
echo.
type %infile%.%cipher%
::Display blank line
echo.
::Display "Would you like to save the contents of your encrypted file?"
echo Would you like to save the contents of your enrypted file?
::Prompt user [Y/N]

echo.
::Pause
pause
echo.
::Display directory listing************set perameters*************
echo Directory listing:
dir %path%\%infile%

::***************WOULD YOU LIKE TO RENAME THE FILE????********************
::ECHO BLANK LINE
echo.
::Pause
pause
::Return to :menu
goto :menu
:: *END ENCRYPTION TOOL*
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::*START HASH TOOL*
:menu3
::Clear screen
cls
::Title
echo Hash Tool
echo ---------
::Clear %path%
set path=
::Promt for %path%
set /P path="Enter path of file (excluding file name) "\
::Prompt for %infile%
set /P infile="Enter file name and extension: "
::List of digests
echo 1. md2            2. md4            3. md5
echo 4. rmd160         5. sha            6. sha1
::Clear %choice%
set dgst=
::Prompt for variable CHOICE
set /p dgst=Pick a digest:
::If CHOICE= null GOTO
if '%dgst%'=='' goto menu2
::If CHOICE= 1,2,3,4,5,6 GOTO
if '%dgst%'=='1' set dgst=md2
if '%dgst%'=='2' set dgst=md4
if '%dgst%'=='3' set dgst=md5
if '%dgst%'=='4' set dgst=rmd160
if '%dgst%'=='5' set dgst=sha
if '%dgst%'=='6' set dgst=sha1
::CD to dir of infile
cd %path%
::OpenSSL dgst command
c:\openssl\bin\openssl dgst -%dgst% %infile%
::Pause
pause
::Return to :menu
goto :menu
::*END HASH TOOL*
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:menu4
::**make an ARE YOU SURE ? with option to go back to menu****
prompt $P$G