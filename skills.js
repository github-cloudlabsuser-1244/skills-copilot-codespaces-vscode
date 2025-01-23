// function to cover Cerlsius to Fahrenheit
function celsiusToFahrenheit(celsius) {
  return celsius * 9/5 + 32;
}

// function to cover Cerlsius to Fahrenheit
function fahrenheitToCelsius(fahrenheit) {
  return (fahrenheit - 32) * 5/9;
}

// Driver code
let celsius = 37;
let fahrenheit = 98.6;
console.log(`${celsius}°C is ${celsiusToFahrenheit(celsius)}°F`); // 37°C is 98.6°F
console.log(`${fahrenheit}°F is ${fahrenheitToCelsius(fahrenheit)}°C`); // 98.6°F is 37°C