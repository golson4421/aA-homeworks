function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}



function madLib(verb, adj, noun ) {
    console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`)
}



function isSubstring(searchString, subString) {
    return searchString.includes(subString)
}


function fizzbuzz(array) {
   const newArray = [];

    for (i = 0; i < array.length; i ++  );
    if ( (array[i] % 5 === 0) ^ (array[i] % 3 === 0)) {
        newArray.push(array[i]);
    }
    return newArray

        
}



function fizzBuzz(array) {
    const fizzBuzzArr = [];

    array.forEach(el => {
        if ((el % 3 === 0) ^ (el % 5 === 0)) {
            fizzBuzzArr.push(el);
        }
    });

    return fizzBuzzArr;
}


function isPrime(num) {
    if (num < 2) {return false;}
    for (i = 2; i < num; i++) {
        if (num % i === 0)
            return false;
   }
   return true
}


function sunOfNPrimes(n) {
    let sum = 0;
    let countPrimes = 0;
    let i = 2;
    
    while (countPrimes < n) {
        if (isPrime(i)) {
            countPrimes++;
            sum += i;
        }
        i++
    }
    return sum;
}

