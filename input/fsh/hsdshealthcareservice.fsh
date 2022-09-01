Alias: PLANNETHealthcareService = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService

Profile: HSDSHealthcareService
Parent: PLANNETHealthcareService
Id: hsds-HealthcareService
Title:    "HSDSHealthcareService"
Description: "HSDSHealthcareService"

Mapping: HSDSHealthcareServiceToHSDS
Source: HSDSHealthcareService
Target:   "HSDS"
Id:       hsds
Title:    "HSDS"
* id  -> "	service.id	(Each service must have a unique identifier.)	"
* meta  -> "	metadata	(The metadata table contains a record of the changes that have been made to the data in order to maintain provenance information)	"
// * id  -> "	GAP		"
// * Slices for extension  -> "	GAP		"
// * versionId  -> "	GAP		"
* meta.lastUpdated  -> "	metadata.last_action_date	(The date when directory data was last changed.)	"
// * source  -> "	GAP		"
// * profile  -> "	GAP		"
// * security  -> "	GAP		"
// * tag  -> "	GAP		"
// * implicitRules  -> "	GAP		"
* language  -> "	potential GAP The FHIR Resource.language element is provided to support indexing and accessibility (typically, services such as text to speech use the language tag). The html language tag in the narrative applies to the narrative. The language tag on the resource may be used to specify the language of other presentations generated from the data in the resource. Not all the content has to be in the base language. The Resource.language should not be assumed to apply to the narrative automatically. If a language is specified, it should it also be specified on the div element in the html (see rules in HTML5 for information about the relationship between xml:lang and the html lang attribute). 		"
* text  -> " GAP	FHIR HealthcareService.text is datatype 'Narrative' so the HSDS service.description field is not correctly mapped to this FHIR element. But should this element be used to contain a generated narrative that fully describes this service for display purposes? "
* contained  -> "	Do we need to define a new extension to capture the alternate name(s) used for the service, e.g., Extension: HumanServiceAlternateNames		"
// * Slices for extension  -> "	service.alternate_name	(Alternative or commonly used name for a service.) Do we need to define a new extension to capture the alternate name(s) used for the service, e.g., Extension: HumanServiceAlternateNames	"
// * newpatients  -> "GAP in HSDS "  
// * delivery-method  -> "	"GAP in the HSDS Location and Service_At_Location tables that are used to capture details as to whether the service is in person or a virtual visit. Info may be found in Service_at_location.description or Location.description. "
// * humanservices-participant-contact  -> "	After reconsideration, I don't think this extension is needed. Instead, will map HSDS phone and contact information to an existing extension (via-Intermediary) in the telecom element found in HealthcareService, Location, and Organization profiles.	"  
// * modifierExtension  -> "	GAP		"
* identifier  -> "	This structure is used to define the business identifiers for each service. 		"
* identifier.id  -> "	service.id	(Each service must have a unique identifier.) Need to map a copy of HSDS service.id to this field to serve as the business identifier for the service. Service.name is not the business identifier and is not a unique value	"
// * Slices for extension  -> "	GAP		"
// * use  -> "	GAP	In HSDS, this element will default to 'usual', taken from http://hl7.org/fhir/ValueSet/identifier-use	"
* identifier.type  -> "	GAP 	HealthcareService.type represents the coded type of a business identifer that can be used to determine which identifer to use for a specific purpose. This is an extensible value set so we could consider adding a new code to represent the type of identifier used for social care services.   "
// * system  -> "	GAP		"
// * value  -> "	service_at_location.id	(Each entry must have a unique identifier.)	"
// * period  -> "	GAP		"
// * assigner  -> "	organization.id	The identifier of the organization that provides this service.	"
* active  -> "	service.status	(The current status of the service.)	HSDS service.status is free text and in general, refers to the service being 'active', 'inactive', and (logically) deleted. However, it has been used to carry additional information like 'needs appointment' so the HSDS data requires data cleansing and transformation since HealthcareService.active is a boolean data type.	"
* providedBy  -> "	service.organization_id	(The identifier of the organization that provides this service.) service.organization_id is handled by Reference(Organization)"
* category  -> "	taxonomy_term.parent_id	(If this is a child term in a hierarchical taxonomy, give the identifier of the parent category. For top-level categories, this should be left blank.)	As a temporary placeholder, we will bind this element to the temporary codes in the SDOH Clinical Care IG, http://hl7.org/fhir/us/sdoh-clinicalcare/ValueSet/SDOHCC-ValueSetSDOHCategory. "
* type  -> "	service_attribute.taxonomy_term_id	(The identifier of this taxonomy term from the taxonomy table.) We will create a new value set that is a subset of existing types and create additional new values if needed - http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/HealthcareServiceTypeVS	"
* specialty  -> "	service_attribute.taxonomy_term_id  (The identifier of this taxonomy term from the taxonomy table.)  FHIR specialty is MUST SUPPORT in the base PlanNet profile and therefore in our guide as well. I am creating a valueset that is a subset of the NUCC provider taxonomy file that is relevant to Human Services that will be bound to FHIR HSDSHealthcareService.specialty with extensible binding. 		"
* location  -> "	service_at_location.location_id	(The identifier of the location where this service operates.)	"
* name  -> "	service.name	(The official or public name of the service.)	"
* comment  -> "	service_at_location.description	(Any additional information that should be displayed to users about the service at this specific location.)	"
* extraDetails  -> "	funding.source	(A free text description of the source of funds for this organization or service.) I used the extra details field to consider a map from HSDS funding and payment_accepted tables. National Directory has created a new extension for what appear to be these HSDS fields so requires review.	"
* photo  -> "	GAP		"
* telecom  -> "	contact table	(The contact table contains details of the named contacts for services and organizations. Note that in the HSDS data package format, if an individual is the contact for multiple services, their details may be duplicated multiple times in this table, each time with a new identifier, and with the rows containing different service ids. id.) HSDS phone and contact information will be mapped to an existing extension (via-Intermediary) in the telecom element found in HealthcareService, Location, and Organization profiles. Only problem I see is that this extension doesn't include a Reference(HealthcareService), so may need to extend this extension if that's possible.  "
* telecom.id  -> "	this maps to the HSDS phone.id and contact.id associated with the service, location, and organization.		"
// * Slices for extension  -> "	GAP		"
// * contactpoint-availabletime  -> "	schedule.byday	iCal - Comma seperated days of the week. E.g. SU,MO,TU,WE,TH,FR,SA. Where freq is MONTHLY each part can be preceded by a positive or negative integer to represent which occurrence in a month; e.g. 2MO is the second Monday in a month. -1FR is the last Friday	"
// * via-intermediary  -> "	This extension will be used to map HSDS phone and contact information to the telecom element found in HealthcareService, Location, and Organization profiles. 			"
// * system  -> "	GAP		"
// * value  -> "	service.email	Email address for the service	"
// * use  -> "	GAP		"
// * rank  -> "	GAP		"
// * period  -> "	GAP		"
* coverageArea  -> "	service_area.service_area	The geographic area where a service is available. This is a free-text description, and so may be precise or indefinite as necessary.	"
* serviceProvisionCode  -> "	service.fees	Details of any charges for service users to access this service.	"
* eligibility  -> "	GAP	Eligibility is not addressed in this release but National Directory has created an extension called eligibility that should be examined if it was introduced based on HSDS analysis in the FAST project. "
* id  -> "	eligibility.id	(Each entry must have a unique identifier.)	"
// * extension  -> "	GAP		"
* eligibility.modifierExtension  -> "	GAP		"
// * code  -> "	required_document.service_id	(The identifier of the service for which this entry describes the required document.)	"
* comment  -> "	required_document.document	(The document required to apply for or receive the service. e.g. ‘Government-issued ID’, ‘EU Passport’.)	"
* program  -> "	service.program_id	(The identifier of the program this service is delivered under.)	"
* characteristic  -> "	service.interpretation_services	(A description of any interpretation services available for accessing this service.)	"
* communication  -> "	language.language	(Languages, other than English, in which the service is delivered. Languages are listed as ISO639-1 codes.)	"
* referralMethod  -> "	GAP?		"
* appointmentRequired  -> "	This FHIR boolean could be set based on information that at times is captured in the service.status field (e.g., appointment needed). HSDS service.status needs to be transformed to HealthcareService.active (boolean)  when status = active; this HSDS element is also sometimes used to capture if an appointment is required to access this service (at this location).		"
* availableTime  -> "	(The HSDS schedule table contains details of when a service or location is open. Entries are RFC 5545 RRULES.)	"
* availableTime.id  -> "	schedule.service_id	(The identifier of the service for which this is the regular schedule.) schedule.location_id (Contains the identifier of the location for which this is the regular schedule.)	"
* availableTime.extension  -> "	schedule.description	(Human readable description of the availability of the service.)	"
* availableTime.modifierExtension  -> "  We may want to create a new modifier extension - ScheduleValidDates to reflect schedule.valid_from & schedule.valid_to dates. 	"
// * daysOfWeek  -> "	schedule.byday	iCal - Comma seperated days of the week. E.g. SU,MO,TU,WE,TH,FR,SA. Where freq is MONTHLY each part can be preceded by a positive or negative integer to represent which occurrence in a month; e.g. 2MO is the second Monday in a month. -1FR is the last Friday	"
// * allDay  -> "	GAP		"
* availableTime.availableStartTime  -> "	schedule.opens_at	The time when a service or location opens. This should use HH:MM format and should include timezone information, either adding the suffix ‘Z’ when the date is in UTC, or including an offset from UTC (e.g. 09:00-05:00 for 9am EST.)	"
* availableTime.availableEndTime  -> "	schedule.closes_at	The time when a service or location closes. This should use HH:MM format and should include timezone information, either adding the suffix ‘Z’ when the date is in UTC, or including an offset from UTC (e.g. 09:00-05:00 for 9am EST.)	"
* notAvailable  -> "	GAP		"
// * id  -> "	GAP		"
// * extension  -> "	GAP	The date from which the schedule information is valid.	"
* modifierExtension  -> "	GAP		"
// * description  -> "	GAP		"
// * during  -> "	GAP		"
* availabilityExceptions  -> "	GAP		"
* endpoint  -> "	GAP		"