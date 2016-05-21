http://stackoverflow.com/questions/2652173/rails-override-validator-message

http://api.rubyonrails.org/classes/ActiveModel/Errors.html

A la hora de salvar (crear o actualizar) algún objeto Activerecord puede fallar. 
Estas fallas suceden si no se le envían los atributos correctos. Existen métodos 
como create! y save! los cuales regresan excepciones, pero otros como create (sin el !) 
regresan simplemente el objeto que se les envío sin importar si se guardo o no se guardo 
en la base de datos. Ahora save regresará true si el objeto es guardado y false si el 
objeto no pudo ser guardado.

Investiga las diferencias de estos métodos y que regresa cada uno.

Ahora existen otros métodos que puedes utilizar para conocer si un objeto será 
rechazado por las validaciones.

Utiliza valid? or invalid? para saber si la información que contiene un objeto 
es valida o invalida.

Utiliza estos métodos o save y despues utiliza el método errors para conocer y 
poder desplegar al usuario un error en el caso de que mande una url que no sea valida. 
De esta manera el usuario deberá poder corregir su error y volver a intentar