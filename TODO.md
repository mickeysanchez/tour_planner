#next
!separate password controller for pW actions

ERRORS/SUCCESS FLASHES ON:

NEW
venue
tour

EDIT 
venue 
tour

!before filters so others can't get to band/event/venue/tour edit pages


# Schema

**bold** = **not yet added**

0. users
| email | token | password_digest

  0. band_members
  | user_id | band_id | role | admin

0. bands
| name |

0. events
| name | band_id | venue_id | date | tour_id
   
0. tour
| name |

0. venues
| name | address | city | state | zipcode | **phone_number** | **email** |


* SOCIAL STUFF - join tables

0. **user_follows** 
| follower_id | followed_id |

0. **band_follows**
| follower_id | followed_id |

0. **venue_follows**
| follower_id | venue_id |

0. **event_follows**
| follower_id | event_id |

0. **event_attendances**
| event_id | attendee_id |

###Tables/Models to Create:

	1. tours

###Things to add to existing tables: 

	1. venues
		- contact info
		- capacity
	
	2. shows
	    - contact_name
		- contact_phone
		- contact_email
		- arrival_time
		- check_in_time
		- doors_time
		- set_time
		- billing (headline, support, etc) 
		- situation
		- ticket_price
		- age_limit
		- fee
		- estimated_fee
		- terms
		- hospitality_notes
		- shower?
		- washer_dryer?
		- notes
		
###Core features/technologies

 Rails

    bad ass logo
    
	Basic CRUD
		1. User => has many Bands => has many Shows & Tours
		2. CRUD users, bands, shows, tours, venues
    
	Complex forms
		1. Event creation will also create venues
    
	Authentication
		1. User creation/authentication (eventually using google login)
		
		* Authorization:
			1. User gets to see private details about show, while others who visit the
			   show page just get public info.
    
	ActionMailer/Sendgrid
		1. Users get sent daily emails during their tour giving them the days details. 
    
	File upload (paperclip or filepicker.io)
		1. attach private files to events - like show posters, contracts, etc.
	

JavaScript/Backbone

    jQuery
        jQuery UI: draggable/sortable
		1. DRAGGABLE
			* drag shows from one tour to the other
			
    Backbone
		- single page app		
		
###Eventual extra features:

	1. google login
	2. automatically adds shows to google calendar
	3. emails you show details daily (or whatever you set)
	4. uses location data to calculate drive time to next show
			- when to leave to arrive by arrival time or check in
	5. calculates total income from tour
	6. calculates total booking-agent percentage
	7. generates printable pdf
	8. generates estimated gas cost for entire tour using average gas price data for states you are travelling through
	
	--
	
	9. Connect to Facebook band page 
			- Automatically creates a facebook event
		
	
