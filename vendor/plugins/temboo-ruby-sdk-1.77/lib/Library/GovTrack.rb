require "temboo"

module GovTrack



  ##############################################################################
  #
  # Bill
  #
  # Retrieves bills and resolutions in the U.S. Congress since 1973 (the 93rd Congress).
  #
  ##############################################################################

  class Bill < Choreography

    ####
    #  Create a new instance of the Bill Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/GovTrack/Bill")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return BillInputSet
    ####
    def new_input_set()
      return BillInputSet.new()
    end

    def make_result_set()
      return BillResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = BillResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Bill
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class BillInputSet < Choreography::InputSet

      #### 
      # Set the value of the BillID input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The ID number of the bill to retrieve. When using this input, all other filter parameters are ignored, and a single record is returned.
      ###

      def set_BillID(value)
        set_input("BillID", value)
      end
      #### 
      # Set the value of the BillType input for this Choreo. 
      # 
      # @param String - (optional, string) The bill's type (e.g. house_resolution, senate_bill, house_bill, etc). Filter operators allowed. Sortable.
      ###

      def set_BillType(value)
        set_input("BillType", value)
      end
      #### 
      # Set the value of the CoSponsors input for this Choreo. 
      # 
      # @param String - (optional, string) The bill's cosponsors. When using this filter, provide the id of the cosponsor which is returned when requesting a single bill object. Filter operators allowed. Sortable.
      ###

      def set_CoSponsors(value)
        set_input("CoSponsors", value)
      end
      #### 
      # Set the value of the Committees input for this Choreo. 
      # 
      # @param String - (optional, string) Committees to which the bill has been referred. When using this filter, provide the id of the committee which is returned when requesting a single bill object. Filter operators allowed. Sortable.
      ###

      def set_Committees(value)
        set_input("Committees", value)
      end
      #### 
      # Set the value of the Congress input for this Choreo. 
      # 
      # @param String - (optional, string) The number of the congress in which the bill was introduced. The current congress is 113. Filter operators allowed. Sortable.
      ###

      def set_Congress(value)
        set_input("Congress", value)
      end
      #### 
      # Set the value of the CurrentStatusDate input for this Choreo. 
      # 
      # @param String - (optional, string) The date of the last major action on the bill corresponding to the CurrentStatus (in YYYY-MM-DD format). Filter operators allowed. Sortable.
      ###

      def set_CurrentStatusDate(value)
        set_input("CurrentStatusDate", value)
      end
      #### 
      # Set the value of the CurrentStatus input for this Choreo. 
      # 
      # @param String - (optional, string) The current status of the bill (e.g. passed_bill, prov_kill_veto, introduced, etc). Filter operators allowed. Sortable.
      ###

      def set_CurrentStatus(value)
        set_input("CurrentStatus", value)
      end
      #### 
      # Set the value of the Fields input for this Choreo. 
      # 
      # @param String - (optional, string) A comma separated list of fields to return in the response. Use double-underscores to span relationships (e.g. person__firstname).
      ###

      def set_Fields(value)
        set_input("Fields", value)
      end
      #### 
      # Set the value of the IntroducedDate input for this Choreo. 
      # 
      # @param String - (optional, string) The date the bill was introduced (in YYYY-MM-DD format). Filter operators allowed. Sortable.
      ###

      def set_IntroducedDate(value)
        set_input("IntroducedDate", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Results are paged 100 per call by default. Set the limit input to a high value to get all of the results at once.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Number input for this Choreo. 
      # 
      # @param String - (optional, string) The bill's number. This is different from the BillID. Filter operators allowed. Sortable.
      ###

      def set_Number(value)
        set_input("Number", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Offset the results by the number given, useful for paging through results.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (conditional, string) Filters according to a full-text search on the object.
      ###

      def set_Query(value)
        set_input("Query", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Sort input for this Choreo. 
      # 
      # @param String - (optional, string) You can order the results using fieldname (ascending) or -fieldname (descending) where "fieldname" is one of the variables that is listed as 'Sortable' in the description. Ex: '-congress'
      ###

      def set_Sort(value)
        set_input("Sort", value)
      end
      #### 
      # Set the value of the Sponsor input for this Choreo. 
      # 
      # @param String - (optional, string) The ID of the sponsor of the bill. Filter operators allowed. Sortable.
      ###

      def set_Sponsor(value)
        set_input("Sponsor", value)
      end
      #### 
      # Set the value of the Terms input for this Choreo. 
      # 
      # @param String - (optional, string) Subject areas associated with the bill. When using this filter, provide the id of the term which is returned when requesting a single bill object. Filter operators allowed. Sortable.
      ###

      def set_Terms(value)
        set_input("Terms", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Bill Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class BillResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The resopnse from GovTrack.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Bill



  ##############################################################################
  #
  # Committee
  #
  # Returns committees and subcommittees in the United States Congress, including historical committees.
  #
  ##############################################################################

  class Committee < Choreography

    ####
    #  Create a new instance of the Committee Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/GovTrack/Committee")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CommitteeInputSet
    ####
    def new_input_set()
      return CommitteeInputSet.new()
    end

    def make_result_set()
      return CommitteeResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = CommitteeResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Committee
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CommitteeInputSet < Choreography::InputSet

      #### 
      # Set the value of the CommitteeID input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The id of the committee resource. When using this input, all other filter parameters are ignored, and a single record is returned.
      ###

      def set_CommitteeID(value)
        set_input("CommitteeID", value)
      end
      #### 
      # Set the value of the Committee input for this Choreo. 
      # 
      # @param String - (optional, string) Indicates if the object is a committee or a subcommittee. To filter for committees, you can pass "null". For subcommittees, pass the ID of the parent. Filter operators allowed. Sortable.
      ###

      def set_Committee(value)
        set_input("Committee", value)
      end
      #### 
      # Set the value of the Fields input for this Choreo. 
      # 
      # @param String - (optional, string) A comma separated list of fields to return in the response. Use double-underscores to span relationships (e.g. person__firstname).
      ###

      def set_Fields(value)
        set_input("Fields", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Results are paged 100 per call by default. Set the limit input to a high value to get all of the results at once.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Obsolete input for this Choreo. 
      # 
      # @param String - (optional, string) Whether or not the committee still exists. Set to "true" to return committees that are obsolete. Filter operators allowed. Sortable.
      ###

      def set_Obsolete(value)
        set_input("Obsolete", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Offset the results by the number given, useful for paging through results.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Sort input for this Choreo. 
      # 
      # @param String - (optional, string) You can order the results using fieldname (ascending) or -fieldname (descending) where "fieldname" is one of the variables that is listed as 'Sortable' in the description. Ex: '-lastname'
      ###

      def set_Sort(value)
        set_input("Sort", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Committee Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CommitteeResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from GovTrack.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Committee



  ##############################################################################
  #
  # CommitteeMember
  #
  # Returns records indicating the current membership of a Member of Congress on a committee or subcommittee.
  #
  ##############################################################################

  class CommitteeMember < Choreography

    ####
    #  Create a new instance of the CommitteeMember Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/GovTrack/CommitteeMember")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CommitteeMemberInputSet
    ####
    def new_input_set()
      return CommitteeMemberInputSet.new()
    end

    def make_result_set()
      return CommitteeMemberResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = CommitteeMemberResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CommitteeMember
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CommitteeMemberInputSet < Choreography::InputSet

      #### 
      # Set the value of the CommitteeMemberID input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The ID of the committee member resource. When using this input, all other filter parameters are ignored, and a single record is returned.
      ###

      def set_CommitteeMemberID(value)
        set_input("CommitteeMemberID", value)
      end
      #### 
      # Set the value of the Committee input for this Choreo. 
      # 
      # @param String - (optional, string) The committee or subcommittee being served on. To filter by this field, you can pass the ID of the committee. Filter operators allowed. Sortable.
      ###

      def set_Committee(value)
        set_input("Committee", value)
      end
      #### 
      # Set the value of the Fields input for this Choreo. 
      # 
      # @param String - (optional, string) A comma separated list of fields to return in the response. Use double-underscores to span relationships (e.g. person__firstname).
      ###

      def set_Fields(value)
        set_input("Fields", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Results are paged 100 per call by default. Set the limit input to a high value to get all of the results at once.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Offset the results by the number given, useful for paging through results.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end
      #### 
      # Set the value of the Person input for this Choreo. 
      # 
      # @param String - (optional, string) The ID of the Member of Congress serving on a committee. Filter operators allowed. Sortable.
      ###

      def set_Person(value)
        set_input("Person", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Sort input for this Choreo. 
      # 
      # @param String - (optional, string) You can order the results using fieldname (ascending) or -fieldname (descending) where "fieldname" is one of the variables that is listed as 'Sortable' in the description. Ex: '-lastname'
      ###

      def set_Sort(value)
        set_input("Sort", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CommitteeMember Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CommitteeMemberResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from GovTrack.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CommitteeMember



  ##############################################################################
  #
  # GovTrackHelper
  #
  # 
  #
  ##############################################################################

  class GovTrackHelper < Choreography

    ####
    #  Create a new instance of the GovTrackHelper Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/GovTrack/GovTrackHelper")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GovTrackHelperInputSet
    ####
    def new_input_set()
      return GovTrackHelperInputSet.new()
    end

    def make_result_set()
      return GovTrackHelperResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GovTrackHelperResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GovTrackHelper
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GovTrackHelperInputSet < Choreography::InputSet

      #### 
      # Set the value of the SpecialParams input for this Choreo. 
      # 
      # @param String - (conditional, any) 
      ###

      def set_SpecialParams(value)
        set_input("SpecialParams", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GovTrackHelper Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GovTrackHelperResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "NewParams" output from this Choreo execution
    	#
    	# @return String - 
    	####
    	def get_NewParams()
    	  return @outputs["NewParams"]
    	end
    end

  end # class GovTrackHelper



  ##############################################################################
  #
  # Person
  #
  # Returns members of Congress and U.S. Presidents since the founding of the nation.
  #
  ##############################################################################

  class Person < Choreography

    ####
    #  Create a new instance of the Person Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/GovTrack/Person")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return PersonInputSet
    ####
    def new_input_set()
      return PersonInputSet.new()
    end

    def make_result_set()
      return PersonResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = PersonResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Person
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class PersonInputSet < Choreography::InputSet

      #### 
      # Set the value of the Fields input for this Choreo. 
      # 
      # @param String - (optional, string) A comma separated list of fields to return in the response. Use double-underscores to span relationships (e.g. person__firstname).
      ###

      def set_Fields(value)
        set_input("Fields", value)
      end
      #### 
      # Set the value of the Gender input for this Choreo. 
      # 
      # @param String - (optional, string) The person's gender (male or female). For historical data, gender is sometimes not specified. Filter operators allowed. Sortable.
      ###

      def set_Gender(value)
        set_input("Gender", value)
      end
      #### 
      # Set the value of the LastName input for this Choreo. 
      # 
      # @param String - (optional, string) The representative's last name. Filter operators allowed. Sortable.
      ###

      def set_LastName(value)
        set_input("LastName", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Results are paged 100 per call by default. Set the limit input to a high value to get all of the results at once.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Offset the results by the number given, useful for paging through results.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end
      #### 
      # Set the value of the PersonID input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The ID number for a person to retrieve. When using this input, all other filter parameters are ignored, and a single record is returned.
      ###

      def set_PersonID(value)
        set_input("PersonID", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (conditional, string) Filters according to a full-text search on the object.
      ###

      def set_Query(value)
        set_input("Query", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Sort input for this Choreo. 
      # 
      # @param String - (optional, string) You can order the results using fieldname (ascending) or -fieldname (descending) where "fieldname" is one of the variables that is listed as 'Sortable' in the description. Ex: '-lastname'
      ###

      def set_Sort(value)
        set_input("Sort", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Person Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class PersonResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from GovTrack.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Person



  ##############################################################################
  #
  # Role
  #
  # Returns terms held in office by Members of Congress and U.S. Presidents.
  #
  ##############################################################################

  class Role < Choreography

    ####
    #  Create a new instance of the Role Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/GovTrack/Role")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RoleInputSet
    ####
    def new_input_set()
      return RoleInputSet.new()
    end

    def make_result_set()
      return RoleResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = RoleResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Role
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RoleInputSet < Choreography::InputSet

      #### 
      # Set the value of the Current input for this Choreo. 
      # 
      # @param String - (optional, string) Whether the role is currently held, or it is archival information. Filter operators allowed. Sortable.
      ###

      def set_Current(value)
        set_input("Current", value)
      end
      #### 
      # Set the value of the District input for this Choreo. 
      # 
      # @param String - (optional, string) For representatives, the number of their congressional district. 0 for at-large districts, -1 in historical data if the district is not known. Filter operators allowed. Sortable.
      ###

      def set_District(value)
        set_input("District", value)
      end
      #### 
      # Set the value of the EndDate input for this Choreo. 
      # 
      # @param String - (optional, string) The date the role ended - when the person resigned, died, etc. (in YYYY-MM-DD format). Filter operators allowed. Sortable.
      ###

      def set_EndDate(value)
        set_input("EndDate", value)
      end
      #### 
      # Set the value of the Fields input for this Choreo. 
      # 
      # @param String - (optional, string) A comma separated list of fields to return in the response. Use double-underscores to span relationships (e.g. person__firstname).
      ###

      def set_Fields(value)
        set_input("Fields", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Results are paged 100 per call by default. Set the limit input to a high value to get all of the results at once.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Offset the results by the number given, useful for paging through results.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end
      #### 
      # Set the value of the Party input for this Choreo. 
      # 
      # @param String - (optional, string) The political party of the person. If the person changes party, it is usually the most recent party during this role. Filter operators allowed. Sortable.
      ###

      def set_Party(value)
        set_input("Party", value)
      end
      #### 
      # Set the value of the Person input for this Choreo. 
      # 
      # @param String - (optional, string) The person associated with this role. When using this filter, provide the id of the person which is returned when requesting a single role object.
      ###

      def set_Person(value)
        set_input("Person", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the RoleID input for this Choreo. 
      # 
      # @param String - (optional, string) Specify the ID number of a role object to retrieve the record for only that role. When using this input, all other filter parameters are ignored, and a single record is returned.
      ###

      def set_RoleID(value)
        set_input("RoleID", value)
      end
      #### 
      # Set the value of the RoleType input for this Choreo. 
      # 
      # @param String - (optional, string) The type of role (e.g. senator, representative, or president). Filter operators allowed. Sortable.
      ###

      def set_RoleType(value)
        set_input("RoleType", value)
      end
      #### 
      # Set the value of the SenatorClass input for this Choreo. 
      # 
      # @param Integer - (optional, integer) For senators, their election class, which determines which years they are up for election. Acceptable values: class1, class2, class3. Filter operators allowed. Sortable.
      ###

      def set_SenatorClass(value)
        set_input("SenatorClass", value)
      end
      #### 
      # Set the value of the Sort input for this Choreo. 
      # 
      # @param String - (optional, string) You can order the results by date using fieldname (ascending) or -fieldname (descending), where "fieldname" is either startdate or enddate.
      ###

      def set_Sort(value)
        set_input("Sort", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (optional, string) The date the role began  - when the person took office (in YYYY-MM-DD format). Filter operators allowed. Sortable.
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) For senators and representatives, the two-letter USPS abbreviation for the state or territory they are serving. Filter operators allowed. Sortable.
      ###

      def set_State(value)
        set_input("State", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Role Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RoleResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from GovTrack.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Role



  ##############################################################################
  #
  # Vote
  #
  # Returns roll call votes in the U.S. Congress since 1789.
  #
  ##############################################################################

  class Vote < Choreography

    ####
    #  Create a new instance of the Vote Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/GovTrack/Vote")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return VoteInputSet
    ####
    def new_input_set()
      return VoteInputSet.new()
    end

    def make_result_set()
      return VoteResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = VoteResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Vote
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class VoteInputSet < Choreography::InputSet

      #### 
      # Set the value of the Chamber input for this Choreo. 
      # 
      # @param String - (optional, string) The chamber in which the vote was held. Valid values are: house or senate. Filter operators allowed but only when filtering by Congress as well. Sortable.
      ###

      def set_Chamber(value)
        set_input("Chamber", value)
      end
      #### 
      # Set the value of the Congress input for this Choreo. 
      # 
      # @param String - (optional, string) The number of the congress in which the vote took place. The current congress is 113. Filter operators allowed. Sortable.
      ###

      def set_Congress(value)
        set_input("Congress", value)
      end
      #### 
      # Set the value of the Created input for this Choreo. 
      # 
      # @param String - (optional, string) The date (and in recent history also the time) on which the vote was held. Filter operators allowed. Sortable.
      ###

      def set_Created(value)
        set_input("Created", value)
      end
      #### 
      # Set the value of the Fields input for this Choreo. 
      # 
      # @param String - (optional, string) A comma separated list of fields to return in the response. Use double-underscores to span relationships (e.g. person__firstname).
      ###

      def set_Fields(value)
        set_input("Fields", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Results are paged 100 per call by default. Set the limit input to a high value to get all of the results at once.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Number input for this Choreo. 
      # 
      # @param String - (optional, string) The number of the vote, unique to a Congress and session pair. Filter operators allowed. Sortable.
      ###

      def set_Number(value)
        set_input("Number", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Offset the results by the number given, useful for paging through results.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end
      #### 
      # Set the value of the RelatedAmendment input for this Choreo. 
      # 
      # @param String - (optional, string) The ID of a related amendment. Filter operators allowed. Sortable.
      ###

      def set_RelatedAmendment(value)
        set_input("RelatedAmendment", value)
      end
      #### 
      # Set the value of the RelatedBill input for this Choreo. 
      # 
      # @param String - (optional, string) A bill related to this vote. Filter operators allowed. Sortable.
      ###

      def set_RelatedBill(value)
        set_input("RelatedBill", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Session input for this Choreo. 
      # 
      # @param String - (optional, string) The session of congress. Filter operators allowed. Sortable.
      ###

      def set_Session(value)
        set_input("Session", value)
      end
      #### 
      # Set the value of the Sort input for this Choreo. 
      # 
      # @param String - (optional, string) You can order the results using created (ascending) or -created (descending) for the dates that each vote was held.
      ###

      def set_Sort(value)
        set_input("Sort", value)
      end
      #### 
      # Set the value of the VoteID input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The ID of a vote object to retrieve. When using this input, all other filter parameters are ignored, and a single record is returned.
      ###

      def set_VoteID(value)
        set_input("VoteID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Vote Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class VoteResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from GovTrack.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Vote



  ##############################################################################
  #
  # VoteAndVoter
  #
  # Retrieves how people voted on roll call votes in the U.S. Congress since 1789. 
  #
  ##############################################################################

  class VoteAndVoter < Choreography

    ####
    #  Create a new instance of the VoteAndVoter Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/GovTrack/VoteAndVoter")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return VoteAndVoterInputSet
    ####
    def new_input_set()
      return VoteAndVoterInputSet.new()
    end

    def make_result_set()
      return VoteAndVoterResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = VoteAndVoterResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the VoteAndVoter
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class VoteAndVoterInputSet < Choreography::InputSet

      #### 
      # Set the value of the Created input for this Choreo. 
      # 
      # @param String - (optional, string) The date (and in recent history also the time) on which the vote was held (in YYYY-MM-DD format). Filter operators allowed. Sortable.
      ###

      def set_Created(value)
        set_input("Created", value)
      end
      #### 
      # Set the value of the Fields input for this Choreo. 
      # 
      # @param String - (optional, string) A comma separated list of fields to return in the response. Use double-underscores to span relationships (e.g. person__firstname).
      ###

      def set_Fields(value)
        set_input("Fields", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Results are paged 100 per call by default. Set the limit input to a high value to get all of the results at once.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the ObjectID input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The ID of the resource to retrieve. When using this input, all other filter parameters are ignored, and a single record is returned.
      ###

      def set_ObjectID(value)
        set_input("ObjectID", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Offset the results by the number given, useful for paging through results.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end
      #### 
      # Set the value of the Option input for this Choreo. 
      # 
      # @param String - (optional, string) The way a particular person voted. The value corresponds to the key of an option returned on the Vote Choreo. Filter operators allowed. Sortable.
      ###

      def set_Option(value)
        set_input("Option", value)
      end
      #### 
      # Set the value of the Person input for this Choreo. 
      # 
      # @param String - (optional, string) The person making this vote. This is an ID number. Filter operators allowed. Sortable.
      ###

      def set_Person(value)
        set_input("Person", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Sort input for this Choreo. 
      # 
      # @param String - (optional, string) You can order the results by date using fieldname (ascending) or -fieldname (descending), where "fieldname" is either startdate or enddate.
      ###

      def set_Sort(value)
        set_input("Sort", value)
      end
      #### 
      # Set the value of the Vote input for this Choreo. 
      # 
      # @param String - (optional, string) The ID number of the vote that this was part of. This is in the form of an ID number. Filter operators allowed. Sortable.
      ###

      def set_Vote(value)
        set_input("Vote", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the VoteAndVoter Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class VoteAndVoterResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The resopnse from GovTrack.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class VoteAndVoter




end # module GovTrack