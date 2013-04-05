function fold(src) {
    if (src.parentNode.className == 'closed') {
	src.parentNode.className = '';
    } else {
	src.parentNode.className = 'closed';
    }
}
