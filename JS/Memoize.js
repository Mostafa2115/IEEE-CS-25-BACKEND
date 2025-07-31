/**
 * @param {Function} fn
 * @return {Function}
 */
function memoize(fn) {
    
    const x = {};
  
   return function(...args) {
    const key = JSON.stringify(args);
    
    if (key in x) {
      return x[key];
    }
    
    const z = fn.apply(this, args);
    x[key] = z;
    
    return z;
  }
}


/** 
 * let callCount = 0;
 * const memoizedFn = memoize(function (a, b) {
 *	 callCount += 1;
 *   return a + b;
 * })
 * memoizedFn(2, 3) // 5
 * memoizedFn(2, 3) // 5
 * console.log(callCount) // 1 
 */
