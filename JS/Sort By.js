/**
 * @param {Array} arr
 * @param {Function} fn
 * @return {Array}
 */
var sortBy = function(arr, fn) {
    return arr.sort((a, b) => {
        const A = fn(a);
        const B = fn(b);
        if (A < B) return -1;
        if (A > B) return 1;
        return 0;
    });
};
