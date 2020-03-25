--  \item Un usuario puede subir covers.  si
-- \item Se puede seleccionar canciones y/o grupos según género de música. si
-- \item Se puede seleccionar playlist según las canciones que contengan.  si
-- \item Se cuenta con eventos que son dirigidos a cierto grupo de usuarios. si
-- \item Se puede recomendar playlist segun las publicaciones en las que te etiqueten
-- \item Se puede enviar canciones y playlist mediante mensajes de una manera mas eficiende   si


use socialtune;

select nombreCancion 
from cancion 
inner join composicion on IDCancion = cancion.ID
inner join usuario on composicion.IDUsuario = usuario.ID
where usuario.Nombre = 'Sergio Chavez';



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

 select tipo 
 from publicacion
 where IDUsuario=(select IDUsuario from etiqueta where IdEtiquetado =(select Id from usuario where nombre='Carlos Vilaseca'));

select tipoArchivo
from mensaje
where idautor = (select id from usuario where nombre ='Avye Morrow');



