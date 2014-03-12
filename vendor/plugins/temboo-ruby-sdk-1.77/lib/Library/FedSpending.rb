require "temboo"

module FedSpending



  ##############################################################################
  #
  # Assistance
  #
  # Allows access to the information in the Federal Assisatance Award Data System (FAADS) database, which reports all financial assistance made by federal agencies.
  #
  ##############################################################################

  class Assistance < Choreography

    ####
    #  Create a new instance of the Assistance Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FedSpending/Assistance")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AssistanceInputSet
    ####
    def new_input_set()
      return AssistanceInputSet.new()
    end

    def make_result_set()
      return AssistanceResultSet.new()
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
      results = AssistanceResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Assistance
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AssistanceInputSet < Choreography::InputSet

      #### 
      # Set the value of the AgencyCode input for this Choreo. 
      # 
      # @param String - (conditional, string) The 4-character code for a specific governmental agency providing assistance.
      ###

      def set_AgencyCode(value)
        set_input("AgencyCode", value)
      end
      #### 
      # Set the value of the AssistanceType input for this Choreo. 
      # 
      # @param String - (conditional, string) The type of assistance provided. Valid values are: d = Direct Payments (specified and unrestricted), g = Grants and Cooperative Agreements, i = Insurance, l = Loans (direct and guaranteed), o = Other.
      ###

      def set_AssistanceType(value)
        set_input("AssistanceType", value)
      end
      #### 
      # Set the value of the CFDAProgram input for this Choreo. 
      # 
      # @param String - (conditional, string) An ID for the governmental program.
      ###

      def set_CFDAProgram(value)
        set_input("CFDAProgram", value)
      end
      #### 
      # Set the value of the Detail input for this Choreo. 
      # 
      # @param String - (optional, string) Controls the level of detail of the output. Acceptable values: -1 (summary), 0 (low), 1 (medium), 2 (high), and 3 (extensive). Defaults to -1. See docs for more information.
      ###

      def set_Detail(value)
        set_input("Detail", value)
      end
      #### 
      # Set the value of the FederalID input for this Choreo. 
      # 
      # @param String - (conditional, string) A Federal ID for the award.
      ###

      def set_FederalID(value)
        set_input("FederalID", value)
      end
      #### 
      # Set the value of the FirstYearRange input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) Specifies the first year in a range of years from 2000-2006; if used, must be used with LastYearRange and without FiscalYear.
      ###

      def set_FirstYearRange(value)
        set_input("FirstYearRange", value)
      end
      #### 
      # Set the value of the FiscalYear input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) Specifies a single year from 2000-2006; defaults to all years.
      ###

      def set_FiscalYear(value)
        set_input("FiscalYear", value)
      end
      #### 
      # Set the value of the LastYearRange input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) Specifies the last year in a range of years from 2000-2006; if used, must be used with FirstYearRange and without FiscalYear.
      ###

      def set_LastYearRange(value)
        set_input("LastYearRange", value)
      end
      #### 
      # Set the value of the MajAgency input for this Choreo. 
      # 
      # @param String - (conditional, string) The 2-character code for a major governmental agency providing assistance.
      ###

      def set_MajAgency(value)
        set_input("MajAgency", value)
      end
      #### 
      # Set the value of the MaxRecords input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Allows you to set the maximum number of records retrieved. Defaults to 100.
      ###

      def set_MaxRecords(value)
        set_input("MaxRecords", value)
      end
      #### 
      # Set the value of the PrincipalPlaceCC input for this Choreo. 
      # 
      # @param String - (conditional, string) The city or county of the place of performance.
      ###

      def set_PrincipalPlaceCC(value)
        set_input("PrincipalPlaceCC", value)
      end
      #### 
      # Set the value of the PrincipalPlaceStateCode input for this Choreo. 
      # 
      # @param String - (conditional, string) The FIPS state code for the state of the place of performance.
      ###

      def set_PrincipalPlaceStateCode(value)
        set_input("PrincipalPlaceStateCode", value)
      end
      #### 
      # Set the value of the RecipientCityName input for this Choreo. 
      # 
      # @param String - (conditional, string) The city in the address of a recipient.
      ###

      def set_RecipientCityName(value)
        set_input("RecipientCityName", value)
      end
      #### 
      # Set the value of the RecipientCountyName input for this Choreo. 
      # 
      # @param String - (conditional, string) The county in which a recipient is located.
      ###

      def set_RecipientCountyName(value)
        set_input("RecipientCountyName", value)
      end
      #### 
      # Set the value of the RecipientDistrict input for this Choreo. 
      # 
      # @param String - (conditional, string) The Congressional District in which the recipient is located, formatted with four characters.
      ###

      def set_RecipientDistrict(value)
        set_input("RecipientDistrict", value)
      end
      #### 
      # Set the value of the RecipientName input for this Choreo. 
      # 
      # @param String - (conditional, string) The name of a recipient of assistance.
      ###

      def set_RecipientName(value)
        set_input("RecipientName", value)
      end
      #### 
      # Set the value of the RecipientStateCode input for this Choreo. 
      # 
      # @param String - (conditional, string) The FIPS state code for the state in the address of a recipient.
      ###

      def set_RecipientStateCode(value)
        set_input("RecipientStateCode", value)
      end
      #### 
      # Set the value of the RecipientType input for this Choreo. 
      # 
      # @param String - (conditional, string) The type of recipient. Valid values are: f = For Profits, g = Government,h = Higher Education, i = Individuals,n = Nonprofits, o = Other.
      ###

      def set_RecipientType(value)
        set_input("RecipientType", value)
      end
      #### 
      # Set the value of the RecipientZip input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) The ZIP code in the address of a recipient.
      ###

      def set_RecipientZip(value)
        set_input("RecipientZip", value)
      end
      #### 
      # Set the value of the SortBy input for this Choreo. 
      # 
      # @param String - (optional, string) Determines how records are sorted. Valid values: r (contractor/recipient name), f (dollars of awards),g (major contracting agency), p (CFDA Program), d (date of award). Defaults to f.
      ###

      def set_SortBy(value)
        set_input("SortBy", value)
      end
      #### 
      # Set the value of the TextSearch input for this Choreo. 
      # 
      # @param String - (conditional, string) A free text search on a description of the project.
      ###

      def set_TextSearch(value)
        set_input("TextSearch", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Assistance Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AssistanceResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FedSpending.org.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Assistance



  ##############################################################################
  #
  # Contracts
  #
  # Allows access to the information in the Federal Procurement Data System (FPDS) database, which reports all federal contracts awarded. 
  #
  ##############################################################################

  class Contracts < Choreography

    ####
    #  Create a new instance of the Contracts Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FedSpending/Contracts")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ContractsInputSet
    ####
    def new_input_set()
      return ContractsInputSet.new()
    end

    def make_result_set()
      return ContractsResultSet.new()
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
      results = ContractsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Contracts
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ContractsInputSet < Choreography::InputSet

      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (conditional, string) The city within a contractor's address.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the CompanyName input for this Choreo. 
      # 
      # @param String - (conditional, string) The name of a a contractor or contractor parent company.
      ###

      def set_CompanyName(value)
        set_input("CompanyName", value)
      end
      #### 
      # Set the value of the Completion input for this Choreo. 
      # 
      # @param String - (conditional, string) The competition status of a contract. Valid values: c=Full competition, o=Full competition, one bid, p=Competition, exclusion of sources, n=Not complete, a=Not available, f=Follow-up, u=Unknown.
      ###

      def set_Completion(value)
        set_input("Completion", value)
      end
      #### 
      # Set the value of the Detail input for this Choreo. 
      # 
      # @param String - (optional, string) Controls the level of detail of the output. Acceptable values: -1 (summary), 0 (low), 1 (medium), 2 (high), and 3 (extensive). Defaults to -1. See docs for more information.
      ###

      def set_Detail(value)
        set_input("Detail", value)
      end
      #### 
      # Set the value of the FirstYearRange input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) Specifies the first year in a range of years; if used, must be used with LastYearRange and without FiscalYear.
      ###

      def set_FirstYearRange(value)
        set_input("FirstYearRange", value)
      end
      #### 
      # Set the value of the FiscalYear input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) Specifies a single year; defaults to all years.
      ###

      def set_FiscalYear(value)
        set_input("FiscalYear", value)
      end
      #### 
      # Set the value of the LastYearRange input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) Specifies the last year in a range of years; if used, must be used with FirstYearRange and without FiscalYear.
      ###

      def set_LastYearRange(value)
        set_input("LastYearRange", value)
      end
      #### 
      # Set the value of the MajAgency input for this Choreo. 
      # 
      # @param String - (conditional, string) The 2-character code for a major governmental agency issuing contracts.
      ###

      def set_MajAgency(value)
        set_input("MajAgency", value)
      end
      #### 
      # Set the value of the MaxRecords input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Allows you to set the maximum number of records retrieved. Defaults to 100.
      ###

      def set_MaxRecords(value)
        set_input("MaxRecords", value)
      end
      #### 
      # Set the value of the ModAgency input for this Choreo. 
      # 
      # @param String - (conditional, string) The 4-digit code for a specific governmental agency issuing contracts.
      ###

      def set_ModAgency(value)
        set_input("ModAgency", value)
      end
      #### 
      # Set the value of the PIID input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) A Federal ID number for the contract.
      ###

      def set_PIID(value)
        set_input("PIID", value)
      end
      #### 
      # Set the value of the PSCCategory input for this Choreo. 
      # 
      # @param String - (conditional, string) The 2-character code for a major product or service category.
      ###

      def set_PSCCategory(value)
        set_input("PSCCategory", value)
      end
      #### 
      # Set the value of the PSC input for this Choreo. 
      # 
      # @param String - (conditional, string) The 4-character code for a product or service.
      ###

      def set_PSC(value)
        set_input("PSC", value)
      end
      #### 
      # Set the value of the PopCountryCode input for this Choreo. 
      # 
      # @param String - (conditional, string) The two-letter country code for the place of performance country.
      ###

      def set_PopCountryCode(value)
        set_input("PopCountryCode", value)
      end
      #### 
      # Set the value of the PopDistrict input for this Choreo. 
      # 
      # @param String - (conditional, string) The Congressional District of the place of performance.
      ###

      def set_PopDistrict(value)
        set_input("PopDistrict", value)
      end
      #### 
      # Set the value of the PopZipCode input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) The ZIP code of the place of performance.
      ###

      def set_PopZipCode(value)
        set_input("PopZipCode", value)
      end
      #### 
      # Set the value of the SortBy input for this Choreo. 
      # 
      # @param String - (optional, string) Determines how records are sorted. Valid values: r (contractor/recipient name), f (dollars of awards),g (major contracting agency),p (Product or Service Category),d (date of award). Defaults to f.
      ###

      def set_SortBy(value)
        set_input("SortBy", value)
      end
      #### 
      # Set the value of the StateCode input for this Choreo. 
      # 
      # @param String - (conditional, string) The state abbreviation of the state of the place of performance.
      ###

      def set_StateCode(value)
        set_input("StateCode", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (conditional, string) The state abbreviation within a contractor's address.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the TextSearch input for this Choreo. 
      # 
      # @param String - (conditional, string) Free text search within the text that describes what the contract is for.
      ###

      def set_TextSearch(value)
        set_input("TextSearch", value)
      end
      #### 
      # Set the value of the VendorCountryCode input for this Choreo. 
      # 
      # @param String - (conditional, string) The two-letter country code for the country in a contractor's address.
      ###

      def set_VendorCountryCode(value)
        set_input("VendorCountryCode", value)
      end
      #### 
      # Set the value of the VendorDistrict input for this Choreo. 
      # 
      # @param String - (conditional, string) The 4-character Congressional District within which a contractor is located.
      ###

      def set_VendorDistrict(value)
        set_input("VendorDistrict", value)
      end
      #### 
      # Set the value of the ZipCode input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) The ZIP code within a contractor's address.
      ###

      def set_ZipCode(value)
        set_input("ZipCode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Contracts Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ContractsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FedSpending.org.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Contracts



  ##############################################################################
  #
  # Recovery
  #
  # Allows access to the information in the Recovery Act Recipient Reports database.
  #
  ##############################################################################

  class Recovery < Choreography

    ####
    #  Create a new instance of the Recovery Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FedSpending/Recovery")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RecoveryInputSet
    ####
    def new_input_set()
      return RecoveryInputSet.new()
    end

    def make_result_set()
      return RecoveryResultSet.new()
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
      results = RecoveryResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Recovery
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RecoveryInputSet < Choreography::InputSet

      #### 
      # Set the value of the Activity input for this Choreo. 
      # 
      # @param String - (conditional, string) Whether or not to search by activity. (Will provide a select list if "y"). y = yes, n = no. Defaults to n if not set.
      ###

      def set_Activity(value)
        set_input("Activity", value)
      end
      #### 
      # Set the value of the AwardAmount input for this Choreo. 
      # 
      # @param String - (conditional, string) Grants: total Federal dollars. Loans: face value of loan obligated by the Federal Agency. Contracts: total amount obligated by Federal Agency. Vendors: payment amount. Recipients:  amount of award.
      ###

      def set_AwardAmount(value)
        set_input("AwardAmount", value)
      end
      #### 
      # Set the value of the AwardNumber input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) Identifying number assigned by the awarding Federal Agency. e.g. federal grant number, federal contract number or federal loan number. For grants and loans, this is assigned by the prime recipient.
      ###

      def set_AwardNumber(value)
        set_input("AwardNumber", value)
      end
      #### 
      # Set the value of the AwardType input for this Choreo. 
      # 
      # @param String - (conditional, string) Acceptable values: G = Grants only,L = Loans only, C = Contracts only.
      ###

      def set_AwardType(value)
        set_input("AwardType", value)
      end
      #### 
      # Set the value of the AwardingAgency input for this Choreo. 
      # 
      # @param String - (conditional, string) The 4-digit code for a specific governmental awarding agency that awarded and is administering the award on behalf of the funding agency.
      ###

      def set_AwardingAgency(value)
        set_input("AwardingAgency", value)
      end
      #### 
      # Set the value of the CFDA input for this Choreo. 
      # 
      # @param String - (conditional, string) The Catalog of Federal Domestic Number is the number associated with the published description of a Federal Assistance program in the CFDA.
      ###

      def set_CFDA(value)
        set_input("CFDA", value)
      end
      #### 
      # Set the value of the Detail input for this Choreo. 
      # 
      # @param String - (optional, string) Controls the level of detail of the output. Acceptable values: -1 (summary), 0 (low), 1 (medium), 2 (high), and 3 (extensive). Defaults to -1. See docs for more information.
      ###

      def set_Detail(value)
        set_input("Detail", value)
      end
      #### 
      # Set the value of the EntityDun input for this Choreo. 
      # 
      # @param String - (conditional, string) The prime recipient for the award's Dun & Bradstreet number (no vendor information).
      ###

      def set_EntityDun(value)
        set_input("EntityDun", value)
      end
      #### 
      # Set the value of the FirstYearRange input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) Specifies the first year in a range of years from 2000-2006; if used, must be used with LastYearRange and without FiscalYear.
      ###

      def set_FirstYearRange(value)
        set_input("FirstYearRange", value)
      end
      #### 
      # Set the value of the FiscalYear input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) Specifies a single year; defaults to all years.
      ###

      def set_FiscalYear(value)
        set_input("FiscalYear", value)
      end
      #### 
      # Set the value of the FundingAgency input for this Choreo. 
      # 
      # @param String - (conditional, string) The 4-digit code for a specific governmental agency that is responsible for funding/distributing the ARRA funds to recipients.
      ###

      def set_FundingAgency(value)
        set_input("FundingAgency", value)
      end
      #### 
      # Set the value of the FundingTAS input for this Choreo. 
      # 
      # @param String - (conditional, string) The Agency Treasury Account Symbol (TAS) that identifies the funding Program Source. The Program Source is based out of the OMB TAS list.
      ###

      def set_FundingTAS(value)
        set_input("FundingTAS", value)
      end
      #### 
      # Set the value of the GovtContractOffice input for this Choreo. 
      # 
      # @param String - (conditional, string) The agency supplied code of the government contracting office that executed the transaction. (For prime recipients only.)
      ###

      def set_GovtContractOffice(value)
        set_input("GovtContractOffice", value)
      end
      #### 
      # Set the value of the LastYearRange input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) Specifies the last year in a range of years; if used, must be used with FirstYearRange and without FiscalYear.
      ###

      def set_LastYearRange(value)
        set_input("LastYearRange", value)
      end
      #### 
      # Set the value of the MaxRecords input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Allows you to set the maximum number of records retrieved. Defaults to 100.
      ###

      def set_MaxRecords(value)
        set_input("MaxRecords", value)
      end
      #### 
      # Set the value of the NumberOfJobs input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) The number of Full-Time Equivalent (FTE) jobs created and retained.
      ###

      def set_NumberOfJobs(value)
        set_input("NumberOfJobs", value)
      end
      #### 
      # Set the value of the OfficerComp input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) Total compensation of first highly compensated officer.
      ###

      def set_OfficerComp(value)
        set_input("OfficerComp", value)
      end
      #### 
      # Set the value of the OrderNumber input for this Choreo. 
      # 
      # @param String - (conditional, string) This is an identifying number assigned to the contract.
      ###

      def set_OrderNumber(value)
        set_input("OrderNumber", value)
      end
      #### 
      # Set the value of the PopCity input for this Choreo. 
      # 
      # @param String - (conditional, string) The city in which work was performed.
      ###

      def set_PopCity(value)
        set_input("PopCity", value)
      end
      #### 
      # Set the value of the PopCountry input for this Choreo. 
      # 
      # @param String - (conditional, string) The two-letter country code for the country in which work was performed.
      ###

      def set_PopCountry(value)
        set_input("PopCountry", value)
      end
      #### 
      # Set the value of the PopDistrict input for this Choreo. 
      # 
      # @param String - (conditional, string) The Congressional District in which work was performed.
      ###

      def set_PopDistrict(value)
        set_input("PopDistrict", value)
      end
      #### 
      # Set the value of the PopState input for this Choreo. 
      # 
      # @param String - (conditional, string) The two-letter code for the state in which in which work was performed (the "place of performance").
      ###

      def set_PopState(value)
        set_input("PopState", value)
      end
      #### 
      # Set the value of the PopZip input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) The ZIP code in which work was performed.
      ###

      def set_PopZip(value)
        set_input("PopZip", value)
      end
      #### 
      # Set the value of the ProjectDescription input for this Choreo. 
      # 
      # @param String - (conditional, string) A description of the project under which the award is funded.
      ###

      def set_ProjectDescription(value)
        set_input("ProjectDescription", value)
      end
      #### 
      # Set the value of the RecipientDistrict input for this Choreo. 
      # 
      # @param String - (conditional, string) A 4-character numeric designation for the Congressional District within which a recipient or vendor is located. (For prime recipients and sub-recipients only.)
      ###

      def set_RecipientDistrict(value)
        set_input("RecipientDistrict", value)
      end
      #### 
      # Set the value of the RecipientName input for this Choreo. 
      # 
      # @param String - (conditional, string) The name of the recipient (prime recipient, sub-recipient, or vendor); value given is used as a text search.
      ###

      def set_RecipientName(value)
        set_input("RecipientName", value)
      end
      #### 
      # Set the value of the RecipientStateCode input for this Choreo. 
      # 
      # @param String - (conditional, string) The postal state abbreviation for the state in the recipient's address (can be for prime recipient, sub-recipient, or vendor).
      ###

      def set_RecipientStateCode(value)
        set_input("RecipientStateCode", value)
      end
      #### 
      # Set the value of the RecipientType input for this Choreo. 
      # 
      # @param String - (conditional, string) Recipient or vendor type: p = Prime recipients only, s = Sub-recipients only, v = Vendors only.
      ###

      def set_RecipientType(value)
        set_input("RecipientType", value)
      end
      #### 
      # Set the value of the RecipientZip input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) The ZIP code of the recipient (prime recipient, sub-recipient, or vendor).
      ###

      def set_RecipientZip(value)
        set_input("RecipientZip", value)
      end
      #### 
      # Set the value of the Sort input for this Choreo. 
      # 
      # @param String - (optional, string) Determines the order in which records are sorted. The default value sorts by Recipient/Vendor Name. See doc for all other values.
      ###

      def set_Sort(value)
        set_input("Sort", value)
      end
      #### 
      # Set the value of the TextSearch input for this Choreo. 
      # 
      # @param String - (conditional, string) Full text search.
      ###

      def set_TextSearch(value)
        set_input("TextSearch", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Recovery Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RecoveryResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FedSpending.org.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Recovery




end # module FedSpending