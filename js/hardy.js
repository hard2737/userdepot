// ctor for Hardy obj
// pass in a params object
// so that it can override these defaults
function Hardy(params){
    $.extend(this, {
        // Set some defaults, to be overridden and added to by anything in params
        some_field:          'somevalue',
        another_field:        false
    }, params);
}// end of main Hardy class definition

// extends the class we just defined
// define more functions and fields
$.extend(Hardy.prototype, {

	another_method: function () {
		var me = this;
		return true;
	},
	yet_another_method: function () {
		var me = this;
		return me.another_method();
	},
}); //end of Hardy.prototype extend

var hardy = {
	/**
	*   know of a better alternative, please let me know
	**/
	function isEmptyNullOrUndefined(something) {
		if (something === undefined || something === null) return true;
		if (Object.prototype.toString.call(something) === '[object Array]') {
			return (something.length === 0);
		}
		else {
			if (typeof something === 'string') {
				return (jQuery.trim(something) === '');
			}
			else {
				return false;
			}
		}
	}
}; //end of the hardy namespace

