require "temboo"

module DeptOfEducation




  module CollegesAndUniversities



    ##############################################################################
    #
    # DegreesConferred
    #
    # Returns a list of all degrees conferred by a given institution, along with detailed demographic data for each degree awarded.
    #
    ##############################################################################

    class DegreesConferred < Choreography

      ####
      #  Create a new instance of the DegreesConferred Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/DeptOfEducation/CollegesAndUniversities/DegreesConferred")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DegreesConferredInputSet
      ####
      def new_input_set()
        return DegreesConferredInputSet.new()
      end

      def make_result_set()
        return DegreesConferredResultSet.new()
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
        results = DegreesConferredResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DegreesConferred
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DegreesConferredInputSet < Choreography::InputSet

        #### 
        # Set the value of the InstitutionID input for this Choreo. 
        # 
        # @param String - (optional, string) Specify an institutionID to return data on a specific institution. These ids can be retrieved from the LookupSchool Choreo.
        ###

        def set_InstitutionID(value)
          set_input("InstitutionID", value)
        end
        #### 
        # Set the value of the MaxRows input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of rows returned. Defaults to 20.
        ###

        def set_MaxRows(value)
          set_input("MaxRows", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DegreesConferred Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DegreesConferredResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Data.ed.gov.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DegreesConferred



    ##############################################################################
    #
    # EducationalOfferings
    #
    # Returns educational offerings and admissions data for any college or university.
    #
    ##############################################################################

    class EducationalOfferings < Choreography

      ####
      #  Create a new instance of the EducationalOfferings Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/DeptOfEducation/CollegesAndUniversities/EducationalOfferings")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EducationalOfferingsInputSet
      ####
      def new_input_set()
        return EducationalOfferingsInputSet.new()
      end

      def make_result_set()
        return EducationalOfferingsResultSet.new()
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
        results = EducationalOfferingsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EducationalOfferings
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EducationalOfferingsInputSet < Choreography::InputSet

        #### 
        # Set the value of the InstitutionID input for this Choreo. 
        # 
        # @param String - (optional, string) Specify an institutionID to return data on a specific institution. These ids can be retrieved from the LookupSchool Choreo.
        ###

        def set_InstitutionID(value)
          set_input("InstitutionID", value)
        end
        #### 
        # Set the value of the MaxRows input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of rows returned. Defaults to 20.
        ###

        def set_MaxRows(value)
          set_input("MaxRows", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EducationalOfferings Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EducationalOfferingsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Data.ed.gov.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EducationalOfferings



    ##############################################################################
    #
    # EnrollmentDemographics
    #
    # Returns demographic data for colleges and universities.
    #
    ##############################################################################

    class EnrollmentDemographics < Choreography

      ####
      #  Create a new instance of the EnrollmentDemographics Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/DeptOfEducation/CollegesAndUniversities/EnrollmentDemographics")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EnrollmentDemographicsInputSet
      ####
      def new_input_set()
        return EnrollmentDemographicsInputSet.new()
      end

      def make_result_set()
        return EnrollmentDemographicsResultSet.new()
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
        results = EnrollmentDemographicsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EnrollmentDemographics
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EnrollmentDemographicsInputSet < Choreography::InputSet

        #### 
        # Set the value of the InstitutionID input for this Choreo. 
        # 
        # @param String - (optional, string) Specify an institutionID to return data on a specific institution. These ids can be retrieved from the LookupSchool Choreo.
        ###

        def set_InstitutionID(value)
          set_input("InstitutionID", value)
        end
        #### 
        # Set the value of the MaxRows input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of rows returned. Defaults to 20.
        ###

        def set_MaxRows(value)
          set_input("MaxRows", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EnrollmentDemographics Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EnrollmentDemographicsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Data.ed.gov.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EnrollmentDemographics



    ##############################################################################
    #
    # FinancialAid
    #
    # Returns student financial aid and net price information for colleges and universities.
    #
    ##############################################################################

    class FinancialAid < Choreography

      ####
      #  Create a new instance of the FinancialAid Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/DeptOfEducation/CollegesAndUniversities/FinancialAid")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FinancialAidInputSet
      ####
      def new_input_set()
        return FinancialAidInputSet.new()
      end

      def make_result_set()
        return FinancialAidResultSet.new()
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
        results = FinancialAidResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FinancialAid
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FinancialAidInputSet < Choreography::InputSet

        #### 
        # Set the value of the InstitutionID input for this Choreo. 
        # 
        # @param String - (optional, string) Specify an institutionID to return data on a specific institution. These ids can be retrieved from the LookupSchool Choreo.
        ###

        def set_InstitutionID(value)
          set_input("InstitutionID", value)
        end
        #### 
        # Set the value of the MaxRows input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of rows returned. Defaults to 20.
        ###

        def set_MaxRows(value)
          set_input("MaxRows", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FinancialAid Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FinancialAidResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Data.ed.gov.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FinancialAid



    ##############################################################################
    #
    # GraduationRates
    #
    # Returns gradutation statistics about colleges and univeristies.
    #
    ##############################################################################

    class GraduationRates < Choreography

      ####
      #  Create a new instance of the GraduationRates Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/DeptOfEducation/CollegesAndUniversities/GraduationRates")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GraduationRatesInputSet
      ####
      def new_input_set()
        return GraduationRatesInputSet.new()
      end

      def make_result_set()
        return GraduationRatesResultSet.new()
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
        results = GraduationRatesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GraduationRates
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GraduationRatesInputSet < Choreography::InputSet

        #### 
        # Set the value of the InstitutionID input for this Choreo. 
        # 
        # @param String - (optional, string) Specify an institutionID to return data on a specific institution. These ids can be retrieved from the LookupSchool Choreo.
        ###

        def set_InstitutionID(value)
          set_input("InstitutionID", value)
        end
        #### 
        # Set the value of the MaxRows input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of rows returned. Defaults to 20.
        ###

        def set_MaxRows(value)
          set_input("MaxRows", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GraduationRates Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GraduationRatesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Data.ed.gov.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GraduationRates



    ##############################################################################
    #
    # LookupMajors
    #
    # Allows you to search for majors by id or keyword.
    #
    ##############################################################################

    class LookupMajors < Choreography

      ####
      #  Create a new instance of the LookupMajors Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/DeptOfEducation/CollegesAndUniversities/LookupMajors")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LookupMajorsInputSet
      ####
      def new_input_set()
        return LookupMajorsInputSet.new()
      end

      def make_result_set()
        return LookupMajorsResultSet.new()
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
        results = LookupMajorsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LookupMajors
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LookupMajorsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Keyword input for this Choreo. 
        # 
        # @param String - (conditional, string) A keyword search term to lookup majors (i.e. Agriculture).
        ###

        def set_Keyword(value)
          set_input("Keyword", value)
        end
        #### 
        # Set the value of the MajorID input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The unique id associated with a major to return (i.e. 01.0000). Note that these ids are also returned in the output of the DegreesConferred Choreo.
        ###

        def set_MajorID(value)
          set_input("MajorID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LookupMajors Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LookupMajorsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The results from the search in XML or JSON format.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LookupMajors



    ##############################################################################
    #
    # LookupSchool
    #
    # Allows you to search the U.S. Department of Education college and univeristy listings.
    #
    ##############################################################################

    class LookupSchool < Choreography

      ####
      #  Create a new instance of the LookupSchool Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/DeptOfEducation/CollegesAndUniversities/LookupSchool")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LookupSchoolInputSet
      ####
      def new_input_set()
        return LookupSchoolInputSet.new()
      end

      def make_result_set()
        return LookupSchoolResultSet.new()
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
        results = LookupSchoolResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LookupSchool
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LookupSchoolInputSet < Choreography::InputSet

        #### 
        # Set the value of the Keyword input for this Choreo. 
        # 
        # @param String - (required, string) Used to perform a full text search on the data set. For example, you can search for an institution's name or an institution's ID.
        ###

        def set_Keyword(value)
          set_input("Keyword", value)
        end
        #### 
        # Set the value of the MaxRows input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of rows returned. Defaults to 20.
        ###

        def set_MaxRows(value)
          set_input("MaxRows", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LookupSchool Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LookupSchoolResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Data.ed.gov.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LookupSchool



    ##############################################################################
    #
    # MatchIDs
    #
    # 
    #
    ##############################################################################

    class MatchIDs < Choreography

      ####
      #  Create a new instance of the MatchIDs Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/DeptOfEducation/CollegesAndUniversities/MatchIDs")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MatchIDsInputSet
      ####
      def new_input_set()
        return MatchIDsInputSet.new()
      end

      def make_result_set()
        return MatchIDsResultSet.new()
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
        results = MatchIDsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MatchIDs
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MatchIDsInputSet < Choreography::InputSet

        #### 
        # Set the value of the XML input for this Choreo. 
        # 
        # @param String - (required, xml) 
        ###

        def set_XML(value)
          set_input("XML", value)
        end
        #### 
        # Set the value of the Search input for this Choreo. 
        # 
        # @param String - (required, any) 
        ###

        def set_Search(value)
          set_input("Search", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MatchIDs Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MatchIDsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The filtered response after matching institutionIDs.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class MatchIDs



    ##############################################################################
    #
    # StudentCharges
    #
    # Returns tuition information for colleges and universities.
    #
    ##############################################################################

    class StudentCharges < Choreography

      ####
      #  Create a new instance of the StudentCharges Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/DeptOfEducation/CollegesAndUniversities/StudentCharges")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return StudentChargesInputSet
      ####
      def new_input_set()
        return StudentChargesInputSet.new()
      end

      def make_result_set()
        return StudentChargesResultSet.new()
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
        results = StudentChargesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the StudentCharges
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class StudentChargesInputSet < Choreography::InputSet

        #### 
        # Set the value of the InstitutionID input for this Choreo. 
        # 
        # @param String - (optional, string) Specify an institutionID to return data on a specific institution. These ids can be retrieved from the LookupSchool Choreo.
        ###

        def set_InstitutionID(value)
          set_input("InstitutionID", value)
        end
        #### 
        # Set the value of the MaxRows input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of rows returned. Defaults to 20.
        ###

        def set_MaxRows(value)
          set_input("MaxRows", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the StudentCharges Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class StudentChargesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Data.ed.gov.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class StudentCharges




  end # module CollegesAndUniversities

  module ElementaryAndSecondary



    ##############################################################################
    #
    # LookupSchool
    #
    # Allows you to search the U.S. Department of Education elementary and secondary school listings which includes general school information, demographic data, and location data.
    #
    ##############################################################################

    class LookupSchool < Choreography

      ####
      #  Create a new instance of the LookupSchool Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/DeptOfEducation/ElementaryAndSecondary/LookupSchool")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LookupSchoolInputSet
      ####
      def new_input_set()
        return LookupSchoolInputSet.new()
      end

      def make_result_set()
        return LookupSchoolResultSet.new()
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
        results = LookupSchoolResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LookupSchool
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LookupSchoolInputSet < Choreography::InputSet

        #### 
        # Set the value of the Keyword input for this Choreo. 
        # 
        # @param String - (required, string) Used to perform a full text search on the data set. For example, you can search for a school name or a school's unique ID.
        ###

        def set_Keyword(value)
          set_input("Keyword", value)
        end
        #### 
        # Set the value of the MaxRows input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of rows returned. Defaults to 20.
        ###

        def set_MaxRows(value)
          set_input("MaxRows", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LookupSchool Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LookupSchoolResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Data.ed.gov.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LookupSchool



    ##############################################################################
    #
    # MatchIDs
    #
    # 
    #
    ##############################################################################

    class MatchIDs < Choreography

      ####
      #  Create a new instance of the MatchIDs Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/DeptOfEducation/ElementaryAndSecondary/MatchIDs")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MatchIDsInputSet
      ####
      def new_input_set()
        return MatchIDsInputSet.new()
      end

      def make_result_set()
        return MatchIDsResultSet.new()
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
        results = MatchIDsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MatchIDs
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MatchIDsInputSet < Choreography::InputSet

        #### 
        # Set the value of the XML input for this Choreo. 
        # 
        # @param String - (required, xml) 
        ###

        def set_XML(value)
          set_input("XML", value)
        end
        #### 
        # Set the value of the Search input for this Choreo. 
        # 
        # @param String - (required, any) 
        ###

        def set_Search(value)
          set_input("Search", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MatchIDs Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MatchIDsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The filtered response after matching institutionIDs.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class MatchIDs




  end # module ElementaryAndSecondary

end # module DeptOfEducation