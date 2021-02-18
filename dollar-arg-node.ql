import javascript

from DataFlow::Node dollarFlow
where 
    jquery().getACall().getArgument(0) = dollarFlow
    
select dollarFlow