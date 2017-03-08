las personas que agendan citas son de 2 areas

1-. Call center (comun)**********



******** Modelos y relaciones del sistema ******


*modelo Agentellamada(subadministrador)

	tiene muchos comentarios que pertenecen a un paciente
	tiene muchas citas que pertenecen a un doctor paciente

	name email


*modelo paciente

	muchas citas
	pertenece a un doctor
	pertenece agentellamada

	-name -lastname -age -email -phone  -address


*modelo Comentario
	pertenece a un Agentellamada




*modelo doctor
	muchos pacientes atraves de citas

	nombre especialidad


*modelo cita
	 pertenece a un paciente
	 pertenece a un doctor

	 day hour


<!-- *modelo usuario
	tiene muchos doctores
	tiene muchos pacientes
	tiene muchas citas
	 -->

*modelo Calendario
