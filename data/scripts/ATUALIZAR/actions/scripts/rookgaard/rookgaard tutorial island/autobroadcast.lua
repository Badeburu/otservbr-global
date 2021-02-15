-- 

function onThink(interval, lastExecution)
	local messages = {
	"[FORUM]: Utilize nosso atendimento pelo forum no site para falar com um membro superior.",
	"[REGRAS]: Evite ser punido, não viole nossas regras.",
	"[SISTEMA]: O global save do servidor ocorre todos os dias às 06:00hrs.",
	"[SEGURANÇA]: Nunca use a mesma senha de outros servidores, pois você estará facilitando a vida dos hackers.",
	"[SEGURANÇA]: Proteja sua senha. Use-a apenas em nosso website oficial."
}

    Game.broadcastMessage(messages[math.random(#messages)], MESSAGE_EVENT_ADVANCE) 
    return true
end

