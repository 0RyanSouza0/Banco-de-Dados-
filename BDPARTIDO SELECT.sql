CREATE DATABASE bdPartidoPTC

--DROP DATABASE bdPartidoPTC

USE bdPartidoPTC

SELECT *FROM Filiados_PTC

SELECT COUNT (codInscricao) FROM Filiados_PTC
--1
SELECT  nomeFiliado  FROM Filiados_PTC WHERE nomeFiliado  like '%ANTONIO%'

--2
SELECT  nomeFiliado FROM Filiados_PTC WHERE nomeFiliado like '%SEBASTIAO'

--3
SELECT  nomeFiliado FROM Filiados_PTC WHERE nomeFiliado like 'OS%' 

--4
SELECT  nomeMunicipio,nomeFiliado FROM Filiados_PTC WHERE nomeMunicipio like '%LIX'

--5
SELECT nomeFiliado,nomeMunicipio  FROM Filiados_PTC WHERE nomeMunicipio like 'inhambupe'

--6
SELECT nomeMunicipio FROM Filiados_PTC WHERE nomeMunicipio like 'SANTA%'

--7

SELECT nomeMunicipio FROM Filiados_PTC WHERE nomeMunicipio like 'E%'

--8
SELECT nomeMunicipio FROM Filiados_PTC WHERE nomeMunicipio like '%CRUZ%'

--9
SELECT nomeMunicipio FROM Filiados_PTC WHERE nomeMunicipio like '%DE%'

--10
SELECT nomeFiliado,dataFiliacao FROM Filiados_PTC WHERE dataFiliacao between '01/01/1990' AND '01/01/2000'

--11
SELECT nomeFiliado,dataFiliacao FROM Filiados_PTC WHERE dataFiliacao between '02/01/1990' AND '01/03/2010'

--12
SELECT nomeFiliado,dataFiliacao FROM Filiados_PTC WHERE dataFiliacao between '01/07/2007' AND '31/07/2007'

--13

SELECT nomeFiliado,situacaoRegistro FROM Filiados_PTC  WHERE situacaoRegistro like 'REGULAR%'


--14
SELECT nomeFiliado,zonaEleitoral FROM Filiados_PTC WHERE zonaEleitoral like '203%'

--15

SELECT nomeFiliado,zonaEleitoral FROM Filiados_PTC WHERE zonaEleitoral like '180%'

--16

SELECT nomeFiliado,zonaEleitoral FROM Filiados_PTC WHERE zonaEleitoral like '199%'

--17
SELECT  MAX (zonaEleitoral) AS 'MAIOR NUMERO DE ZONAS ELEITORAIS' FROM Filiados_PTC

--18
SELECT  MIN (zonaEleitoral) AS 'MENOR NUMERO DE ZONAS ELEITORAIS' FROM Filiados_PTC

--19

UPDATE Filiados_PTC
set siglaPartido='PT'
WHERE codigoMunicipio='36471'

SELECT nomeFiliado,siglaPartido FROM Filiados_PTC 
WHERE codigoMunicipio='36471'

--20

UPDATE Filiados_PTC
set siglaPartido='PMDB'
WHERE codigoMunicipio='38490'

SELECT nomeFiliado,siglaPartido FROM Filiados_PTC
WHERE codigoMunicipio='38490'

--21
UPDATE Filiados_PTC 
set siglaPartido='PC'
WHERE nomeMunicipio like 'santa%%polis'

SELECT nomeFiliado,siglaPartido,nomeMunicipio FROM Filiados_PTC
WHERE nomeMunicipio like 'santa%%polis'

--22	
UPDATE Filiados_PTC
set siglaPartido='PV',nomePartido='PARTIDO VERDE DOS FILIADOS'
WHERE nomeMunicipio like '%lix'

SELECT nomeFiliado,siglaPartido,nomePartido,nomeMunicipio FROM FIliados_PTC
WHERE nomeMunicipio like '%lix'

--23
UPDATE Filiados_PTC
set siglaPartido='PSDB',nomePartido='PARTIDO DA SOCIAL DEMOCRACIA BRASILEIRA'
WHERE nomeMunicipio like '%encruzilhada%'

SELECT nomeFiliado,siglaPartido,nomePartido,nomeMunicipio FROM Filiados_PTC
WHERE nomeMunicipio like '%encruzilhada%'

--24
UPDATE Filiados_PTC
set nomeFiliado='Jorge Magalhães dos Santos'
WHERE nomeFiliado='Jorge Luis Ferreira dos Santos'

SELECT nomeFiliado,siglaPartido,nomePartido,nomeMunicipio,zonaEleitoral,codigoMunicipio,UF,dataFiliacao,situacaoRegistro FROM Filiados_PTC
WHERE nomeFiliado like 'Jorge%maga%%santos%'

--25
UPDATE Filiados_PTC
set nomeFiliado='RENATA XAVIER RODRIGUES'
WHERE nomeFiliado='BENTA XAVIER RODRIGUES'

SELECT nomeFiliado,siglaPartido,nomePartido,nomeMunicipio,zonaEleitoral,codigoMunicipio,UF,dataFiliacao,situacaoRegistro FROM Filiados_PTC
WHERE nomeFiliado like '%RENATA XAVIER RODRIGUES%'

--26
UPDATE Filiados_PTC 
set nomeFiliado='NOEL LEITE DA SILVA'
WHERE nomeFiliado='NOE LEITE DA SILVA'

SELECT nomeFiliado,siglaPartido,nomePartido,nomeMunicipio,zonaEleitoral,codigoMunicipio,UF,dataFiliacao,situacaoRegistro FROM Filiados_PTC
WHERE nomeFiliado like 'NOEL% LEITE DA SILVA%'

--27

SELECT nomeFiliado,situacaoRegistro FROM Filiados_PTC


UPDATE Filiados_PTC
set situacaoRegistro='REGULAR'
WHERE nomeFiliado='JOSIENE ANDRADE DE SOUZA '

SELECT nomeFiliado,situacaoRegistro FROM Filiados_PTC
WHERE nomeFiliado='JOSIENE ANDRADE DE SOUZA '
--28
UPDATE Filiados_PTC
set situacaoRegistro='REGULAR'
WHERE  nomeFiliado='ELIEL ALMEIDA SILVA'

SELECT nomeFiliado,situacaoRegistro FROM Filiados_PTC
WHERE nomeFiliado='ELIEL ALMEIDA SILVA'

--29
UPDATE Filiados_PTC
set situacaoRegistro='DESFILIADO'
WHERE  nomeFiliado='ALINE DE SOUZA '

SELECT nomeFiliado,situacaoRegistro FROM Filiados_PTC
WHERE nomeFiliado='ALINE DE SOUZA '

--30
ALTER TABLE Filiados_PTC
ADD sexo char(15)
SELECT * FROM Filiados_PTC


