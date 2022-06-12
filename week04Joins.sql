SELECT MS.NAME, S.MOVIETITLE
FROM MOVIESTAR MS,
     STARSIN S
WHERE MS.NAME = S.STARNAME
  AND MS.GENDER = 'M'
  AND S.MOVIETITLE = 'Terms of Endearment';

SELECT STARNAME, MOVIETITLE, STUDIONAME
FROM MOVIE M,
     STARSIN S
WHERE M.TITLE = S.MOVIETITLE
  AND M.YEAR = S.MOVIEYEAR
  AND MOVIEYEAR = 1995
  AND M.STUDIONAME = 'MGM';

SELECT DISTINCT ME.NAME
FROM MOVIEEXEC ME,MOVIE M
WHERE ME.CERT#=M.PRODUCERC#
AND M.STUDIONAME='MGM';


SELECT ALLM.TITLE, ALLM.LENGTH, GWTW.TITLE, GWTW.LENGTH
FROM MOVIE ALLM, MOVIE GWTW
WHERE GWTW.TITLE = 'Gone With the Wind'
AND ALLM.LENGTH > GWTW.LENGTH;

SELECT P.NAME
FROM MOVIEEXEC P,MOVIEEXEC P_GW
WHERE P_GW.NAME = 'Merv Griffin'
AND P.NETWORTH>P_GW.NETWORTH;