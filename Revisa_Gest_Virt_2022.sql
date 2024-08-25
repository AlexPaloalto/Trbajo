Select 
ClaveCliente,
NombreCliente,
FechaGest,
--Z.tipgest, 
Case when Z.tipgest = '02' then 'Gest' 
when Z.tipgest = '16' then 'Ley' else '' end tipgest, 
count (Z.Virtual)
from
(select 
tbgestiones.gsnnumgestion numgest,
tbgestiones.gsatelmarcado Marcado,  
(tbclientes.clanomclientes ||' '|| tbproductos.pranomproducto) Cliente,
tbdeudor.deacvedeudor Clave,
tbdeudor.deanumcredito Credito,
tbgestiones.gsfinigestion FecGest,
tbgestiones.gsfauditoria Virtual,
tbgestiones.tgacvetipogestion,
tbgestiones.gsncakilometraje,
tbgestiones.gsacocarroceriaest,
tbgestiones.gsamediocontacto,
tbgestiones.tgacvetipogestion tipgest,
tbclientes.clacveclientes ClaveCliente,
tbclientes.clanomclientes NombreCliente,
tbgestiones.gsfauditoria FechaGest

from tbdeudor,tbgestiones,tbclientes,tbproductos

where tbdeudor.deacvedeudor=tbgestiones.deacvedeudor 
and tbdeudor.pracveproducto=tbproductos.pracveproducto
and tbproductos.clacveclientes=tbclientes.clacveclientes
--and tbdeudor.deffecdevolucion = '0001-01-01'
--and tbgestiones.tgacvetipogestion in ('01','02')
and tbgestiones.gsfinigestion between '2024-07-18 00:00:00' and '2024-07-18 23:59:59' --formato año-mes-día
and tbgestiones.gsfauditoria= '2024-07-18'
--and tbgestiones.gsanombanco in ('NC','BZ')
and tbclientes.clacveclientes in ('05','10','15','28'))
as Z
group by ClaveCliente, NombreCliente, FechaGest, Z.tipgest
order by 1 												
--order by tbgestiones.gsfinigestion -- limit 1000

