function h(x){
    return x + 1;
}
function g(x){
    return x * x;
}
function f(x){
    return x.toString();
}

const y = f(g(h(1)));
console.log("Without R:", y);

const R = require('ramda');

const composite = R.compose(f,g,h);

const y1 = composite(1);
console.log("With R:", y1);

a = [
    n => console.log(n),
    n => console.log(n+'jeje')
];

a[0]('test');
a[1]('test');

