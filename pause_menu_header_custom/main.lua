CreateThread(function()
    while true do Wait(300)
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

function SetHeadingDetailsCustom(slot, str)
    BeginScaleformMovieMethodOnFrontendHeader("SET_HEADING_DETAILS_CUSTOM")
    ScaleformMovieMethodAddParamInt(slot-1)
    ScaleformMovieMethodAddParamTextureNameString(str)
    EndScaleformMovieMethod()

end 

function SetHeadingDetailsAddition(slot, str)
    BeginScaleformMovieMethodOnFrontendHeader("SET_HEADING_DETAILS_ADDITION")
    ScaleformMovieMethodAddParamInt(slot-1)
    ScaleformMovieMethodAddParamTextureNameString(str)
    EndScaleformMovieMethod()
end 

function ShiftCoronaDesc(shiftDesc, hideTabs)
    BeginScaleformMovieMethodOnFrontendHeader("SHIFT_CORONA_DESC")
    ScaleformMovieMethodAddParamBool(shiftDesc)
    ScaleformMovieMethodAddParamBool(hideTabs)
    EndScaleformMovieMethod()
end 

function SetHeaderTitle(title_, description_)
    local title = title_ and "<font face='$Font2_cond_NOT_GAMERNAME'>"..title_.."</font>" or ""
    local description = description_ and "<font face='$Font2'>".. description_ .."</font>" or ""
 
    BeginScaleformMovieMethodOnFrontendHeader("SET_HEADER_TITLE")
    ScaleformMovieMethodAddParamTextureNameString(title)
    ScaleformMovieMethodAddParamBool(false)
    ScaleformMovieMethodAddParamTextureNameString(description)
    ScaleformMovieMethodAddParamBool(false)
    EndScaleformMovieMethod()
    if description and string.len(description) > 0 then 
        ShiftCoronaDesc(true,false)
    else 
        ShiftCoronaDesc(false,false)
    end 
    
end 



function LockMenu(menuindex, isLocked)
    BeginScaleformMovieMethodOnFrontendHeader("LOCK_MENU_ITEM")
    ScaleformMovieMethodAddParamInt(menuindex)
    ScaleformMovieMethodAddParamBool(isLocked)
    EndScaleformMovieMethod()
end 

function SetMenuAlert(menuindex, warnStr_)
    local warnStr = warnStr_ and "<font face='$Font2_cond_NOT_GAMERNAME'>"..warnStr_.."</font>" or ""
    BeginScaleformMovieMethodOnFrontendHeader("SET_MENU_ITEM_ALERT")
    ScaleformMovieMethodAddParamInt(menuindex)
    ScaleformMovieMethodAddParamTextureNameString(warnStr)
    ScaleformMovieMethodAddParamInt(0)
    EndScaleformMovieMethod()
end
function SetMenuHeaderTextByIndex(menuIndex, label, widthSpan)
    BeginScaleformMovieMethodOnFrontendHeader("SET_MENU_ITEM_ALERT")
    ScaleformMovieMethodAddParamInt(menuindex)
    ScaleformMovieMethodAddParamTextureNameString(label)
    ScaleformMovieMethodAddParamBool(widthSpan)
    EndScaleformMovieMethod()
end


