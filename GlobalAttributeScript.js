//Removes the GlobalAttributes from the inherited table section on https://www.w3.org/TR/wai-aria-1.1/#role_definitions. Useful to understand what attributes are supported/inherited outside of the base set


["atomic", "busy", "controls", "current", "describedby", "details", "disabled", "dropeffect", "errormessage", "flowto", "grabbed", "haspopup", "hidden", "invalid", "keyshortcuts", "label", "labelledby", "live", "owns", "relevant", "roledescription"].forEach(function(attr) {document.querySelectorAll('.role-inherited a[href="#aria-' + attr + '"]').forEach(function(elem) {elem.remove()})})