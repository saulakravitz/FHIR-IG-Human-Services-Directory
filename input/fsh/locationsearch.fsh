Instance: location-address-city
InstanceOf: SearchParameter
Usage: #definition
Description: "location-address-city"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/location-address-city"
* version = "0.1.0"
* name = "HSDS_sp_location_address_city"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Location-address-city"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select locations within the specified city"
* code = #address-city
* base = #Location
* type = #string
* expression = "Location.address.city"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: location-address-postalcode
InstanceOf: SearchParameter
Usage: #definition
Description: "location-address-postalcode"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/location-address-postalcode"
* version = "0.1.0"
* name = "HSDS_sp_location_address_postalcode"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Location-address-postalcode"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select locations within the specified postal code"
* code = #address-postalcode
* base = #Location
* type = #string
* expression = "Location.address.postalCode"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: location-address-state
InstanceOf: SearchParameter
Usage: #definition
Description: "location-address-state"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/location-address-state"
* version = "0.1.0"
* name = "HSDS_sp_location_address_state"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Location-address-state"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select locations within the specified state"
* code = #address-state
* base = #Location
* type = #string
* expression = "Location.address.state"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: location-address
InstanceOf: SearchParameter
Usage: #definition
Description: "location-address"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/location-address"
* version = "0.1.0"
* name = "HSDS_sp_location_address"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Location-address"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select locations within the specified address"
* code = #address
* base = #Location
* type = #string
* expression = "Location.address"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: location-name
InstanceOf: SearchParameter
Usage: #definition
Description: "location-name"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/location-name"
* version = "0.1.0"
* name = "HSDS_sp_location_name"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Location-name"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select locations with the specified name"
* code = #name
* base = #Location
* type = #string
* expression = "Location.name | Location.alias"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: location-organization
InstanceOf: SearchParameter
Usage: #definition
Description: "location-organization"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/location-organization"
* version = "0.1.0"
* name = "HSDS_sp_location_organization"
// * derivedFrom = "http://hl7.org/fhir/SearchParameter/location-organization"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select locations with the specified organization"
* code = #organization
* base = #Location
* type = #string
* expression = "Location.name | Location.alias"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: location-accessibility
InstanceOf: SearchParameter
Usage: #definition
Description: "location-accessibility"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/location-accessibility"
* version = "0.1.0"
* name = "HSDS_sp_location_accessibility"
// * derivedFrom = "http://hl7.org/fhir/SearchParameter/location-accessibility"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select locations with the specified accessibility"
* code = #accessibility
* base = #Location
* type = #string
* expression = "Location.accessibility"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains