#building an apartment renting app
#list vacant units
#is unit occupied?
#is there a tenant in a unit?
#has the tenant paid rent?
#move tenant to another unit
#remove tenant
#lease rent
#annual income

#building
	#units
	#address
	#name


	#def calc_annual_income
	#def get_contact_list
	#def list_vacant_units
	#def calc_total_square_feet_rented

#building "has a" unit

#unit
#0..n units in a building
#would be an array of units
	#unit numbers
	#number of tenants
	#rent
	#square feet
	#tenant(true or nil)

	#def is_vacant

#unit "has a" tenant

#tenant
#0..1 tenants in a unit
	#name
	#phone
	#unit
	#lease

	#def method
	#def method2