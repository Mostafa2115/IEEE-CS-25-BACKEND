'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.trim().split('\n').map(string => {
        return string.trim();
    });
    
    main();    
});

function readLine() {
    return inputString[currentLine++];
}

function getLetter(s) {
    let letter;
    if (s[0]=='a' || s[0]=='e' || s[0]=='i' || s[0]=='o' || s[0]=='u')
    letter='A';
    else if (s[0]=='b' || s[0]=='c' || s[0]=='d' || s[0]=='f' || s[0]=='g')
    letter='B';
    else if (s[0]=='h' || s[0]=='j' || s[0]=='k' || s[0]=='l' || s[0]=='m')
    letter='C';
    else if (s[0]=='n' || s[0]=='p' || s[0]=='q' || s[0]=='r' || s[0]=='s' || s[0]=='t' || s[0]=='v' || s[0]=='w' || s[0]=='x' || s[0]=='y' || s[0]=='z')
    letter='D';
    
    
    return letter;
}


function main() {
    const s = readLine();
    
    console.log(getLetter(s));
}
