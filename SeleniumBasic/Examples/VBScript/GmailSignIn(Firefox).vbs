
' ---------------------------------------------------------------------------------------
' Login to GMail using Firefox
' ---------------------------------------------------------------------------------------

Class Script
    Dim driver

    Sub Class_Initialize
        Set driver = CreateObject("Selenium.FirefoxDriver")
        driver.Get "https://accounts.google.com/ServiceLogin"
        driver.FindElementById("Email").SendKeys "your email"
        driver.FindElementById("next").Click
        driver.FindElementById("Passwd").SendKeys "your password"
        driver.FindElementById("signIn").Click
        
        WScript.Echo "Click OK to close the browser"
    End Sub

    Sub Class_Terminate
        driver.Quit
    End Sub
End Class

Set s = New Script