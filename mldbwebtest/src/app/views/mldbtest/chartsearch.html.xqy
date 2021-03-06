xquery version "1.0-ml";

import module namespace vh = "http://marklogic.com/roxy/view-helper" at "/roxy/lib/view-helper.xqy";

declare option xdmp:mapping "false";

(: use the vh:required method to force a variable to be passed. it will throw an error
 : if the variable is not provided by the controller :)
(:
  declare variable $title as xs:string := vh:required("title");
    or
  let $title as xs:string := vh:required("title");
:)

(: grab optional data :)
(:
  declare variable $stuff := vh:get("stuff");
    or
  let $stuff := vh:get("stuff")
:)

<div xmlns="http://www.w3.org/1999/xhtml" class="mldbtest chartsearch">

<link rel="stylesheet" type="text/css" href="/js/mldbtest/widgets.css" />
<script type="text/javascript" src="/js/lib/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="/js/mldbtest/mljs.js"></script>
<script type="text/javascript" src="/js/mldbtest/mljs-xhr2.js"></script>

<script type="text/javascript" src="/js/mldbtest/widgets.js"></script>
<script type="text/javascript" src="/js/mldbtest/widget-search.js"></script>
<script type="text/javascript" src="/js/mldbtest/highcharts.js"></script>
<script type="text/javascript" src="/js/mldbtest/widget-highcharts.js"></script>

<script type="text/javascript" src="/js/mldbtest/page-chartsearch.js"></script>
  
 <div class="container_12">  
  <div id="cs-hint" class="grid_12">Hint: Type 'family:pet' and click Search</div>
 </div>
 <div class="container_12">  
  <div id="errors" class="grid_12"></div>
 </div>
 <div class="container_12">  
  <div id="cs-bar" class="grid_12">search bar</div>
 </div>
 <div class="container_12">  
  <div id="splineline" class="grid_6">splineline</div>
  <div id="column" class="grid_6">column</div>
 </div>
 <div class="container_12">  
  <div id="pie" class="grid_6">pie</div>
  <div id="blank" class="grid_6">This div is intentionally blank</div>
 </div>
</div>