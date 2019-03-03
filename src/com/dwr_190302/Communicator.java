package com.dwr_190302;

public class Communicator {
    public String doCommunicate(String messageFromBrowser) {
        System.out.println("message from browser: " + messageFromBrowser);
        return "In reply to your message \"" + messageFromBrowser + "\": hi from server";
    }
}
