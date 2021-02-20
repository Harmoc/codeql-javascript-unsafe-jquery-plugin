import javascript
import DataFlow::PathGraph

class Configuration extends TaintTracking::Configuration {
  Configuration() { this = "XssUnsafeJQueryPlugin" }

  override predicate isSource(DataFlow::Node source) {
      // Fill me in from Step 9
    exists(DataFlow::FunctionNode pluginFunction | 
        pluginFunction = jquery().getAPropertyRead("fn").getAPropertySource() and
        source = pluginFunction.getLastParameter()
    )
  }

  override predicate isSink(DataFlow::Node sink) {
      sink = jquery().getACall().getArgument(0) // Fill me in from Step 5
  }
}

from Configuration cfg, DataFlow::PathNode source, DataFlow::PathNode sink
where cfg.hasFlowPath(source, sink)
select sink, source, sink, "Potential XSS vulnerability in plugin."
