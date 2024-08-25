
--delete from  tbdirecciones where deacvedeudor in (Select deacvedeudor from TBDEUDOR where deanumcredito in())
--delete from tbtelefono where deacvedeudor in (Select deacvedeudor from TBDEUDOR where deanumcredito in());

--delete from TBEMAIL where deacvedeudor in (Select deacvedeudor from TBDEUDOR where deanumcredito in())

