(function(){
    console.log("---", "[FTRACKER]", "[WRAPPER]", "Page loaded...");
})();

function average(data) {
    return data.reduce((a,b) => a + b, 0) / data.length
}


// https://stackoverflow.com/questions/9050345/selecting-last-element-in-javascript-array
if (!Array.prototype.last){
    Array.prototype.last = function(){
        return this[this.length - 1];
    };
};