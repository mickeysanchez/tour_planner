require "temboo"

module Bitly




  module LinkMetrics



    ##############################################################################
    #
    # GetClicksForLink
    #
    # Returns the number of clicks on a single bitly link.
    #
    ##############################################################################

    class GetClicksForLink < Choreography

      ####
      #  Create a new instance of the GetClicksForLink Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Bitly/LinkMetrics/GetClicksForLink")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetClicksForLinkInputSet
      ####
      def new_input_set()
        return GetClicksForLinkInputSet.new()
      end

      def make_result_set()
        return GetClicksForLinkResultSet.new()
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
        results = GetClicksForLinkResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetClicksForLink
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetClicksForLinkInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The oAuth access token provided by Bitly.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The result limit. Defaults to 100. Range is 1 to 1000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Link input for this Choreo. 
        # 
        # @param String - (required, string) A bitly link.
        ###

        def set_Link(value)
          set_input("Link", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Rollup input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Accepted values are true or false. When set to true, this returns data for multiple units rolled up to a single result instead of a separate value for each period of time.
        ###

        def set_Rollup(value)
          set_input("Rollup", value)
        end
        #### 
        # Set the value of the Timestamp input for this Choreo. 
        # 
        # @param String - (optional, date) An epoch timestamp, indicating the most recent time for which to pull metrics.
        ###

        def set_Timestamp(value)
          set_input("Timestamp", value)
        end
        #### 
        # Set the value of the Timezone input for this Choreo. 
        # 
        # @param String - (optional, string) An integer hour offset from UTC (-12..12), or a timezone string. Defaults to "America/New_York".
        ###

        def set_Timezone(value)
          set_input("Timezone", value)
        end
        #### 
        # Set the value of the UnitName input for this Choreo. 
        # 
        # @param String - (optional, string) The unit of time that corresponds to query you want to run. Accepted values are: minute, hour, day, week, month, and day. Defaults to "day".
        ###

        def set_UnitName(value)
          set_input("UnitName", value)
        end
        #### 
        # Set the value of the UnitValue input for this Choreo. 
        # 
        # @param Integer - (optional, integer) An integer representing the amount of time to query for. Corresponds to the UnitName input. Defaults to -1 indicating to return all units of time.
        ###

        def set_UnitValue(value)
          set_input("UnitValue", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetClicksForLink Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetClicksForLinkResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Bitly.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetClicksForLink



    ##############################################################################
    #
    # GetCountryMetricsForLink
    #
    # Returns metrics about the countries referring click traffic to a single bitly link.
    #
    ##############################################################################

    class GetCountryMetricsForLink < Choreography

      ####
      #  Create a new instance of the GetCountryMetricsForLink Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Bitly/LinkMetrics/GetCountryMetricsForLink")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCountryMetricsForLinkInputSet
      ####
      def new_input_set()
        return GetCountryMetricsForLinkInputSet.new()
      end

      def make_result_set()
        return GetCountryMetricsForLinkResultSet.new()
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
        results = GetCountryMetricsForLinkResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCountryMetricsForLink
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCountryMetricsForLinkInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The oAuth access token provided by Bitly.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The result limit. Defaults to 100. Range is 1 to 1000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Link input for this Choreo. 
        # 
        # @param String - (required, string) A bitly link.
        ###

        def set_Link(value)
          set_input("Link", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Rollup input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Accepted values are true or false. When set to true, this returns data for multiple units rolled up to a single result instead of a separate value for each period of time.
        ###

        def set_Rollup(value)
          set_input("Rollup", value)
        end
        #### 
        # Set the value of the Timestamp input for this Choreo. 
        # 
        # @param String - (optional, date) An epoch timestamp, indicating the most recent time for which to pull metrics.
        ###

        def set_Timestamp(value)
          set_input("Timestamp", value)
        end
        #### 
        # Set the value of the Timezone input for this Choreo. 
        # 
        # @param String - (optional, string) An integer hour offset from UTC (-12..12), or a timezone string. Defaults to "America/New_York".
        ###

        def set_Timezone(value)
          set_input("Timezone", value)
        end
        #### 
        # Set the value of the UnitName input for this Choreo. 
        # 
        # @param String - (optional, string) The unit of time that corresponds to query you want to run. Accepted values are: minute, hour, day, week, month, and day. Defaults to "day".
        ###

        def set_UnitName(value)
          set_input("UnitName", value)
        end
        #### 
        # Set the value of the UnitValue input for this Choreo. 
        # 
        # @param Integer - (optional, integer) An integer representing the amount of time to query for. Corresponds to the UnitName input. Defaults to -1 indicating to return all units of time.
        ###

        def set_UnitValue(value)
          set_input("UnitValue", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCountryMetricsForLink Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCountryMetricsForLinkResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Bitly.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCountryMetricsForLink



    ##############################################################################
    #
    # GetEncodersCount
    #
    # Returns the count of users who have shortened a specified bitly link.
    #
    ##############################################################################

    class GetEncodersCount < Choreography

      ####
      #  Create a new instance of the GetEncodersCount Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Bitly/LinkMetrics/GetEncodersCount")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetEncodersCountInputSet
      ####
      def new_input_set()
        return GetEncodersCountInputSet.new()
      end

      def make_result_set()
        return GetEncodersCountResultSet.new()
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
        results = GetEncodersCountResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetEncodersCount
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetEncodersCountInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The oAuth access token provided by Bitly.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Link input for this Choreo. 
        # 
        # @param String - (required, string) A bitly link.
        ###

        def set_Link(value)
          set_input("Link", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetEncodersCount Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetEncodersCountResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Bitly.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetEncodersCount



    ##############################################################################
    #
    # GetReferrers
    #
    # Returns metrics about the pages referring click traffic to a single bitly link.
    #
    ##############################################################################

    class GetReferrers < Choreography

      ####
      #  Create a new instance of the GetReferrers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Bitly/LinkMetrics/GetReferrers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetReferrersInputSet
      ####
      def new_input_set()
        return GetReferrersInputSet.new()
      end

      def make_result_set()
        return GetReferrersResultSet.new()
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
        results = GetReferrersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetReferrers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetReferrersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The oAuth access token provided by Bitly.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The result limit. Defaults to 100. Range is 1 to 1000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Link input for this Choreo. 
        # 
        # @param String - (required, string) A bitly link.
        ###

        def set_Link(value)
          set_input("Link", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Rollup input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Accepted values are true or false. When set to true, this returns data for multiple units rolled up to a single result instead of a separate value for each period of time.
        ###

        def set_Rollup(value)
          set_input("Rollup", value)
        end
        #### 
        # Set the value of the Timestamp input for this Choreo. 
        # 
        # @param String - (optional, date) An epoch timestamp, indicating the most recent time for which to pull metrics.
        ###

        def set_Timestamp(value)
          set_input("Timestamp", value)
        end
        #### 
        # Set the value of the Timezone input for this Choreo. 
        # 
        # @param String - (optional, string) An integer hour offset from UTC (-12..12), or a timezone string. Defaults to "America/New_York".
        ###

        def set_Timezone(value)
          set_input("Timezone", value)
        end
        #### 
        # Set the value of the UnitName input for this Choreo. 
        # 
        # @param String - (optional, string) The unit of time that corresponds to query you want to run. Accepted values are: minute, hour, day, week, month, and day. Defaults to "day".
        ###

        def set_UnitName(value)
          set_input("UnitName", value)
        end
        #### 
        # Set the value of the UnitValue input for this Choreo. 
        # 
        # @param Integer - (optional, integer) An integer representing the amount of time to query for. Corresponds to the UnitName input. Defaults to -1 indicating to return all units of time.
        ###

        def set_UnitValue(value)
          set_input("UnitValue", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetReferrers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetReferrersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Bitly.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetReferrers



    ##############################################################################
    #
    # GetReferringDomains
    #
    # Returns metrics about the domains referring click traffic to a single bitly link.
    #
    ##############################################################################

    class GetReferringDomains < Choreography

      ####
      #  Create a new instance of the GetReferringDomains Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Bitly/LinkMetrics/GetReferringDomains")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetReferringDomainsInputSet
      ####
      def new_input_set()
        return GetReferringDomainsInputSet.new()
      end

      def make_result_set()
        return GetReferringDomainsResultSet.new()
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
        results = GetReferringDomainsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetReferringDomains
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetReferringDomainsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The oAuth access token provided by Bitly.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The result limit. Defaults to 100. Range is 1 to 1000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Link input for this Choreo. 
        # 
        # @param String - (required, string) A bitly link.
        ###

        def set_Link(value)
          set_input("Link", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Rollup input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Accepted values are true or false. When set to true, this returns data for multiple units rolled up to a single result instead of a separate value for each period of time.
        ###

        def set_Rollup(value)
          set_input("Rollup", value)
        end
        #### 
        # Set the value of the Timestamp input for this Choreo. 
        # 
        # @param String - (optional, date) An epoch timestamp, indicating the most recent time for which to pull metrics.
        ###

        def set_Timestamp(value)
          set_input("Timestamp", value)
        end
        #### 
        # Set the value of the Timezone input for this Choreo. 
        # 
        # @param String - (optional, string) An integer hour offset from UTC (-12..12), or a timezone string. Defaults to "America/New_York".
        ###

        def set_Timezone(value)
          set_input("Timezone", value)
        end
        #### 
        # Set the value of the UnitName input for this Choreo. 
        # 
        # @param String - (optional, string) The unit of time that corresponds to query you want to run. Accepted values are: minute, hour, day, week, month, and day. Defaults to "day".
        ###

        def set_UnitName(value)
          set_input("UnitName", value)
        end
        #### 
        # Set the value of the UnitValue input for this Choreo. 
        # 
        # @param Integer - (optional, integer) An integer representing the amount of time to query for. Corresponds to the UnitName input. Defaults to -1 indicating to return all units of time.
        ###

        def set_UnitValue(value)
          set_input("UnitValue", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetReferringDomains Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetReferringDomainsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Bitly.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetReferringDomains




  end # module LinkMetrics

  module Links



    ##############################################################################
    #
    # ExpandURL
    #
    # Returns the target (long) URL given a shortened bitly URL.
    #
    ##############################################################################

    class ExpandURL < Choreography

      ####
      #  Create a new instance of the ExpandURL Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Bitly/Links/ExpandURL")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ExpandURLInputSet
      ####
      def new_input_set()
        return ExpandURLInputSet.new()
      end

      def make_result_set()
        return ExpandURLResultSet.new()
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
        results = ExpandURLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ExpandURL
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ExpandURLInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The oAuth access token provided by Bitly.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Defaults to simple "txt" format which will just return the expanded URL. "json" and "xml" are also supported.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ShortURL input for this Choreo. 
        # 
        # @param String - (required, string) One or more bitly links.
        ###

        def set_ShortURL(value)
          set_input("ShortURL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ExpandURL Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ExpandURLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Bitly.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ExpandURL



    ##############################################################################
    #
    # GetLinkInfo
    #
    # Returns the page title for a given bitly link.
    #
    ##############################################################################

    class GetLinkInfo < Choreography

      ####
      #  Create a new instance of the GetLinkInfo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Bitly/Links/GetLinkInfo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLinkInfoInputSet
      ####
      def new_input_set()
        return GetLinkInfoInputSet.new()
      end

      def make_result_set()
        return GetLinkInfoResultSet.new()
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
        results = GetLinkInfoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLinkInfo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLinkInfoInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The oAuth access token provided by Bitly.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ShortURL input for this Choreo. 
        # 
        # @param String - (required, string) One or more bitly links.
        ###

        def set_ShortURL(value)
          set_input("ShortURL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLinkInfo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLinkInfoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Bitly.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLinkInfo



    ##############################################################################
    #
    # LinkLookup
    #
    # Used to lookup a bitly link with a given long URL.
    #
    ##############################################################################

    class LinkLookup < Choreography

      ####
      #  Create a new instance of the LinkLookup Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Bitly/Links/LinkLookup")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LinkLookupInputSet
      ####
      def new_input_set()
        return LinkLookupInputSet.new()
      end

      def make_result_set()
        return LinkLookupResultSet.new()
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
        results = LinkLookupResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LinkLookup
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LinkLookupInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The oAuth access token provided by Bitly.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (required, string) One or more long URLs to lookup.
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LinkLookup Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LinkLookupResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Bitly.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LinkLookup



    ##############################################################################
    #
    # ShortenURL
    #
    # Returns a shortened URL for a long URL that you provide.
    #
    ##############################################################################

    class ShortenURL < Choreography

      ####
      #  Create a new instance of the ShortenURL Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Bitly/Links/ShortenURL")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShortenURLInputSet
      ####
      def new_input_set()
        return ShortenURLInputSet.new()
      end

      def make_result_set()
        return ShortenURLResultSet.new()
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
        results = ShortenURLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShortenURL
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShortenURLInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The oAuth access token provided by Bitly.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the LongURL input for this Choreo. 
        # 
        # @param String - (required, string) The long url that you want to shorten.
        ###

        def set_LongURL(value)
          set_input("LongURL", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Defaults to simple "txt" format which will just return the shortened URL. "json" and "xml" are also supported.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShortenURL Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShortenURLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Bitly.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShortenURL




  end # module Links

  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a Bitly access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Bitly/OAuth/FinalizeOAuth")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FinalizeOAuthInputSet
      ####
      def new_input_set()
        return FinalizeOAuthInputSet.new()
      end

      def make_result_set()
        return FinalizeOAuthResultSet.new()
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
        results = FinalizeOAuthResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FinalizeOAuth
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FinalizeOAuthInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the AppKeyName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyName(value)
          set_input("AppKeyName", value)
        end
        #### 
        # Set the value of the AppKeyValue input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyValue(value)
          set_input("AppKeyValue", value)
        end
        #### 
        # Set the value of the CallbackID input for this Choreo. 
        # 
        # @param String - (required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the authorization code after the user authorizes.
        ###

        def set_CallbackID(value)
          set_input("CallbackID", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by Bitly after registering your application.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by Bitly after registering your application.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Timeout input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The amount of time (in seconds) to poll your Temboo callback URL to see if your app's user has allowed or denied the request for access. Defaults to 20. Max is 60.
        ###

        def set_Timeout(value)
          set_input("Timeout", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FinalizeOAuth Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FinalizeOAuthResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Login" output from this Choreo execution
      	#
      	# @return String - (string) The Bitly username associated with the AccessToken.
      	####
      	def get_Login()
      	  return @outputs["Login"]
      	end
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The access token for the user that has granted access to your application.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      end

    end # class FinalizeOAuth



    ##############################################################################
    #
    # InitializeOAuth
    #
    # Generates an authorization URL that an application can use to complete the first step in the OAuth process.
    #
    ##############################################################################

    class InitializeOAuth < Choreography

      ####
      #  Create a new instance of the InitializeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Bitly/OAuth/InitializeOAuth")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return InitializeOAuthInputSet
      ####
      def new_input_set()
        return InitializeOAuthInputSet.new()
      end

      def make_result_set()
        return InitializeOAuthResultSet.new()
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
        results = InitializeOAuthResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the InitializeOAuth
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class InitializeOAuthInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the AppKeyName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyName(value)
          set_input("AppKeyName", value)
        end
        #### 
        # Set the value of the AppKeyValue input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyValue(value)
          set_input("AppKeyValue", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by Bitly after registering your application.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the CustomCallbackID input for this Choreo. 
        # 
        # @param String - (optional, string) A unique identifier that you can pass to eliminate the need to wait for a Temboo generated CallbackID. Callback identifiers may only contain numbers, letters, periods, and hyphens.
        ###

        def set_CustomCallbackID(value)
          set_input("CustomCallbackID", value)
        end
        #### 
        # Set the value of the ForwardingURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Temboo will redirect your users to after they grant access to your application. This should include the "https://" or "http://" prefix and be a fully qualified URL.
        ###

        def set_ForwardingURL(value)
          set_input("ForwardingURL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the InitializeOAuth Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class InitializeOAuthResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "AuthorizationURL" output from this Choreo execution
      	#
      	# @return String - (string) The authorization URL that the application's user needs to go to in order to grant access to your application.
      	####
      	def get_AuthorizationURL()
      	  return @outputs["AuthorizationURL"]
      	end
      	####
      	# Retrieve the value for the "CallbackID" output from this Choreo execution
      	#
      	# @return String - (string) An ID used to retrieve the callback data that Temboo stores once your application's user authorizes.
      	####
      	def get_CallbackID()
      	  return @outputs["CallbackID"]
      	end
      end

    end # class InitializeOAuth




  end # module OAuth

  module UserInfo



    ##############################################################################
    #
    # GetLinkHistory
    #
    # Returns entries from a user's link history in reverse chronological order.
    #
    ##############################################################################

    class GetLinkHistory < Choreography

      ####
      #  Create a new instance of the GetLinkHistory Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Bitly/UserInfo/GetLinkHistory")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLinkHistoryInputSet
      ####
      def new_input_set()
        return GetLinkHistoryInputSet.new()
      end

      def make_result_set()
        return GetLinkHistoryResultSet.new()
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
        results = GetLinkHistoryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLinkHistory
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLinkHistoryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The oAuth access token provided by Bitly.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Archived input for this Choreo. 
        # 
        # @param String - (optional, string) Accepted values are: on|off|both.  Whether to include or exclude archived history entries. (on = return only archived history entries). Defaults to "off".
        ###

        def set_Archived(value)
          set_input("Archived", value)
        end
        #### 
        # Set the value of the CreatedAfter input for this Choreo. 
        # 
        # @param String - (optional, date) An epoch timestamp representing a date to filter with.
        ###

        def set_CreatedAfter(value)
          set_input("CreatedAfter", value)
        end
        #### 
        # Set the value of the CreatedBefore input for this Choreo. 
        # 
        # @param String - (optional, date) An epoch timestamp representing a date to filter with.
        ###

        def set_CreatedBefore(value)
          set_input("CreatedBefore", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) An integer in the range of 1 to 100, specifying the max number of results to return. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Link input for this Choreo. 
        # 
        # @param String - (optional, string) The bitly link to return metadata for (when spcified, overrides all other options).
        ###

        def set_Link(value)
          set_input("Link", value)
        end
        #### 
        # Set the value of the ModifiedAfter input for this Choreo. 
        # 
        # @param String - (optional, date) An epoch timestamp representing a date to filter with.
        ###

        def set_ModifiedAfter(value)
          set_input("ModifiedAfter", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param String - (optional, string) An integer specifying the numbered result at which to start (used for pagination).
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Private input for this Choreo. 
        # 
        # @param String - (optional, string) Accepted values are: on|off|both.  Whether to include or exclude archived history entries. (on = return only archived history entries). Defaults to "both".
        ###

        def set_Private(value)
          set_input("Private", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (optional, string) The user for whom to retrieve history entries (if different from authenticated user).
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLinkHistory Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLinkHistoryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Bitly.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLinkHistory



    ##############################################################################
    #
    # GetUserInfo
    #
    # Returns information about a specified user.
    #
    ##############################################################################

    class GetUserInfo < Choreography

      ####
      #  Create a new instance of the GetUserInfo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Bitly/UserInfo/GetUserInfo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUserInfoInputSet
      ####
      def new_input_set()
        return GetUserInfoInputSet.new()
      end

      def make_result_set()
        return GetUserInfoResultSet.new()
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
        results = GetUserInfoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUserInfo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUserInfoInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The oAuth access token provided by Bitly.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the FullName input for this Choreo. 
        # 
        # @param String - (optional, string) The users full name value (only available for the authenticated user).
        ###

        def set_FullName(value)
          set_input("FullName", value)
        end
        #### 
        # Set the value of the Login input for this Choreo. 
        # 
        # @param String - (optional, string) The bitly login of the user whose info to look up. If not given, the authenticated user will be used.
        ###

        def set_Login(value)
          set_input("Login", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUserInfo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUserInfoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Bitly.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetUserInfo




  end # module UserInfo

end # module Bitly