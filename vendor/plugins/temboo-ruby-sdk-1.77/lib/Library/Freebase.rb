require "temboo"

module Freebase



  ##############################################################################
  #
  # Image
  #
  # Generates a thumbnail for an image from the content database to the requested size. 
  #
  ##############################################################################

  class Image < Choreography

    ####
    #  Create a new instance of the Image Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Freebase/Image")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ImageInputSet
    ####
    def new_input_set()
      return ImageInputSet.new()
    end

    def make_result_set()
      return ImageResultSet.new()
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
      results = ImageResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Image
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ImageInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Freebase.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the FallbackID input for this Choreo. 
      # 
      # @param String - (optional, string) Use this second (fallback) image ID, if the primary ID is not available.
      ###

      def set_FallbackID(value)
        set_input("FallbackID", value)
      end
      #### 
      # Set the value of the ID input for this Choreo. 
      # 
      # @param String - (required, string) Enter the ID of the entity for which description information will be retrieved. IDs and MIDs can be obtained by running the Search Choreo in this bundle. Example input: /en/bob_dylan
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the MaximumHeight input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Enter the desired maximum image height in pixels. Integers must be in the following range: (0 --> 4,096)
      ###

      def set_MaximumHeight(value)
        set_input("MaximumHeight", value)
      end
      #### 
      # Set the value of the MaximumWidth input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Enter the desired maximum image width in pixels. Integers must be in the following range: (0 --> 4,096)
      ###

      def set_MaximumWidth(value)
        set_input("MaximumWidth", value)
      end
      #### 
      # Set the value of the Mode input for this Choreo. 
      # 
      # @param String - (optional, string) Specify the method used to crop or scale images.  Available methods include: fill, fillcrop, fillcropmid, fit.
      ###

      def set_Mode(value)
        set_input("Mode", value)
      end
      #### 
      # Set the value of the Pad input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Enter 0, or 1 to specify whether the provided image should be padded to the requested dimensions.
      ###

      def set_Pad(value)
        set_input("Pad", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Image Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ImageResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from the Freebase Image API returns the thumbnail in base 64-encoded  format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Image



  ##############################################################################
  #
  # MQLRead
  #
  # Search the Freebase dataset using the Metaweb query language (MQL).
  #
  ##############################################################################

  class MQLRead < Choreography

    ####
    #  Create a new instance of the MQLRead Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Freebase/MQLRead")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return MQLReadInputSet
    ####
    def new_input_set()
      return MQLReadInputSet.new()
    end

    def make_result_set()
      return MQLReadResultSet.new()
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
      results = MQLReadResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the MQLRead
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class MQLReadInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Freebase.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AsOfTime input for this Choreo. 
      # 
      # @param String - (optional, string) Run a query as it would have run at a specific point in time. Timestamps must be entered in the following format: 2007-01-09T22, or 2007-02.
      ###

      def set_AsOfTime(value)
        set_input("AsOfTime", value)
      end
      #### 
      # Set the value of the Cost input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) If cost is set to true, a key is returned in the results, indicating the computational cost incurred by lower levels of the service. Default value: false
      ###

      def set_Cost(value)
        set_input("Cost", value)
      end
      #### 
      # Set the value of the Cursor input for this Choreo. 
      # 
      # @param String - (optional, string) If set. results can be paged.  See examples at: http://wiki.freebase.com/wiki/MQL_Read_Service
      ###

      def set_Cursor(value)
        set_input("Cursor", value)
      end
      #### 
      # Set the value of the EscapeHTMLResults input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Specify whether html results are to be escaped or not.  Default is set to: true.
      ###

      def set_EscapeHTMLResults(value)
        set_input("EscapeHTMLResults", value)
      end
      #### 
      # Set the value of the Indent input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Specify whether the JSON results should be indented, or not. Enter true, or false. Default: false. Range of values: 0-10.
      ###

      def set_Indent(value)
        set_input("Indent", value)
      end
      #### 
      # Set the value of the Language input for this Choreo. 
      # 
      # @param String - (optional, string) Specify the language in which the searches will be performed.  Multiple languages can be specified. Default is: /lang/en
      ###

      def set_Language(value)
        set_input("Language", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (required, string) Enter a search query  in a valid MQL JSON format.
      ###

      def set_Query(value)
        set_input("Query", value)
      end
      #### 
      # Set the value of the UniqenessFailure input for this Choreo. 
      # 
      # @param String - (optional, string) Specify how MQL responds to uniqueness failures. Enter hard, or soft.  Default is set to: hard.
      ###

      def set_UniqenessFailure(value)
        set_input("UniqenessFailure", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the MQLRead Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class MQLReadResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from the Freebase MQL Read API in JSON format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class MQLRead



  ##############################################################################
  #
  # Search
  #
  # Search the Freebase dataset.
  #
  ##############################################################################

  class Search < Choreography

    ####
    #  Create a new instance of the Search Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Freebase/Search")
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
      # @param String - (required, string) The API Key provided by Freebase.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Domain input for this Choreo. 
      # 
      # @param String - (optional, string) Enter a comma separated list of domain IDs.
      ###

      def set_Domain(value)
        set_input("Domain", value)
      end
      #### 
      # Set the value of the EscapeHTMLResults input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Specify whether html results are to be escaped or not.  Default is set to: true.
      ###

      def set_EscapeHTMLResults(value)
        set_input("EscapeHTMLResults", value)
      end
      #### 
      # Set the value of the Exact input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) If set to true, the search query will match only the name and keys exactly. No normalization of any kind will be performed at indexing and query time.Default is set to: false.
      ###

      def set_Exact(value)
        set_input("Exact", value)
      end
      #### 
      # Set the value of the Filter input for this Choreo. 
      # 
      # @param String - (optional, string) Specify an s-expression to filter search results. For more info, see: http://wiki.freebase.com/wiki/Search_Cookbook
      ###

      def set_Filter(value)
        set_input("Filter", value)
      end
      #### 
      # Set the value of the Indent input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Specify whether the JSON results should be indented, or not. Enter true, or false. Default: false.
      ###

      def set_Indent(value)
        set_input("Indent", value)
      end
      #### 
      # Set the value of the Language input for this Choreo. 
      # 
      # @param String - (optional, string) Specify the language in which the searches will be performed.  Default is set to English: /lang/en
      ###

      def set_Language(value)
        set_input("Language", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the number of results to be retrieved.  Default: 20.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the MQLOutput input for this Choreo. 
      # 
      # @param String - (optional, string) Enter an MQL query to extract entity information.
      ###

      def set_MQLOutput(value)
        set_input("MQLOutput", value)
      end
      #### 
      # Set the value of the Prefixed input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Specify whether or not search queries are to match results by name prefix. Default value: false.
      ###

      def set_Prefixed(value)
        set_input("Prefixed", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (required, string) Enter a search query.
      ###

      def set_Query(value)
        set_input("Query", value)
      end
      #### 
      # Set the value of the Start input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Enter a value to page through results.  Default is set to 0.
      ###

      def set_Start(value)
        set_input("Start", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) Enter a comma-seperated list of type IDs.
      ###

      def set_Type(value)
        set_input("Type", value)
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
    	# @return String - The response from the Freebase Search API in JSON format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Search



  ##############################################################################
  #
  # Text
  #
  # Access Freebase topic and schema descriptions.
  #
  ##############################################################################

  class Text < Choreography

    ####
    #  Create a new instance of the Text Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Freebase/Text")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return TextInputSet
    ####
    def new_input_set()
      return TextInputSet.new()
    end

    def make_result_set()
      return TextResultSet.new()
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
      results = TextResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Text
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class TextInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Freebase.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Specify the retrieved results format.  Enter, html, plan, or raw. Default is set to: raw
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the ID input for this Choreo. 
      # 
      # @param String - (required, string) Enter the ID of the entity for which description information will be retrieved. IDs and MIDs can be obtained by running the Search Choreo in this bundle. Example input: /en/bob_dylan
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the Language input for this Choreo. 
      # 
      # @param String - (optional, string) Specify the language in which the searches will be performed. Default is set to English: /lang/en
      ###

      def set_Language(value)
        set_input("Language", value)
      end
      #### 
      # Set the value of the MaximumLength input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Enter the max number of characters to return with the rage of 0 - 4,294,967,295. Valid only for plan Format. Default is to: 200
      ###

      def set_MaximumLength(value)
        set_input("MaximumLength", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Text Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class TextResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from the Freebase Text API in JSON.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Text




end # module Freebase