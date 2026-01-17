package org.swayam.kafkapract;

import java.util.Locale;

public class Application {


    /**
     * The entry point of application.
     *
     * @param args the input arguments
     * @throws Exception the exception
     */
    public static void main(String[] args) {
        String errorMsg = "ERROR: You need to declare the first parameter as Producer or Consumer, "+
                "the second parameter is the topic name";
        if (args.length!=2) {
            System.out.printf(errorMsg);
        }
        String applicationType = args[0];
        String topicName = args[1];
        System.out.printf("The application type is %s and topic is %s\n",applicationType,topicName);

        switch (applicationType.toLowerCase(Locale.ROOT)) {
            case "producer":
                System.out.printf("Starting Producer\n");
                break;
            case "consumer":
                System.out.printf("Starting Consumer\n");
                break;
            default:
                System.out.printf(errorMsg);
        }
    }
}