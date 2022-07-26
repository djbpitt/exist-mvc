xquery version "3.1";
(: =====
Declare namespaces
===== :)
declare namespace tei="http://www.tei-c.org/ns/1.0";
declare namespace m="http://www.obdurodon.org/hoax/model";

(: =====
Retrieve controller parameters
Default path to data is xmldb:exist:///db/apps/exist-mvc/data
===== :)
declare variable $exist:root as xs:string := request:get-parameter("exist:root", "xmldb:exist:///db/apps");
declare variable $exist:controller as xs:string := request:get-parameter("exist:controller", "exist-mvc");
declare variable $path-to-data as xs:string := $exist:root || $exist:controller || '/data';

(: =====
Retrieve @xml:id of story to read
===== :)
declare variable $id as xs:string? := request:get-parameter('id', ());
(: ====
Retrieve article using $id 
=== :)
declare variable $article as element(tei:TEI)? := 
    collection($path-to-data)/id($id);

if ($article)
then
    <m:result>
        $article
    </m:result>
else 
    <m:no-result>None</m:no-result>
