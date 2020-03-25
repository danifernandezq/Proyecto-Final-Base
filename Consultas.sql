--  \item Un usuario puede subir singles.
-- \item Se puede seleccionar canciones y/o grupos según género de música.
-- \item Se puede seleccionar playlist según las canciones que contengan.
-- \item Se cuenta con eventos que son dirigidos a cierto grupo de usuarios.
-- \item Se puede recomendar playlist segun las publicaciones en las que te etiqueten
-- \item Se puede enviar canciones y playlist mediante mensajes de una manera mas eficiende  


use socialtune;
select nombreCancion 
from cancion 
inner join composicion on IDCancion = cancion.ID
inner join usuario on IDUsuario = usuario.ID
where usuario.Nombre = 'Juan Carrasco';



select nombre
from grupo 
where categoria = 'pop';


select nombreCancion 
from cancion
inner join genero on cancion.IDGenero = genero.ID && genero.Nombre = 'Electronica';

select Nombre 
from playlist 
inner join contenidoplaylist on contenidoplaylist.IDPlaylist = playlist.ID
inner join cancion on cancion.ID = contenidoplaylist.IDCancion 
where nombreCancion = 'Locos' || nombreCancion = 'Titanium';

select evento.Titulo 
from evento
inner join asistencia on asistencia.IdEvento = evento.ID
inner join grupo on asistencia.IdGrupo = grupo.ID
where grupo.Nombre = 'BestPop';


select tipoArchivo
from mensaje
where idautor = (select id from usuario where nombre ='Avye Morrow');



