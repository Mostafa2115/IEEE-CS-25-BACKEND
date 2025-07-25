/**
 * @param {number[]} nums
 * @param {Function} fn
 * @param {number} init
 * @return {number}
 */
var reduce = function(n, fn, y) {
    let x = y;
  for (let i = 0; i < n.length; i++) {
    x = fn(x, n[i]);
  }
  return x;
};
