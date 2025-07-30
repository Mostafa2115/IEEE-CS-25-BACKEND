/**
 * @param {Function} fn
 * @param {number} t
 * @return {Function}
 */
var timeLimit = function(fn, t) {
    
    return async function(...args) {
        let tId;
        const promise = new Promise((resolve, reject) => {
            tId = setTimeout(() => {
                reject("Time Limit Exceeded");
            }, t);
            
            fn(...args).then(resolve).catch(reject);
        });

        try {
            return await promise;
        } finally {
            clearTimeout(tId);
        }
    };
};

/**
 * const limited = timeLimit((t) => new Promise(res => setTimeout(res, t)), 100);
 * limited(150).catch(console.log) // "Time Limit Exceeded" at t=100ms
 */
