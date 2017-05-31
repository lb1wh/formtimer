-- Trigger on the following two substrings:
-- You call upon your lycanthrope powers!!
-- You are reminded of your ties to the moon.

-- Lycanthrope-specific timers
if line == "You call upon your lycanthrope powers!!" then
    formDuration = 315
    enableTimer("formtimer")
elseif line == "You are reminded of your ties to the moon." then
    formDuration = 25
    enableTimer("formtimer")
end

function tick()
    GUI.EffectIcon11:echo(formDuration)
    formDuration = formDuration - 1
    if formDuration == 0 then
        disableTimer("formtimer")
        GUI.EffectIcon11:echo("")
    end
end

if exists("formtimer", "timer") == 0 then
    permTimer("formtimer", "", 1, [[ tick() ]])
end
