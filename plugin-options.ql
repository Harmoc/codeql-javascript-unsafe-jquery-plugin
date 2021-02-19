import javascript

from DataFlow::FunctionNode pluginFunction, DataFlow::ParameterNode pluginParameter
where 
    pluginFunction = jquery().getAPropertyRead("fn").getAPropertySource() and
    pluginParameter = pluginFunction.getLastParameter()

select pluginFunction,pluginParameter
