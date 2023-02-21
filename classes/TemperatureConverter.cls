public class TemperatureConverter {
    // Takes a Fahrenheit temperature and returns the Celsius equivalent.
    public static Decimal FahrenheitToCelsius(Decimal fah) {
        Decimal cs = (fah - 32) * 5/9;
        return cs.setScale(2);
    }
}

//Test for case 00062656