Scriptname ksws02_dead_actor_script extends ReferenceAlias  

Event OnLoad()
	Actor r = GetActorRef()
	If !r.IsDead()
		r.Disable()
		r.Kill()
		r.Enable()
	EndIf
EndEvent