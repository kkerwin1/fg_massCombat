function setIconByRuleset(windowcontrol)
    --[[
        This function takes a windowcontrol for an argument and, if that
        windowcontrol has an icon, it sets that icon to be one of two icons, based
        on the ruleset.
    ]]

    if(windowcontrol.hasIcon() == false) then
        Debug.console("setIcon - no icon", windowcontrol)
        return
    end
    
    local rset = User.getRulesetName()
    Debug.console("setIconbyRuleset rulsetName", rset)
    if(rset == "5E") then
        windowcontrol.setIcon("TutorialTitle5E", true)
    else
        windowcontrol.setIcon("TutorialTitle", true)
    end
end