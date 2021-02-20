import javascript

predicate isSource(DataFlow::Node source) {
    exists(DataFlow::FunctionNode pluginFunction | 
        pluginFunction = jquery().getAPropertyRead("fn").getAPropertySource() and
        source = pluginFunction.getLastParameter()
    )
}

from DataFlow::Node node
where isSource(node)
select node
