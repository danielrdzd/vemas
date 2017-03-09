******** Modelos y relaciones del sistema ******


*modelo receptionist
	has_many comment, through: schedules

	 name:string
	 email:string

<!-- *********************No Vistas ************************* -->
*modelo patient

	has_many :schedules
	has_many :doctors
	has_many :receptionists

	 -name:string
	 -last_name:string
	 -age:integer
	 -email:string
	 -phone: string
	 -address:string
	 -sex:boolean

*modelo Comment
	has_many receptionists
	has_many schedules, through: comment

	title:string
	content:text


<!-- ********************* No Vistas ******************************** -->
*modelo doctor
	has_many patients, through: :appointments
	has_many appointments

	name:string
  physician:string


*modelo schedule
	doctor_id
	patient_id
	receptionist_id
	comment_id

	has_many :patients
	has_many :doctors
	has_many :receptionist


	 day:datetime


<!-- **************************Pendiente***************************** -->
*modelo Calendario
