//Crie uma dialog
Dialog:SistemaLuta(playerid, response, row, inputtext[])
{
 	if(response)
	{
    	switch(row)
		{
    		case 0:{
    		SetPlayerFightingStyle(playerid, FIGHT_STYLE_BOXING);
    		}
    		case 1:{
    		SetPlayerFightingStyle(playerid, FIGHT_STYLE_KUNGFU);
    		}
    		case 2:{
    		SetPlayerFightingStyle(playerid, FIGHT_STYLE_KNEEHEAD);
    		}
   			case 3:{
    		SetPlayerFightingStyle (playerid, FIGHT_STYLE_GRABKICK);
    		}
    		case 4:{
    		SetPlayerFightingStyle(playerid, FIGHT_STYLE_ELBOW);
    		}
		}
	}
	return 1;
}
//Predefina o comando com o mesmo titulo da Dialog para que você troque
CMD:mudarluta(playerid, params[])
{
	if(!IsPlayerInRangeOfPoint(playerid, 5.0, 769.8837, 14.3134, 1000.6980))
		return SendErrorMessage(playerid, "ERRO: Voce nao esta no ginasio.");

	Dialog_Show(playerid, SistemaLuta, DIALOG_STYLE_LIST, "Estilos Luta", "Boxing\nKung fu\nRua\nNormal\nCotovelada", "Selecionar", "Fechar");
	return 1;
}