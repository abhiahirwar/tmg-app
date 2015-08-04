module EmploymentsHelper
	def employment_select
		["Full-time employee", "Part-time employee", "Employer",
	 		"Employed unpaid worker in a family business", "Unemployed seeking part time work",
	 		"Not employed not seeking employment", "Self-employed not employing others",
   		"Unemployed seeking full time work", "Self-employed employing others"]
	end
	def current_occupation_select
		["Manager", "Professionals", "Clerical and Administrative workers", "Labourers",
			"Technicians &amp; Trade Workers", "Sales Workers", "Others"]
	end
	def industry_select
		["Agriculture Forestry Fishing", "Mining", "Manufacturing",
			"Electricity Gas Water and Waste Services", "Construction", "Wholesale Trade",
			"Retail Trade", "Accommodation and Feed Services", "Transport Postal and warehousing",
			"Information Media and telecommunication", "Financial and Insurance Services",
			"Rental Hiring and real Estate", "Professional Scientific and Technical Services",
			"Administrative and Support Services", "Public Administration and Safety",
			"Education and Training", "Health Care and social Assistance", "Arts and services",
			"Other Services"]
	end
end

