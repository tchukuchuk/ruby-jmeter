module RubyJmeter
  module Plugins
    class BytesThroughputOverTime
      attr_accessor :doc
      include Helper
      def initialize(name, params={})
        testname = (params[:name] || 'BytesThroughput')
        @doc = Nokogiri::XML(<<-XML.strip_heredoc)
          <ResultCollector guiclass="kg.apc.jmeter.vizualizers.BytesThroughputOverTimeGui" testclass="ResultCollector" testname="#{testname}" enabled="true">
            <boolProp name="ResultCollector.error_logging">false</boolProp>
            <objProp>
              <name>saveConfig</name>
              <value class="SampleSaveConfiguration">
                <time>true</time>
                <latency>true</latency>
                <timestamp>true</timestamp>
                <success>true</success>
                <label>true</label>
                <code>true</code>
                <message>true</message>
                <threadName>true</threadName>
                <dataType>true</dataType>
                <encoding>false</encoding>
                <assertions>true</assertions>
                <subresults>true</subresults>
                <responseData>false</responseData>
                <samplerData>false</samplerData>
                <xml>true</xml>
                <fieldNames>false</fieldNames>
                <responseHeaders>false</responseHeaders>
                <requestHeaders>false</requestHeaders>
                <responseDataOnError>false</responseDataOnError>
                <saveAssertionResultsFailureMessage>false</saveAssertionResultsFailureMessage>
                <assertionsResultsToSave>0</assertionsResultsToSave>
                <bytes>true</bytes>
                <threadCounts>true</threadCounts>
              </value>
            </objProp>
            <stringProp name="TestPlan.comments"></stringProp>
            <stringProp name="filename"></stringProp>
            <longProp name="interval_grouping">1000</longProp>
            <boolProp name="graph_aggregated">false</boolProp>
          </ResultCollector>
        XML
        update params
      end
    end
  end
end

