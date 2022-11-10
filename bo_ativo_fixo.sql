---------------------------------------------------------------------------------
-----------------------------------BO-ATIVO-FIXO---------------------------------
---------------------------------------------------------------------------------

SELECT D_E_L_E_T_, N1_NFISCAL, * FROM SN1010 WITH (NOLOCK)
    WHERE N1_CBASE = '0000000276'
        AND N1_FILIAL = '020101'

SELECT D_E_L_E_T_, * FROM SN3010 WITH (NOLOCK)
    WHERE N3_CBASE = '0000000275'
        AND N3_FILIAL = '020101'

SELECT D_E_L_E_T_, * FROM SN4010 WITH (NOLOCK)
    WHERE N4_NOTA = '31444'
        AND N4_FILIAL = '020101'

SELECT D1_CBASEAF, * FROM SD1010 WITH(NOLOCK)
    WHERE D1_DOC = '31444'

SELECT   D_E_L_E_T_,  * FROM CL2010
WHERE CL2_FILIAL =  '020101'
    AND CL2_PER >= '20220901'
    AND CL2_REG IN ('F120','F130')
    AND D_E_L_E_T_ = ''
