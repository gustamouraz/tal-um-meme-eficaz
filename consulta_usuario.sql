---------------------------------------------------------------------------------
----------------------CONSULTA-MENU-USUARIO-ANTES-ATUALIZAÇÃO--------------------
---------------------------------------------------------------------------------

SELECT 
    ZUP_ID AS ID, 
    ZUP_LOGIN AS USUARIO, 
    ZUP_NOME AS NOME, 
    ZUM_MODULO AS MODULO, 
    ZUM_MENU AS MENU 
        FROM ZUM010 AS ZUM WITH(NOLOCK)
            INNER JOIN ZUP010 AS ZUP WITH(NOLOCK)
                ON ZUM.ZUM_ID = ZUP.ZUP_ID

                    WHERE ZUP_ISBLOQ = 'N'
                        AND ZUP_LOGIN LIKE '%'+LOWER('LANA')+'%'
                            ORDER BY ID

--ZUP E ZUM SÃO PERSONALIZADOS--
--SYS_USR É PADRÃO DO SISTEMA--

---------------------------------------------------------------------------------
--------------------------------NOVA-CONSULTA-USUARIO----------------------------
---------------------------------------------------------------------------------

SELECT 
    USR.USR_ID AS ID,
    USR.USR_CODIGO AS USUARIO, 
    USR.USR_NOME AS NOME,
    MODULE.USR_MODULO AS MODULO, 
    MODULE.USR_CODMOD AS CODIGO, 
    MP.M_NAME AS MENU 
        FROM SYS_USR AS USR WITH(NOLOCK)
        INNER JOIN SYS_USR_MODULE AS MODULE WITH(NOLOCK)
            ON MODULE.USR_ID = USR.USR_ID
        INNER JOIN MPMENU_MENU AS MP WITH(NOLOCK)
            ON MODULE.USR_ARQMENU = MP.M_ID
                WHERE MODULE.USR_ACESSO = 'T'
                    AND USR.USR_CODIGO LIKE '%'+LOWER('LANA')+'%'
                        ORDER BY ID

