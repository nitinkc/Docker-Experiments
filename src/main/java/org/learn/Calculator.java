package org.learn;

import java.util.Scanner;

public class Calculator {
    public static void main(String[] args) {

        // Assuming 2 command line arguments <Nitin 29>
        if (args.length == 0 || args.length > 3) {
            System.err.println("Incorrect Number of arguments passed");
            System.exit(-1);
        }
        System.out.println(calculator(args));
    }

    private static Float calculator(String[] args) {
        String operation = args[0];//add, sub,mult, div

        Float a1 = Float.parseFloat(args[1]);
        Float a2 = Float.parseFloat(args[2]);

        Float result;

        switch (operation){
            case "add" :
                result = a1 + a2;
                break;
            case "sub":
                result = a1 - a2;
                break;
            case "mult":
                result = a1*a2;
                break;
            case "div":
                result= a1/a2;
                break;
            default:
                throw new IllegalArgumentException("Invalid operation: " + operation);
        }
        return result;
    }
}
