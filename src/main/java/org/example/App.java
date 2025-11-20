package org.example;

import java.util.Scanner;

public class App {

    public static void main(String[] args) {
        System.out.println("Hello and welcome!");

        Scanner scanner = new Scanner(System.in);
        System.out.print("How many numbers to display in the loop? ");
        int count;

        // Validate input
        if (scanner.hasNextInt()) {
            count = scanner.nextInt();
        } else {
            System.out.println("Invalid input. Defaulting to 5.");
            count = 5;
        }

        // Call the method
        displayNumbers(count);

        scanner.close();
    }

    public static void displayNumbers(int n) {
        for (int i = 1; i <= n; i++) {
            System.out.println("i = " + i);
        }
    }
}
