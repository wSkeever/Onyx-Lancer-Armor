Scriptname ksws02_key_script extends ReferenceAlias  

event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	if akNewContainer == Game.GetPlayer()
		(GetOwningQuest() as ksws02_quest_script).UpdateKeys()
	endIf
endEvent