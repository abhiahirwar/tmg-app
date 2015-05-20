module EnrolmentsHelper
	def study_reason_select
 		["To Get a job", "To try for a different career", "I wanted extra skills for my job",
 		 "For personal interest or self development", "To develop my existing business", 
 		 "To get a better job or promotion", "To get into another course of study", 
 		 "To start my own business", "It was a requirement of my job", 
 		 " Other reasons"]
	end

	def citizen_select
		['Yes - Plese Provide certified proof', 'No']
	end

	def vic_school_attend_select
		['Yes – I have attended a Victorian school since 2009',
			'No – I have not attended a Victorian school since 2009 or a TAFE or other VET training provider since the beginning of 2011. (No more questions if you answer No above)',
			'Yes – I have participated in training at a TAFE or other training organisation since the beginning of 2011',
			'Yes – I have both attended a Victorian school since 2009 and participated in training at a TAFE or other training organisation since the beginning of 2011']
	end
end