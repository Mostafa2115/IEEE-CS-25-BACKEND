/**
 * @param {number[]} a
 * @param {Function} fn
 * @return {number[]}
 */
var map = function(a, fn) {
    for (let i = 0; i < a.length; ++i) {
        a[i] = fn(a[i], i);
    }
    return a;
};
