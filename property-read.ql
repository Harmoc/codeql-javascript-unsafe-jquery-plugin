import javascript

from DataFlow::Node dollarFlow
where dollarFlow = jquery().getAPropertyRead("fn")
select dollarFlow