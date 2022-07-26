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
declare variable $exist:controller as xs:string := request:get-parameter("exist:controller", "/exist-mvc");
declare variable $path-to-data as xs:string := $exist:root || $exist:controller || '/data';

<m:index>
    <m:stories>{
        for $story in collection($path-to-data)/tei:TEI
        let $title as xs:string := $story/descendant::tei:titleStmt/tei:title ! string()
        order by $title
        return <m:story xml:id="{$story/@xml:id}">{$title}</m:story>
    }</m:stories>
</m:index>

