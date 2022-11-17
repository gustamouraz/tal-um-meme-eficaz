---------------------------------------------------------------------------------
-------------------------------CONSULTA-MENU-USUARIO-----------------------------
---------------------------------------------------------------------------------

SELECT ZUM_ID, ZUP_LOGIN, ZUM_MODULO, ZUM_MENU FROM ZUM010 AS ZUM WITH(NOLOCK)
INNER JOIN ZUP010 AS ZUP
ON ZUP_ID = ZUM_ID 
WHERE ZUM_MODULO = '01'
AND ZUP_ISBLOQ <> 'S'
