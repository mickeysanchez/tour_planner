require "temboo"

module InfluenceExplorer



  ##############################################################################
  #
  # CampaignContribution
  #
  # Retrieve detailed information on political campaign contributions, filtered by date, contributor, state, employer, campaign, etc.
  #
  ##############################################################################

  class CampaignContribution < Choreography

    ####
    #  Create a new instance of the CampaignContribution Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/CampaignContribution")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CampaignContributionInputSet
    ####
    def new_input_set()
      return CampaignContributionInputSet.new()
    end

    def make_result_set()
      return CampaignContributionResultSet.new()
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
      results = CampaignContributionResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CampaignContribution
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CampaignContributionInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param String - (conditional, string) Enter the amount of dollars spent on lobbying.  Valid formats include: 500 (exactly $500); >|500 (greater than, or equal to 500); <|500 (less than or equal to 500).
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the ContributorName input for this Choreo. 
      # 
      # @param String - (conditional, string) Specfiy the name of an individual, PAC, organization, or employer for which a full-text search will be performed.
      ###

      def set_ContributorName(value)
        set_input("ContributorName", value)
      end
      #### 
      # Set the value of the ContributorsByState input for this Choreo. 
      # 
      # @param String - (conditional, string) Enter a two-letter state designation from which the contribution is made.
      ###

      def set_ContributorsByState(value)
        set_input("ContributorsByState", value)
      end
      #### 
      # Set the value of the Cycle input for this Choreo. 
      # 
      # @param String - (conditional, string) Specify a yyyy-formatted election cycle. Example: 2012, or 2008|2012 to limit results between 2008 and 2012.
      ###

      def set_Cycle(value)
        set_input("Cycle", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (conditional, string) Specify a date of the contribution in ISO date format.  For example: 2006-08-06.  Or, ><|2006-08-06|2006-09-12 to limit results between specific dates.
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the OrganizationName input for this Choreo. 
      # 
      # @param String - (conditional, string) Specify a full-text search on employer, organization, and parent organization.
      ###

      def set_OrganizationName(value)
        set_input("OrganizationName", value)
      end
      #### 
      # Set the value of the RecipientName input for this Choreo. 
      # 
      # @param String - (conditional, string) Enter the full-text search on name of PAC or candidate receiving the contribution.
      ###

      def set_RecipientName(value)
        set_input("RecipientName", value)
      end
      #### 
      # Set the value of the RecipientState input for this Choreo. 
      # 
      # @param String - (conditional, string) Specify a two-letter state abbreviation for the state in which the recipient of contributions is running a campaign.
      ###

      def set_RecipientState(value)
        set_input("RecipientState", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Indicates the desired format for the response. Accepted values are: json (the default), csv, and xls. Note when specifying xls, restults are returned as Base64 encoded data.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Seat input for this Choreo. 
      # 
      # @param String - (conditional, string) Specify the type of political office being sought.  Examples: federal:senate (US Senate), federal:president (US President), state:governor.  For more info see documentation.
      ###

      def set_Seat(value)
        set_input("Seat", value)
      end
      #### 
      # Set the value of the TransactionNamespace input for this Choreo. 
      # 
      # @param String - (optional, string) Filters on federal or state contributions. Valid namespaces are: urn:fec:transaction (for federal) or urn:nimsp:transaction (for state).
      ###

      def set_TransactionNamespace(value)
        set_input("TransactionNamespace", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CampaignContribution Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CampaignContributionResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Influence Explorer. Corresponds to the ResponseFormat input. Defaults to json.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CampaignContribution



  ##############################################################################
  #
  # ContributorTypeBreakdown
  #
  # Returns a breakdown, for a given candidate, of how much of the money raised came from individuals versus organizations (PACs).
  #
  ##############################################################################

  class ContributorTypeBreakdown < Choreography

    ####
    #  Create a new instance of the ContributorTypeBreakdown Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/ContributorTypeBreakdown")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ContributorTypeBreakdownInputSet
    ####
    def new_input_set()
      return ContributorTypeBreakdownInputSet.new()
    end

    def make_result_set()
      return ContributorTypeBreakdownResultSet.new()
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
      results = ContributorTypeBreakdownResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ContributorTypeBreakdown
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ContributorTypeBreakdownInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the EntityID input for this Choreo. 
      # 
      # @param String - (required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
      ###

      def set_EntityID(value)
        set_input("EntityID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ContributorTypeBreakdown Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ContributorTypeBreakdownResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Influence Explorer.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ContributorTypeBreakdown



  ##############################################################################
  #
  # EntityOverview
  #
  # Returns general information about a particular politician, individual, or organization with a given entity id.
  #
  ##############################################################################

  class EntityOverview < Choreography

    ####
    #  Create a new instance of the EntityOverview Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/EntityOverview")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return EntityOverviewInputSet
    ####
    def new_input_set()
      return EntityOverviewInputSet.new()
    end

    def make_result_set()
      return EntityOverviewResultSet.new()
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
      results = EntityOverviewResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the EntityOverview
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class EntityOverviewInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Cycle input for this Choreo. 
      # 
      # @param String - (optional, date) Specify a yyyy-formatted election cycle. Example: 2012, or 2008|2012 to limit results between 2008 and 2012.
      ###

      def set_Cycle(value)
        set_input("Cycle", value)
      end
      #### 
      # Set the value of the EntityID input for this Choreo. 
      # 
      # @param String - (required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
      ###

      def set_EntityID(value)
        set_input("EntityID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the EntityOverview Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class EntityOverviewResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Influence Explorer.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class EntityOverview



  ##############################################################################
  #
  # FederalGrants
  #
  # Returns information about federal grants awarded.
  #
  ##############################################################################

  class FederalGrants < Choreography

    ####
    #  Create a new instance of the FederalGrants Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/FederalGrants")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FederalGrantsInputSet
    ####
    def new_input_set()
      return FederalGrantsInputSet.new()
    end

    def make_result_set()
      return FederalGrantsResultSet.new()
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
      results = FederalGrantsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FederalGrants
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FederalGrantsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AgencyName input for this Choreo. 
      # 
      # @param String - (optional, string) Full-text search on the reported name of the federal agency awarding the grant.
      ###

      def set_AgencyName(value)
        set_input("AgencyName", value)
      end
      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param String - (optional, string) The grant amount. Valid formats include: 500 (exactly $500); >|500 (greater than, or equal to 500); <|500 (less than or equal to 500).
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the AssistanceType input for this Choreo. 
      # 
      # @param Integer - (optional, integer) A numeric code for the type of grant awarded. See documentation for more details for this parameter.
      ###

      def set_AssistanceType(value)
        set_input("AssistanceType", value)
      end
      #### 
      # Set the value of the FiscalYear input for this Choreo. 
      # 
      # @param String - (optional, date) The year in which the grant was awarded. A YYYY formatted year. You can also specify a range by separating years with a pipe (i.e. 2008|2012).
      ###

      def set_FiscalYear(value)
        set_input("FiscalYear", value)
      end
      #### 
      # Set the value of the RecipientName input for this Choreo. 
      # 
      # @param String - (optional, string) Full-text search on the reported name of the grant recipient.
      ###

      def set_RecipientName(value)
        set_input("RecipientName", value)
      end
      #### 
      # Set the value of the RecipientState input for this Choreo. 
      # 
      # @param String - (optional, string) Two-letter abbreviation of the state in which the grant was awarded.
      ###

      def set_RecipientState(value)
        set_input("RecipientState", value)
      end
      #### 
      # Set the value of the RecipientType input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The numeric code representing the type of entity that received the grant. See documentation for more details about this parameter.
      ###

      def set_RecipientType(value)
        set_input("RecipientType", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Indicates the desired format for the response. Accepted values are: json (the default), csv, and xls. Note when specifying xls, restults are returned as Base64 encoded data.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FederalGrants Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FederalGrantsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Influence Explorer. Corresponds to the ResponseFormat input. Defaults to json.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FederalGrants



  ##############################################################################
  #
  # FederalLobbying
  #
  # Obtain detailed lobbying information.
  #
  ##############################################################################

  class FederalLobbying < Choreography

    ####
    #  Create a new instance of the FederalLobbying Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/FederalLobbying")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FederalLobbyingInputSet
    ####
    def new_input_set()
      return FederalLobbyingInputSet.new()
    end

    def make_result_set()
      return FederalLobbyingResultSet.new()
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
      results = FederalLobbyingResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FederalLobbying
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FederalLobbyingInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the amount of dollars spent on lobbying.  Valid formats include: 500 (exactly $500); >|500 (greater than, or equal to 500); <|500 (less than or equal to 500).
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the ClientParentOrganization input for this Choreo. 
      # 
      # @param String - (optional, string) Specify a full-text search of a client's parent organizationfor.
      ###

      def set_ClientParentOrganization(value)
        set_input("ClientParentOrganization", value)
      end
      #### 
      # Set the value of the ClientSearch input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the name of the client for whom this lobbyist is working. This parameter executes a full-text search.
      ###

      def set_ClientSearch(value)
        set_input("ClientSearch", value)
      end
      #### 
      # Set the value of the FilingType input for this Choreo. 
      # 
      # @param String - (optional, string) Specify the type of filing as identified by CRP.  Example: n, for non-self filer parent.  For more info, go here: http://data.influenceexplorer.com/api/lobbying/
      ###

      def set_FilingType(value)
        set_input("FilingType", value)
      end
      #### 
      # Set the value of the LobbyistSearch input for this Choreo. 
      # 
      # @param String - (optional, string) Specify a full-text search of a lobbyist's name.
      ###

      def set_LobbyistSearch(value)
        set_input("LobbyistSearch", value)
      end
      #### 
      # Set the value of the RegistrantSearch input for this Choreo. 
      # 
      # @param String - (optional, string) Specify a full-text search of an organization or a person, who is fling the lobbyist registration.
      ###

      def set_RegistrantSearch(value)
        set_input("RegistrantSearch", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Indicates the desired format for the response. Accepted values are: json (the default), csv, and xls. Note when specifying xls, restults are returned as Base64 encoded data.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the TransactionID input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the report ID given by the Senate Office of Public Records.
      ###

      def set_TransactionID(value)
        set_input("TransactionID", value)
      end
      #### 
      # Set the value of the TransactionType input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the type of filing as reported by the Senate Office of Public Records. See here for additional info: http://assets.transparencydata.org.s3.amazonaws.com/docs/transaction_types-20100402.csv
      ###

      def set_TransactionType(value)
        set_input("TransactionType", value)
      end
      #### 
      # Set the value of the YearFiled input for this Choreo. 
      # 
      # @param String - (optional, string) Specify the year in which a registration was filed. Use the following format: yyyy. Example: 2011. Logical OR is also possible by using the | (pipe) symbol.  Example: 2008|2012.
      ###

      def set_YearFiled(value)
        set_input("YearFiled", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FederalLobbying Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FederalLobbyingResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Influence Explorer. Corresponds to the ResponseFormat input. Defaults to json.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FederalLobbying



  ##############################################################################
  #
  # IDLookup
  #
  # Looks up the entity ID based on an ID from a different data set. Currently Influence Explorer provides a mapping from the ID schemes used by Center for Reponsive Politics (CRP) and the National Institute for Money in State Politics (NIMSP).
  #
  ##############################################################################

  class IDLookup < Choreography

    ####
    #  Create a new instance of the IDLookup Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/IDLookup")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return IDLookupInputSet
    ####
    def new_input_set()
      return IDLookupInputSet.new()
    end

    def make_result_set()
      return IDLookupResultSet.new()
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
      results = IDLookupResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the IDLookup
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class IDLookupInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the Entity in the given namespace.
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the Namespace input for this Choreo. 
      # 
      # @param String - (required, string) The dataset and data type of the ID. Accepted values are: urn:crp:individual, urn:crp:organization, urn:crp:recipient, urn:nimsp:organization, urn:nimsp:recipient. See documentation for more details.
      ###

      def set_Namespace(value)
        set_input("Namespace", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the IDLookup Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class IDLookupResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Influence Explorer.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class IDLookup



  ##############################################################################
  #
  # LocalBreakdown
  #
  # Returns a breakdown of how much of the money raised was from contributors in the politician's state versus outside the politician's state.
  #
  ##############################################################################

  class LocalBreakdown < Choreography

    ####
    #  Create a new instance of the LocalBreakdown Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/LocalBreakdown")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return LocalBreakdownInputSet
    ####
    def new_input_set()
      return LocalBreakdownInputSet.new()
    end

    def make_result_set()
      return LocalBreakdownResultSet.new()
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
      results = LocalBreakdownResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the LocalBreakdown
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class LocalBreakdownInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the EntityID input for this Choreo. 
      # 
      # @param String - (required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
      ###

      def set_EntityID(value)
        set_input("EntityID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the LocalBreakdown Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class LocalBreakdownResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Influence Explorer.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class LocalBreakdown



  ##############################################################################
  #
  # PartyBreakdown
  #
  # Returns how much an individual or organization gave to each party.
  #
  ##############################################################################

  class PartyBreakdown < Choreography

    ####
    #  Create a new instance of the PartyBreakdown Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/PartyBreakdown")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return PartyBreakdownInputSet
    ####
    def new_input_set()
      return PartyBreakdownInputSet.new()
    end

    def make_result_set()
      return PartyBreakdownResultSet.new()
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
      results = PartyBreakdownResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the PartyBreakdown
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class PartyBreakdownInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ContributorType input for this Choreo. 
      # 
      # @param String - (required, string) This indicates whether the contributor is an individual or orgnaization. Accepted values are: "indiv" or "org". Defaults to "org".
      ###

      def set_ContributorType(value)
        set_input("ContributorType", value)
      end
      #### 
      # Set the value of the EntityID input for this Choreo. 
      # 
      # @param String - (required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
      ###

      def set_EntityID(value)
        set_input("EntityID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the PartyBreakdown Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class PartyBreakdownResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Influence Explorer.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class PartyBreakdown



  ##############################################################################
  #
  # SearchByName
  #
  # Searches for politicians, individuals, or organizations with the given name. Returns basic information about the the contributions to and from the entity that is specified.
  #
  ##############################################################################

  class SearchByName < Choreography

    ####
    #  Create a new instance of the SearchByName Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/SearchByName")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchByNameInputSet
    ####
    def new_input_set()
      return SearchByNameInputSet.new()
    end

    def make_result_set()
      return SearchByNameResultSet.new()
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
      results = SearchByNameResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchByName
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchByNameInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Search input for this Choreo. 
      # 
      # @param String - (required, string) The query string.
      ###

      def set_Search(value)
        set_input("Search", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchByName Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchByNameResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Influence Explorer.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchByName



  ##############################################################################
  #
  # StateFederalBreakdown
  #
  # Returns the portion of contribution given by an individual or organization that went to state versus federal candidates.
  #
  ##############################################################################

  class StateFederalBreakdown < Choreography

    ####
    #  Create a new instance of the StateFederalBreakdown Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/StateFederalBreakdown")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return StateFederalBreakdownInputSet
    ####
    def new_input_set()
      return StateFederalBreakdownInputSet.new()
    end

    def make_result_set()
      return StateFederalBreakdownResultSet.new()
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
      results = StateFederalBreakdownResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the StateFederalBreakdown
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class StateFederalBreakdownInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the EntityID input for this Choreo. 
      # 
      # @param String - (required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
      ###

      def set_EntityID(value)
        set_input("EntityID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the StateFederalBreakdown Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class StateFederalBreakdownResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Influence Explorer.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class StateFederalBreakdown



  ##############################################################################
  #
  # TopContributors
  #
  # Returns the top contributing organizations for a particular politician, ranked by total dollars given.
  #
  ##############################################################################

  class TopContributors < Choreography

    ####
    #  Create a new instance of the TopContributors Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/TopContributors")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return TopContributorsInputSet
    ####
    def new_input_set()
      return TopContributorsInputSet.new()
    end

    def make_result_set()
      return TopContributorsResultSet.new()
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
      results = TopContributorsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the TopContributors
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class TopContributorsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the EntityID input for this Choreo. 
      # 
      # @param String - (required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
      ###

      def set_EntityID(value)
        set_input("EntityID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the TopContributors Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class TopContributorsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Influence Explorer.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class TopContributors



  ##############################################################################
  #
  # TopRecipientOrganizations
  #
  # Returns the top organizations to which the specified individual has given money.
  #
  ##############################################################################

  class TopRecipientOrganizations < Choreography

    ####
    #  Create a new instance of the TopRecipientOrganizations Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/TopRecipientOrganizations")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return TopRecipientOrganizationsInputSet
    ####
    def new_input_set()
      return TopRecipientOrganizationsInputSet.new()
    end

    def make_result_set()
      return TopRecipientOrganizationsResultSet.new()
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
      results = TopRecipientOrganizationsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the TopRecipientOrganizations
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class TopRecipientOrganizationsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the EntityID input for this Choreo. 
      # 
      # @param String - (required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
      ###

      def set_EntityID(value)
        set_input("EntityID", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of resutls to return.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the TopRecipientOrganizations Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class TopRecipientOrganizationsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Influence Explorer.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class TopRecipientOrganizations



  ##############################################################################
  #
  # TopRecipientPoliticians
  #
  # Returns the top politicians to which this individual has given money.
  #
  ##############################################################################

  class TopRecipientPoliticians < Choreography

    ####
    #  Create a new instance of the TopRecipientPoliticians Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/TopRecipientPoliticians")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return TopRecipientPoliticiansInputSet
    ####
    def new_input_set()
      return TopRecipientPoliticiansInputSet.new()
    end

    def make_result_set()
      return TopRecipientPoliticiansResultSet.new()
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
      results = TopRecipientPoliticiansResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the TopRecipientPoliticians
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class TopRecipientPoliticiansInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the EntityID input for this Choreo. 
      # 
      # @param String - (required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
      ###

      def set_EntityID(value)
        set_input("EntityID", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of resutls to return.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the TopRecipientPoliticians Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class TopRecipientPoliticiansResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Influence Explorer.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class TopRecipientPoliticians



  ##############################################################################
  #
  # TopRecipients
  #
  # Returns the top recipients of money from a specified organization.
  #
  ##############################################################################

  class TopRecipients < Choreography

    ####
    #  Create a new instance of the TopRecipients Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/TopRecipients")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return TopRecipientsInputSet
    ####
    def new_input_set()
      return TopRecipientsInputSet.new()
    end

    def make_result_set()
      return TopRecipientsResultSet.new()
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
      results = TopRecipientsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the TopRecipients
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class TopRecipientsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the EntityID input for this Choreo. 
      # 
      # @param String - (required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
      ###

      def set_EntityID(value)
        set_input("EntityID", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of resutls to return.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the TopRecipients Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class TopRecipientsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Influence Explorer.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class TopRecipients



  ##############################################################################
  #
  # TopSectors
  #
  # Returns the contribution amounts that each sector gave to the politician.
  #
  ##############################################################################

  class TopSectors < Choreography

    ####
    #  Create a new instance of the TopSectors Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/InfluenceExplorer/TopSectors")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return TopSectorsInputSet
    ####
    def new_input_set()
      return TopSectorsInputSet.new()
    end

    def make_result_set()
      return TopSectorsResultSet.new()
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
      results = TopSectorsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the TopSectors
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class TopSectorsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Sunlight Data Services.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the EntityID input for this Choreo. 
      # 
      # @param String - (required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
      ###

      def set_EntityID(value)
        set_input("EntityID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the TopSectors Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class TopSectorsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Influence Explorer.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class TopSectors




end # module InfluenceExplorer