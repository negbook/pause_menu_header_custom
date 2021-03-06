Threads.CreateLoop("pause_menu_header",333,function()
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
end)

function SetHeadingDetailsCustom(slot, str)
    Scaleforms.CallScaleformMovie("pause_menu_header",function(run,send,stop,handle)
    run("SET_HEADING_DETAILS_CUSTOM")
    send(slot-1, str)
    stop()
    end)
end 

function SetHeadingDetailsAddition(slot, str)
    Scaleforms.CallScaleformMovie("pause_menu_header",function(run,send,stop,handle)
    run("SET_HEADING_DETAILS_ADDITION")
    send(slot-1, str)
    stop()
    end)
end 

function ShiftCoronaDesc(shiftDesc, hideTabs)
    Scaleforms.CallScaleformMovie("pause_menu_header",function(run,send,stop,handle)
    run("SHIFT_CORONA_DESC")
    send(shiftDesc, hideTabs)
    stop()
    end)
end 

function SetHeaderTitle(title_, description_)
    local title = title_ and "<font face='$Font2_cond_NOT_GAMERNAME'>"..title_.."</font>" or ""
    local description = description_ and "<font face='$Font2'>".. description_ .."</font>" or ""
 
    Scaleforms.CallScaleformMovie("pause_menu_header",function(run,send,stop,handle)
    run("SET_HEADER_TITLE")
    send(title, false, description, false)
    stop()
    if description and string.len(description) > 0 then 
        ShiftCoronaDesc(true,false)
    else 
        ShiftCoronaDesc(false,false)
    end 
    end)
end 



function LockMenu(menuindex, isLocked)
    Scaleforms.CallScaleformMovie("pause_menu_header",function(run,send,stop,handle)
    run("LOCK_MENU_ITEM")
    send(menuindex, isLocked)
    stop()
    end)
end 

function SetMenuAlert(menuindex, warnStr_)
    local warnStr = warnStr_ and "<font face='$Font2_cond_NOT_GAMERNAME'>"..warnStr_.."</font>" or ""
    Scaleforms.CallScaleformMovie("pause_menu_header",function(run,send,stop,handle)
    run("SET_MENU_ITEM_ALERT")
    send(menuindex, warnStr, 0)
    stop()
    end)
end
function SetMenuHeaderTextByIndex(menuIndex, label, widthSpan)
    Scaleforms.CallScaleformMovie("pause_menu_header",function(run,send,stop,handle)
    run("SET_MENU_HEADER_TEXT_BY_INDEX")
    send(menuIndex, label, widthSpan)
    stop()
    end)
end


