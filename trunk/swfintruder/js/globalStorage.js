/******************
** globalStorage.js
** 
** helper functions for globalStorage.
** 
**  This file is part of SWF Intruder
**  Author: Stefano Di Paola (stefano.dipaola@mindedsecurity.com)
**  Copyright: Minded Security © 2007
**  License: GPL 2.0
*/

var storage = globalStorage[location.host];
var pageCount;

function setItem(key,value) {
storage.setItem(key,value);
}
function getItem(key) {
      return  storage.getItem(key);
}

function removeItem(key) {
      storage.removeItem(key)
}

