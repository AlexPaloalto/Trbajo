="UPDATE tbtelefono SET teafax=9,telteldefault='F' WHERE deacvedeudor='"&&"' AND tennumero='"&&"';"

="UPDATE tbtelefono SET telteldefault='T' WHERE deacvedeudor='"&&"' AND tennumero='"&&"';"


---PARA CLAVE DE CARVEN
="UPDATE tbtelefono SET teafax=9,telteldefault='F' WHERE deacvedeudor='"&&"' AND teanumtelefono='"&&"';"

UPDATE tbtelefono SET teafax=9, telteldefault='F' WHERE deacvedeudor='255125889' AND teanumtelefono='5556420421';

Select * from TBtelefono limit 5
(SELECT deacvedeudor FROM TBDEUDOR WHERE deanumcredito='632944278');

--5556420421
-----ESTE PARA CREDITOS
="UPDATE tbtelefono SET teafax=9,telteldefault='F' WHERE deacvedeudor=(SELECT deacvedeudor FROM TBDEUDOR WHERE deanumcredito='"&A2&"') AND teanumtelefono='"&B2&"';"

UPDATE tbtelefono SET teafax=9,telteldefault='F' WHERE deacvedeudor=(SELECT deacvedeudor FROM TBDEUDOR WHERE deanumcredito='632277388') AND teanumtelefono='3111667567';


UPDATE tbtelefono SET teafax=9,telteldefault='F' WHERE deacvedeudor='255226520' AND teanumtelefono='6562855523';
UPDATE tbtelefono SET teafax=9,telteldefault='F' WHERE deacvedeudor='255215373' AND teanumtelefono='5558171043';




--="UPDATE tbtelefono SET teafax =null,telteldefault='F' WHERE deacvedeudor='"&&"' AND tennumero='"&&"';"

select * from tbtelefono where deacvedeudor='255125889'

select teanumtelefono From tbtelefono where deacvedeudor='255125889'