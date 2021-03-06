# pause_menu_header_custom  
Make Original Pause-Menu-Header Customize  
server.cfg:  
start pause_menu_header_custom  
start pause_menu_header_custom_stream  

#functions:  
```
    SetHeadingDetailsAddition  
    SetHeadingDetailsCustom  
    SetHeaderTitle  
    SetMenuHeaderTextByIndex  
    SetMenuAlert  
```

#example:  
```
CreateThread(function()
  while true do Wait(1000)
      SetHeadingDetailsAddition(1," Addition1")
      --SetHeadingDetailsAddition(1," Addition2")
      SetHeadingDetailsAddition(3," Addition3 $100000")

      SetHeadingDetailsCustom(1,"Negbook")
      --SetHeadingDetailsCustom(2,"Custom2")
      SetHeadingDetailsCustom(3,"Custom3")


      SetHeaderTitle("Title","Description")

      SetMenuHeaderTextByIndex(0,"cao",true)
      SetMenuHeaderTextByIndex(1,"cao2",true)

      for i=3,4 do 
      SetMenuAlert(i,"nnbb")
      end 
  end 
end)
```

