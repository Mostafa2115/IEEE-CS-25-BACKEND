/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var filter = function(a, fn) {
    let f=[]
    for(let i=0;i<a.length;i++){
        if(fn(a[i],i)){
            f.push(a[i]);
        }
    }
    return f
};
