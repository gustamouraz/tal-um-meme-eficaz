---------------------------------------------------------------------------------
----------------------------RELAÇÃO-USUARIO-PRIVILEGIO---------------------------
---------------------------------------------------------------------------------

SELECT USER_ID, USR_CODIGO, USR_RL_ID, RL__DESCRI, USR_MSBLQL, *
    FROM SYS_RULES_USR_RULES SRUR
    INNER JOIN SYS_RULES SR
        ON SR.RL__ID = SRUR.USR_RL_ID
    INNER JOIN SYS_USR USR
        ON USR.USR_ID = SRUR.USER_ID
    WHERE USR_MSBLQL = '2' 
        AND RL__DESCRI LIKE ('%RESIDUO%')
