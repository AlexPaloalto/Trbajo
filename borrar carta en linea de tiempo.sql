-- Borrar con folio de las cartas
update tblintiempores set ltlterminado = 'T' where ltrgeaanumfoliocd = '121171'

select * from tblintiempores where ltrgeaanumfoliocd = '152619'

select * from tblintiempores where ltffecha>='2013-02-15'

--Borrar con consecutivo
update tblintiempores set ltlterminado = 'T' where LTASANUMFOLIO = '13021519252039'

DELETE FROM tblintiempores WHERE ltrgeaanumfoliocd = '152619' AND LTASANUMFOLIO='15112316242871'
