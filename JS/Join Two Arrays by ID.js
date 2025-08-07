/**
 * @param {Array} arr1
 * @param {Array} arr2
 * @return {Array}
 */
var join = function(arr1, arr2) {
    const x = {};
    for (let i = 0; i < arr1.length; i++) 
        x[arr1[i].id] = arr1[i];
    for (let i = 0; i < arr2.length; i++) 
        if (x[arr2[i].id]) 
            for (const k in arr2[i]) x[arr2[i].id][k] = arr2[i][k];  
        else
            x[arr2[i].id] = arr2[i];

    return Object.values(x);
    
};
