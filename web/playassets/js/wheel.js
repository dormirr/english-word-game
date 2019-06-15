//阻止滚动
function disabledMouseWheel() {
    document.addEventListener('DOMMouseScroll', enableMouseWheel, false);
    document.addEventListener('mousewheel', enableMouseWheel, false);
}

//启用滚动
function cancelDisMouseWheel() {
    document.removeEventListener('DOMMouseScroll', enableMouseWheel, false);
    document.removeEventListener('mousewheel', enableMouseWheel, false);
}

function enableMouseWheel(evt) {
    evt = evt || window.event;
    if (evt.preventDefault) {
        // Firefox
        evt.preventDefault();
        evt.stopPropagation();
    } else {
        // IE
        evt.cancelBubble = true;
        evt.returnValue = false;
    }
    return false;
}

window.onload = disabledMouseWheel;