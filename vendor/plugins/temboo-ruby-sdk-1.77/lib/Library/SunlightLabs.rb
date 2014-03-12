require "temboo"

module SunlightLabs




  module CapitolWords



    ##############################################################################
    #
    # Dates
    #
    # Returns the popularity of a given phrase in the Congressional Record over time.
    #
    ##############################################################################

    class Dates < Choreography

      ####
      #  Create a new instance of the Dates Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/SunlightLabs/CapitolWords/Dates")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DatesInputSet
      ####
      def new_input_set()
        return DatesInputSet.new()
      end

      def make_result_set()
        return DatesResultSet.new()
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
        results = DatesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Dates
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DatesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Sunlight Labs.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the BioguideID input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to the member of Congress with the given Bioguide ID. The Bioguide ID of any current or past congressional member can be found at bioguide.congress.gov.
        ###

        def set_BioguideID(value)
          set_input("BioguideID", value)
        end
        #### 
        # Set the value of the Chamber input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to a particular chamber. Valid values: house, senate, extensions.
        ###

        def set_Chamber(value)
          set_input("Chamber", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, string) Show results for only the given date. Format: YYYY-MM-DD
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to those on or before the given date. Format: YYYY-MM-DD.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the Granularity input for this Choreo. 
        # 
        # @param String - (optional, string) The length of time covered by each result. Valid values: year, month, day. Defaults to day.
        ###

        def set_Granularity(value)
          set_input("Granularity", value)
        end
        #### 
        # Set the value of the MinCount input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Only returns results where mentions are at or above the supplied threshold.
        ###

        def set_MinCount(value)
          set_input("MinCount", value)
        end
        #### 
        # Set the value of the Party input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to members of congress from a given party. Valid values: R, D, I.
        ###

        def set_Party(value)
          set_input("Party", value)
        end
        #### 
        # Set the value of the Percentages input for this Choreo. 
        # 
        # @param String - (optional, string) Include the percentage of mentions versus total words in the result objects. Valid values: true, false. Defaults to false.
        ###

        def set_Percentages(value)
          set_input("Percentages", value)
        end
        #### 
        # Set the value of the Phrase input for this Choreo. 
        # 
        # @param String - (required, string) The phrase to search for.
        ###

        def set_Phrase(value)
          set_input("Phrase", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Output formats inlcude json and xml. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to those on or after the given date. Format: YYYY-MM-DD
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to members from a particular state. Format: 2-letter state abbreviation (e.g. MD, RI, NY)
        ###

        def set_State(value)
          set_input("State", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Dates Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DatesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CapitolWords.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Dates



    ##############################################################################
    #
    # FullTextSearch
    #
    # Returns a list of Congressional Record documents in which the given phrase appears.
    #
    ##############################################################################

    class FullTextSearch < Choreography

      ####
      #  Create a new instance of the FullTextSearch Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/SunlightLabs/CapitolWords/FullTextSearch")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FullTextSearchInputSet
      ####
      def new_input_set()
        return FullTextSearchInputSet.new()
      end

      def make_result_set()
        return FullTextSearchResultSet.new()
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
        results = FullTextSearchResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FullTextSearch
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FullTextSearchInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Sunlight Labs.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the BioguideID input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to the member of Congress with the given Bioguide ID. The Bioguide ID of any current or past congressonal member can be found at bioguide.congress.gov.
        ###

        def set_BioguideID(value)
          set_input("BioguideID", value)
        end
        #### 
        # Set the value of the CRPages input for this Choreo. 
        # 
        # @param String - (optional, string) The pages in the Congressional Record to search.
        ###

        def set_CRPages(value)
          set_input("CRPages", value)
        end
        #### 
        # Set the value of the Chamber input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to a particular chamber. Valid values: house, senate, extensions.
        ###

        def set_Chamber(value)
          set_input("Chamber", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, string) Show results for only the given date. Format: YYYY-MM-DD
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to those on or before the given date. Format: YYYY-MM-DD.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to show. 100 shown at a time.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Party input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to members of congress from a given party. Valid values: R, D, I.
        ###

        def set_Party(value)
          set_input("Party", value)
        end
        #### 
        # Set the value of the Phrase input for this Choreo. 
        # 
        # @param String - (required, string) A phrase to search the body of each Congressional Record document for. Either Phrase or Title inputs are required.
        ###

        def set_Phrase(value)
          set_input("Phrase", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Output formats inlcude json and xml. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to those on or after the given date. Format: YYYY-MM-DD
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to members from a particular state. Format: 2-letter state abbreviation (e.g. MD, RI, NY)
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A phrase to search the title of each Congressional Record document for. Either Phrase or Title are required.
        ###

        def set_Title(value)
          set_input("Title", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FullTextSearch Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FullTextSearchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CapitolWords.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FullTextSearch



    ##############################################################################
    #
    # Phrases
    #
    # Returns a list of the top phrases in the Congressional Record, which are searchable by day, month, state, or legislator.
    #
    ##############################################################################

    class Phrases < Choreography

      ####
      #  Create a new instance of the Phrases Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/SunlightLabs/CapitolWords/Phrases")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PhrasesInputSet
      ####
      def new_input_set()
        return PhrasesInputSet.new()
      end

      def make_result_set()
        return PhrasesResultSet.new()
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
        results = PhrasesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Phrases
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PhrasesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Sunlight Labs.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Chamber input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to a particular chamber. Valid values: house, senate, extensions.
        ###

        def set_Chamber(value)
          set_input("Chamber", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, string) Show results for only the given date. Format: YYYY-MM-DD
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to those on or before the given date. Format: YYYY-MM-DD.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the EntityType input for this Choreo. 
        # 
        # @param String - (required, string) The entity type to get top phrases for. Acceptable values: date, month, state, legislator.
        ###

        def set_EntityType(value)
          set_input("EntityType", value)
        end
        #### 
        # Set the value of the EntityValue input for this Choreo. 
        # 
        # @param String - (required, string) The value of the entity to get top phrases for. Acceptable formats as follows for each EntityType: (date) 2011-11-09, (month) 201111, (state) NY. For the legislator EntityType, enter Bioguide ID here.
        ###

        def set_EntityValue(value)
          set_input("EntityValue", value)
        end
        #### 
        # Set the value of the Length input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The length of the phrase, in words, to search for (up to 5).
        ###

        def set_Length(value)
          set_input("Length", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to show. 100 results are shown at a time. To see more results use the page parameter.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Party input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to members of congress from a given party. Valid values: R, D, I.
        ###

        def set_Party(value)
          set_input("Party", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Output formats inlcude json and xml. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) The metric and direction to sort by. Acceptable values: tfidf asc (default), tfidf desc, count asc, count desc.
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to those on or after the given date. Format: YYYY-MM-DD
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to members from a particular state. Format: 2-letter state abbreviation (e.g. MD, RI, NY)
        ###

        def set_State(value)
          set_input("State", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Phrases Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PhrasesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CapitolWords.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Phrases



    ##############################################################################
    #
    # TopPhraseSources
    #
    # Returns the top sources of a given phrase, which can be sorted either by legislator, state, party, bioguide ID, volume, or chambers.
    #
    ##############################################################################

    class TopPhraseSources < Choreography

      ####
      #  Create a new instance of the TopPhraseSources Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/SunlightLabs/CapitolWords/TopPhraseSources")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TopPhraseSourcesInputSet
      ####
      def new_input_set()
        return TopPhraseSourcesInputSet.new()
      end

      def make_result_set()
        return TopPhraseSourcesResultSet.new()
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
        results = TopPhraseSourcesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TopPhraseSources
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TopPhraseSourcesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Sunlight Labs.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Chamber input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to a particular chamber. Valid values: house, senate, extensions.
        ###

        def set_Chamber(value)
          set_input("Chamber", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, string) Show results for only the given date. Format: YYYY-MM-DD
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to those on or before the given date. Format: YYYY-MM-DD.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the Entity input for this Choreo. 
        # 
        # @param String - (required, string) The type of entity for which to return top results. Acceptable inputs: legislator, state, party, bioguide_id, volume, chamber. So 'legislator' returns the top legislators who say the given phrase.
        ###

        def set_Entity(value)
          set_input("Entity", value)
        end
        #### 
        # Set the value of the MinCount input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Only returns results where mentions are at or above the supplied threshold.
        ###

        def set_MinCount(value)
          set_input("MinCount", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to return.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Party input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to members of congress from a given party. Valid values: R, D, I.
        ###

        def set_Party(value)
          set_input("Party", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Phrase input for this Choreo. 
        # 
        # @param String - (required, string) The phrase to search for.
        ###

        def set_Phrase(value)
          set_input("Phrase", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Output formats inlcude json and xml. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) The metric on which to sort top results. Acceptable inputs: tfidf or count. Defaults to tfidf.
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to those on or after the given date. Format: YYYY-MM-DD
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to members from a particular state. Format: 2-letter state abbreviation (e.g. MD, RI, NY)
        ###

        def set_State(value)
          set_input("State", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TopPhraseSources Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TopPhraseSourcesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CapitolWords.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class TopPhraseSources




  end # module CapitolWords

  module Congress




    module Committee



      ##############################################################################
      #
      # GetCommittee
      #
      # Returns details for a committee by id.
      #
      ##############################################################################

      class GetCommittee < Choreography

        ####
        #  Create a new instance of the GetCommittee Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SunlightLabs/Congress/Committee/GetCommittee")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetCommitteeInputSet
        ####
        def new_input_set()
          return GetCommitteeInputSet.new()
        end

        def make_result_set()
          return GetCommitteeResultSet.new()
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
          results = GetCommitteeResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetCommittee
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetCommitteeInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by Sunlight Labs.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the ID input for this Choreo. 
          # 
          # @param String - (required, string) The id of a committee to return.
          ###

          def set_ID(value)
            set_input("ID", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetCommittee Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetCommitteeResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the Sunlight Congress API.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetCommittee



      ##############################################################################
      #
      # GetCommitteesByLegislator
      #
      # Returns a list of all committees that a specified member serves on, including subcommittes.
      #
      ##############################################################################

      class GetCommitteesByLegislator < Choreography

        ####
        #  Create a new instance of the GetCommitteesByLegislator Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SunlightLabs/Congress/Committee/GetCommitteesByLegislator")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetCommitteesByLegislatorInputSet
        ####
        def new_input_set()
          return GetCommitteesByLegislatorInputSet.new()
        end

        def make_result_set()
          return GetCommitteesByLegislatorResultSet.new()
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
          results = GetCommitteesByLegislatorResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetCommitteesByLegislator
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetCommitteesByLegislatorInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by Sunlight Labs.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the BioGuideID input for this Choreo. 
          # 
          # @param String - (required, string) A legislator's bioguide_id. Note that this can be retrieved by running the Choreos within the Congress.Legislator bundle.
          ###

          def set_BioGuideID(value)
            set_input("BioGuideID", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetCommitteesByLegislator Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetCommitteesByLegislatorResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the Sunlight Congress API.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetCommitteesByLegislator



      ##############################################################################
      #
      # GetList
      #
      # Returns a list of all committees for a given chamber along with their subcommittees.
      #
      ##############################################################################

      class GetList < Choreography

        ####
        #  Create a new instance of the GetList Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SunlightLabs/Congress/Committee/GetList")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetListInputSet
        ####
        def new_input_set()
          return GetListInputSet.new()
        end

        def make_result_set()
          return GetListResultSet.new()
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
          results = GetListResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetList
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetListInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by Sunlight Labs.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the Chamber input for this Choreo. 
          # 
          # @param String - (required, string) A chamber to list committees for. Valid values are: House, Senate, or Joint.
          ###

          def set_Chamber(value)
            set_input("Chamber", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetList Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetListResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the Sunlight Congress API.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetList




    end # module Committee

    module District



      ##############################################################################
      #
      # GetDistrictsByCoordinates
      #
      # Returns the district that a set of latitude/longitude coordinates falls within.
      #
      ##############################################################################

      class GetDistrictsByCoordinates < Choreography

        ####
        #  Create a new instance of the GetDistrictsByCoordinates Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SunlightLabs/Congress/District/GetDistrictsByCoordinates")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetDistrictsByCoordinatesInputSet
        ####
        def new_input_set()
          return GetDistrictsByCoordinatesInputSet.new()
        end

        def make_result_set()
          return GetDistrictsByCoordinatesResultSet.new()
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
          results = GetDistrictsByCoordinatesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetDistrictsByCoordinates
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetDistrictsByCoordinatesInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by Sunlight Labs.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the Latitude input for this Choreo. 
          # 
          # @param BigDecimal - (required, decimal) The latitude coordinate of the area that a legislator represents.
          ###

          def set_Latitude(value)
            set_input("Latitude", value)
          end
          #### 
          # Set the value of the Longitude input for this Choreo. 
          # 
          # @param BigDecimal - (required, decimal) The longitude coordinate of the area that a legislator represents.
          ###

          def set_Longitude(value)
            set_input("Longitude", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetDistrictsByCoordinates Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetDistrictsByCoordinatesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the Sunlight Congress API.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetDistrictsByCoordinates



      ##############################################################################
      #
      # GetDistrictsByZip
      #
      # Returns all districts that overlap the area for a given zip code.
      #
      ##############################################################################

      class GetDistrictsByZip < Choreography

        ####
        #  Create a new instance of the GetDistrictsByZip Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SunlightLabs/Congress/District/GetDistrictsByZip")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetDistrictsByZipInputSet
        ####
        def new_input_set()
          return GetDistrictsByZipInputSet.new()
        end

        def make_result_set()
          return GetDistrictsByZipResultSet.new()
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
          results = GetDistrictsByZipResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetDistrictsByZip
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetDistrictsByZipInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by Sunlight Labs.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
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
          # Set the value of the Zip input for this Choreo. 
          # 
          # @param String - (required, string) The zip code for the districts to return.
          ###

          def set_Zip(value)
            set_input("Zip", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetDistrictsByZip Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetDistrictsByZipResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the Sunlight Congress API.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetDistrictsByZip




    end # module District

    module Legislator



      ##############################################################################
      #
      # GetByCoordinates
      #
      # Returns all legislators that currently represent an area (district or state) that contains a given Geo point. 
      #
      ##############################################################################

      class GetByCoordinates < Choreography

        ####
        #  Create a new instance of the GetByCoordinates Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SunlightLabs/Congress/Legislator/GetByCoordinates")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetByCoordinatesInputSet
        ####
        def new_input_set()
          return GetByCoordinatesInputSet.new()
        end

        def make_result_set()
          return GetByCoordinatesResultSet.new()
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
          results = GetByCoordinatesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetByCoordinates
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetByCoordinatesInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by Sunlight Labs.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the Latitude input for this Choreo. 
          # 
          # @param BigDecimal - (required, decimal) The latitude coordinate of the area that a legislator represents.
          ###

          def set_Latitude(value)
            set_input("Latitude", value)
          end
          #### 
          # Set the value of the Longitude input for this Choreo. 
          # 
          # @param BigDecimal - (required, decimal) The longitude coordinate of the area that a legislator represents.
          ###

          def set_Longitude(value)
            set_input("Longitude", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetByCoordinates Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetByCoordinatesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the Sunlight Congress API.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetByCoordinates



      ##############################################################################
      #
      # GetByZip
      #
      # Returns all legislators that currently represent some portion of a given zipcode.
      #
      ##############################################################################

      class GetByZip < Choreography

        ####
        #  Create a new instance of the GetByZip Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SunlightLabs/Congress/Legislator/GetByZip")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetByZipInputSet
        ####
        def new_input_set()
          return GetByZipInputSet.new()
        end

        def make_result_set()
          return GetByZipResultSet.new()
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
          results = GetByZipResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetByZip
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetByZipInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by Sunlight Labs.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
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
          # Set the value of the Zip input for this Choreo. 
          # 
          # @param String - (required, string) A valid zip code used to return all legislators that currently represent some portion of a zip code.
          ###

          def set_Zip(value)
            set_input("Zip", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetByZip Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetByZipResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the Sunlight Congress API.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetByZip



      ##############################################################################
      #
      # GetLegislator
      #
      # Allows you to search for information on an individual legislator.
      #
      ##############################################################################

      class GetLegislator < Choreography

        ####
        #  Create a new instance of the GetLegislator Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SunlightLabs/Congress/Legislator/GetLegislator")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetLegislatorInputSet
        ####
        def new_input_set()
          return GetLegislatorInputSet.new()
        end

        def make_result_set()
          return GetLegislatorResultSet.new()
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
          results = GetLegislatorResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetLegislator
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetLegislatorInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by Sunlight Labs.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the AllLegislators input for this Choreo. 
          # 
          # @param Boolean - (optional, boolean) A boolean flag indicating to search for all legislators even when they are no longer in office.
          ###

          def set_AllLegislators(value)
            set_input("AllLegislators", value)
          end
          #### 
          # Set the value of the BioguideID input for this Choreo. 
          # 
          # @param String - (optional, string) The bioguide_id of the legislator to return.
          ###

          def set_BioguideID(value)
            set_input("BioguideID", value)
          end
          #### 
          # Set the value of the CRPID input for this Choreo. 
          # 
          # @param String - (optional, string) The crp_id associated with a legislator to return.
          ###

          def set_CRPID(value)
            set_input("CRPID", value)
          end
          #### 
          # Set the value of the District input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Narrows the search result by district number.
          ###

          def set_District(value)
            set_input("District", value)
          end
          #### 
          # Set the value of the FECID input for this Choreo. 
          # 
          # @param String - (optional, string) The fec_id associated with the legislator to return.
          ###

          def set_FECID(value)
            set_input("FECID", value)
          end
          #### 
          # Set the value of the FacebookID input for this Choreo. 
          # 
          # @param String - (optional, string) The facebook id of a legislator to return.
          ###

          def set_FacebookID(value)
            set_input("FacebookID", value)
          end
          #### 
          # Set the value of the FirstName input for this Choreo. 
          # 
          # @param String - (optional, string) The first name of a legislator to return.
          ###

          def set_FirstName(value)
            set_input("FirstName", value)
          end
          #### 
          # Set the value of the Gender input for this Choreo. 
          # 
          # @param String - (optional, string) Narrows the search result by gender.
          ###

          def set_Gender(value)
            set_input("Gender", value)
          end
          #### 
          # Set the value of the GovTrackID input for this Choreo. 
          # 
          # @param String - (optional, string) The govetrack_id associated with a legistlator to return.
          ###

          def set_GovTrackID(value)
            set_input("GovTrackID", value)
          end
          #### 
          # Set the value of the InOffice input for this Choreo. 
          # 
          # @param Boolean - (optional, boolean) Whether or not the individual is in office currently. Valid values are true or false.
          ###

          def set_InOffice(value)
            set_input("InOffice", value)
          end
          #### 
          # Set the value of the LastName input for this Choreo. 
          # 
          # @param String - (conditional, string) The last name of the legislator to return.
          ###

          def set_LastName(value)
            set_input("LastName", value)
          end
          #### 
          # Set the value of the Party input for this Choreo. 
          # 
          # @param String - (optional, string) Narrows the search result by party (i.e. "D" or "R").
          ###

          def set_Party(value)
            set_input("Party", value)
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
          # Set the value of the State input for this Choreo. 
          # 
          # @param String - (optional, string) A state abbreviation to narrow the search results.
          ###

          def set_State(value)
            set_input("State", value)
          end
          #### 
          # Set the value of the Title input for this Choreo. 
          # 
          # @param String - (optional, string) The title associated with the individual to return.
          ###

          def set_Title(value)
            set_input("Title", value)
          end
          #### 
          # Set the value of the TwitterID input for this Choreo. 
          # 
          # @param String - (optional, string) The twitter id of the legislator to return (note, this can be a twitter screen name).
          ###

          def set_TwitterID(value)
            set_input("TwitterID", value)
          end
          #### 
          # Set the value of the VoteSmartID input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The votesmart_id of a legislator to return.
          ###

          def set_VoteSmartID(value)
            set_input("VoteSmartID", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetLegislator Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetLegislatorResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the Sunlight Congress API.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetLegislator



      ##############################################################################
      #
      # GetList
      #
      # Returns a list of legislators that meet a specified search criteria.
      #
      ##############################################################################

      class GetList < Choreography

        ####
        #  Create a new instance of the GetList Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SunlightLabs/Congress/Legislator/GetList")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetListInputSet
        ####
        def new_input_set()
          return GetListInputSet.new()
        end

        def make_result_set()
          return GetListResultSet.new()
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
          results = GetListResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetList
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetListInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by Sunlight Labs.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the AllLegislators input for this Choreo. 
          # 
          # @param Boolean - (optional, boolean) A boolean flag indicating to search for all legislators even when they are no longer in office.
          ###

          def set_AllLegislators(value)
            set_input("AllLegislators", value)
          end
          #### 
          # Set the value of the BioguideID input for this Choreo. 
          # 
          # @param String - (optional, string) The bioguide_id of the legislator to return.
          ###

          def set_BioguideID(value)
            set_input("BioguideID", value)
          end
          #### 
          # Set the value of the CRPID input for this Choreo. 
          # 
          # @param String - (optional, string) The crp_id associated with a legislator to return.
          ###

          def set_CRPID(value)
            set_input("CRPID", value)
          end
          #### 
          # Set the value of the District input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Narrows the search result by district number.
          ###

          def set_District(value)
            set_input("District", value)
          end
          #### 
          # Set the value of the FECID input for this Choreo. 
          # 
          # @param String - (optional, string) The fec_id associated with the legislator to return.
          ###

          def set_FECID(value)
            set_input("FECID", value)
          end
          #### 
          # Set the value of the FacebookID input for this Choreo. 
          # 
          # @param String - (optional, string) The facebook id of a legislator to return.
          ###

          def set_FacebookID(value)
            set_input("FacebookID", value)
          end
          #### 
          # Set the value of the FirstName input for this Choreo. 
          # 
          # @param String - (optional, string) The first name of a legislator to return.
          ###

          def set_FirstName(value)
            set_input("FirstName", value)
          end
          #### 
          # Set the value of the Gender input for this Choreo. 
          # 
          # @param String - (optional, string) Narrows the search result by gender.
          ###

          def set_Gender(value)
            set_input("Gender", value)
          end
          #### 
          # Set the value of the GovTrackID input for this Choreo. 
          # 
          # @param String - (optional, string) The govetrack_id associated with a legistlator to return.
          ###

          def set_GovTrackID(value)
            set_input("GovTrackID", value)
          end
          #### 
          # Set the value of the InOffice input for this Choreo. 
          # 
          # @param Boolean - (optional, boolean) Whether or not the individual is in office currently. Valid values are true or false.
          ###

          def set_InOffice(value)
            set_input("InOffice", value)
          end
          #### 
          # Set the value of the LastName input for this Choreo. 
          # 
          # @param String - (optional, string) The last name of the legislator to return.
          ###

          def set_LastName(value)
            set_input("LastName", value)
          end
          #### 
          # Set the value of the Party input for this Choreo. 
          # 
          # @param String - (optional, string) Narrows the search result by party (i.e. "D" or "R").
          ###

          def set_Party(value)
            set_input("Party", value)
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
          # Set the value of the State input for this Choreo. 
          # 
          # @param String - (optional, string) A state abbreviation to narrow the search results.
          ###

          def set_State(value)
            set_input("State", value)
          end
          #### 
          # Set the value of the Title input for this Choreo. 
          # 
          # @param String - (optional, string) The title associated with the individual to return.
          ###

          def set_Title(value)
            set_input("Title", value)
          end
          #### 
          # Set the value of the TwitterID input for this Choreo. 
          # 
          # @param String - (optional, string) The twitter id of the legislator to return (note, this can be a twitter screen name).
          ###

          def set_TwitterID(value)
            set_input("TwitterID", value)
          end
          #### 
          # Set the value of the VoteSmartID input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The votesmart_id of a legislator to return.
          ###

          def set_VoteSmartID(value)
            set_input("VoteSmartID", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetList Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetListResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the Sunlight Congress API.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetList



      ##############################################################################
      #
      # Search
      #
      # Provides a fuzzy-matching text search of the legislators.
      #
      ##############################################################################

      class Search < Choreography

        ####
        #  Create a new instance of the Search Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SunlightLabs/Congress/Legislator/Search")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return SearchInputSet
        ####
        def new_input_set()
          return SearchInputSet.new()
        end

        def make_result_set()
          return SearchResultSet.new()
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
          results = SearchResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the Search
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class SearchInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by Sunlight Labs.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the AllLegislators input for this Choreo. 
          # 
          # @param Boolean - (optional, boolean) A boolean flag indicating to search for all legislators even when they are no longer in office.
          ###

          def set_AllLegislators(value)
            set_input("AllLegislators", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) A name to search for.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the Search Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class SearchResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the Sunlight Congress API.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class Search




    end # module Legislator

  end # module Congress

end # module SunlightLabs