# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# categories = CourseCategory.create( [{title:'Business'}, {title:'Community Services'},{title:'Hospitality'}, {title:'Financial Services'}, {title:'Foundation Skills'},{title:'Childrens Services'}, {title:'Hairdressing'},{title:'Health Services'},{title:'Information Technology'},{title:'Training and Assessment'},{title:'Retail Services'},{title:'Short Courses'}])
@category = CourseCategory.find_or_create_by(title: "Business")
Course.create([
{:code => 'BSB30112', :name => 'Certificate III in Business', :delivery_mode => 'Classroom, Distance',:course_category => @category},
	{:code => 'BSB40312', :name => 'Certificate IV in Customer Contact', :delivery_mode => 'Classroom, Distance',:course_category => @category},
	{:code => 'BSB40407', :name => 'Certificate IV in Small Business Management', :delivery_mode => 'Classroom, Distance',:course_category => @category},
	{:code => 'BSB40507', :name => 'Certificate IV in Business Administration', :delivery_mode => 'Classroom, Distance',:course_category => @category},
	{:code => 'BSB40812', :name => 'Certificate IV in Frontline Management', :delivery_mode => 'Classroom, Distance',:course_category => @category},
	{:code => 'BSB50207', :name => 'Diploma of Business', :delivery_mode => 'Classroom, Distance',:course_category => @category},
	{:code => 'BSB50407', :name => 'Diploma of Business Administration', :delivery_mode => 'Classroom, Distance',:course_category => @category},
	{:code => 'BSB51107', :name => 'Diploma of Management', :delivery_mode => 'Classroom, Distance',:course_category => @category},
	{:code => 'BSB51413', :name => 'Diploma of Project Management', :delivery_mode => 'Classroom, Distance',:course_category => @category},
	{:code => 'BSB60407', :name => 'Advanced Diploma of Management', :delivery_mode => 'Classroom, Distance',:course_category => @category},
	{:code => 'BSB60707', :name => 'Advanced Diploma of Project Management', :delivery_mode => 'Classroom, Distance',:course_category => @category}])
@category = CourseCategory.find_or_create_by(title: "Community Services")
Course.create([
	{:code => 'CHC30113', :name => 'Certificate III in Early Childhood Education and Care', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'CHC30212', :name => 'Certificate III in Aged Care', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'CHC30312', :name => 'Certificate III in Home and Community Care', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'CHC40108', :name => 'Certificate IV in Aged Care', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'CHC40312', :name => 'Certificate IV in Disability', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'CHC40512', :name => 'Certificate IV in Mental Health', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'CHC50108', :name => 'Diploma of Disability	', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'CHC50113', :name => 'Diploma of Early Childhood Education and Care	', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'CHC50412', :name => 'Diploma of Community Services (Alcohol, other drugs and mental health)', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'CHC50612', :name => 'Diploma of Community Services Work', :delivery_mode => 'Classroom, Distance',:course_category => @category }
	])
@category = CourseCategory.find_or_create_by(title: "Hospitality")
Course.create([
	{:code => 'FDF20111', :name => 'Certificate II in Food Processing	', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FDF30111', :name => 'Certificate III in Food Processing', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'SIT20213', :name => 'Certificate II in Hospitality	', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'SIT20312', :name => 'Certificate II in Kitchen Operations', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'SIT30713', :name => 'Certificate III in Hospitality	', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'SIT30813', :name => 'Certificate III in Commercial Cookery', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'SIT40313', :name => 'Certificate IV in Hospitality	', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'SIT40413', :name => 'Certificate IV in Commercial Cookery', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'SIT50313', :name => 'Diploma of Hospitality', :delivery_mode => 'Classroom, Distance',:course_category => @category }
	])
@category = CourseCategory.find_or_create_by(title: "Financial Services")
Course.create([
	{:code => 'FNS30311', :name => 'Certificate III in Accounts Administration	', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FNS40111', :name => 'Certificate IV in Credit Management', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FNS40211', :name => 'Certificate IV in Bookkeeping', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FNS40611', :name => 'Certificate IV in Accounting	', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FNS40811', :name => 'Certificate IV in Finance and Mortgage Broking', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FNS40911', :name => 'Certificate IV in Superannuation	', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FNS41011', :name => 'Certificate IV in Banking Services', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FNS50210', :name => 'Diploma of Accounting	', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FNS50311', :name => 'Diploma of Finance and Mortgage Broking Management', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FNS50411', :name => 'Diploma of Conveyancing', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FNS50611', :name => 'Diploma of Financial Planning', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FNS50711', :name => 'Diploma of Superannuation', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FNS60311', :name => 'Advanced Diploma of Conveyancing', :delivery_mode => 'Classroom, Distance',:course_category => @category }
	])
@category = CourseCategory.find_or_create_by(title: "Foundation Skills")
Course.create([
	{:code => '22250VIC', :name => 'Certificate I in EAL (Access)', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => '22252VIC', :name => 'Certificate II in EAL (Employment)', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => '22254VIC', :name => 'Certificate III in EAL (Employment)', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => '22257VIC', :name => 'Certificate IV in EAL (Employment / Professional)	', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FSK10113', :name => 'Certificate I in Access to Vocational Pathways	', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FSK10213', :name => 'Certificate I in Skills for Vocational Pathways	', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'FSK20113', :name => 'Certificate II in Skills for Work and Vocational Pathways', :delivery_mode => 'Classroom, Distance',:course_category => @category }
	])
@category = CourseCategory.find_or_create_by(title: "Childrens Services")
Course.create([{:code => 'CHC30113', :name => 'Certificate III in Early Childhood Education and Care	', :delivery_mode => 'Classroom, Distance',:course_category => @category },
	{:code => 'CHC50113', :name => 'Diploma of Early Childhood Education and Care'	, :delivery_mode => 'Classroom, Distance',:course_category => @category }
	])