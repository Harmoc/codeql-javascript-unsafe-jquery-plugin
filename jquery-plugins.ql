import javascript

from DataFlow::Node pluginFunction
where pluginFunction = jquery().getAPropertyRead("fn").getAPropertySource()

select pluginFunction
