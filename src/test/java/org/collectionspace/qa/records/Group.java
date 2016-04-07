package org.collectionspace.qa.records;

public class Group extends Record {

    public Group(){

        requiredMap.put("csc-group-title", "My Group Title");
        
        fieldMap.put(".csc-group-owner", "Chris Hendricks");

        fieldSelectorByLabel.put("Title", ".csc-group-title");
        fieldSelectorByLabel.put("Group Owner", ".csc-group-owner");
        
    }
}
