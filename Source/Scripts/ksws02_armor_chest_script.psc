Scriptname ksws02_armor_chest_script extends ReferenceAlias  

Event OnActivate(ObjectReference akActionRef)
	ObjectReference r = GetRef()
	Actor player = Game.GetPlayer()
	If r.IsLocked() && GetOwningQuest().GetStage() == 500 && akActionRef == player
		r.Lock(false)
		r.BlockActivation(false)
		r.Activate(player)
	EndIf
EndEvent