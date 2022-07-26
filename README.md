# exist-mvc

This repo illustrates an eXist-db pipeline that creates the model
with XQuery and the view with two consecutive XSLT transformations.

## Index page

On launch the app opens an index page that dynamically constructs a
list of links to reading view of XML documents found in the *data*
collection.

## Read page

The clickable links on the Index page open reading views of individual
documents.

## Further development

If you add additional stories, you’ll want to expand *views/read-to-html.xsl*
and *resources/css/hoax.css*. At the moment the only TEI elements the former
knows about are those found in the single story contained in the collection,
and if additional stories introduce additional elements the XSLT will have to
be modified to deal with them. The CSS styling is rudimentary, and will also
need to be modified in order to do anything useful.

## Sources

The principal source of information for this architecture is the *eXist-db
book*, pp. 196–207.