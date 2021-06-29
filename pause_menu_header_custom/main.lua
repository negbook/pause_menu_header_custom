CreateThread(function()
    while true do Wait(300)
    
    SetHeadingDetailsCustom("Negbook","Custom2","Custom3")
    SetHeaderTitle("Title","Description")

    SetMenuHeaderTextByIndex(0,"cao",true)
    SetMenuHeaderTextByIndex(1,"cao2",true)
    
    for i=3,4 do 
    SetMenuAlert(i,"nnbb")
    end 
    end 
end)




local isScripted = true 
function SetHeadingDetailsCustom(str1, str2, str3)
    BeginScaleformMovieMethodOnFrontendHeader("SET_HEADING_DETAILS")
     ScaleformMovieMethodAddParamTextureNameString(str1)
     ScaleformMovieMethodAddParamTextureNameString(str2)
     ScaleformMovieMethodAddParamTextureNameString(str3)
     ScaleformMovieMethodAddParamBool(false)
     ScaleformMovieMethodAddParamBool(isScripted)
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
    --title, verified, description, isChallenge, custommode
    BeginScaleformMovieMethodOnFrontendHeader("SET_HEADER_TITLE")
    ScaleformMovieMethodAddParamTextureNameString(title)
    ScaleformMovieMethodAddParamBool(false)
    ScaleformMovieMethodAddParamTextureNameString(description)
    ScaleformMovieMethodAddParamBool(false)
    ScaleformMovieMethodAddParamBool(isScripted)
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

