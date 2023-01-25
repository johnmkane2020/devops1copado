{
    "recordTypeMap": {},
    "RecordSetBundles": [
      {
        "Records": [
          {
            "attributes": {
              "type": "copado__JobTemplate__c",
              "url": "/services/data/v54.0/sobjects/copado__JobTemplate__c/a0t09000007JGzLAAW"
            },
            "copado__ApiName__c": "DigitSecSecurityScanTool",
            "Id": "a0t09000007JGzLAAW",
            "LastReferencedDate": "2022-05-11T09:37:57.000+0000",
            "LastViewedDate": "2022-05-11T09:37:57.000+0000",
            "Name": "DigitSec Security Scan Template",
            "copado__Type__c": "Custom",
            "copado__Version__c": 1
          }
        ],
        "ObjectType": "copado__JobTemplate__c"
      },
      {
        "Records": [
          {
            "attributes": {
              "type": "copado__JobStep__c",
              "url": "/services/data/v54.0/sobjects/copado__JobStep__c/a0s09000001FIIJAA4"
            },
            "copado__ApiName__c": "DigitSecSecurityScanStep",
            "copado__ConfigJson__c": "{\"flowName\":\"DigitSecFlow\",\"parameters\":[{\"name\":\"resultId\",\"value\":\"{$Context.User_Story__c.Id}\"}]}",
            "copado__CustomType__c": "Salesforce Flow",
            "Id": "a0s09000001FIIJAA4",
            "copado__JobTemplate__c": "a0t09000007JGzLAAW",
            "Name": "DigitSec Security Scan Step",
            "copado__Order__c": 1,
            "copado__Type__c": "Flow"
          }
        ],
        "ObjectType": "copado__JobStep__c"
      },
      {
        "Records": [
          {
            "attributes": {
              "type": "copado__ExtensionConfiguration__c",
              "url": "/services/data/v54.0/sobjects/copado__ExtensionConfiguration__c/a1t09000001UcDNAA0"
            },
            "copado__AcceptanceCriteria__c": "{}",
            "copado__Active__c": true,
            "copado__ExtensionApplication__c": "Test",
            "copado__ExtensionTool__c": "DigitSec Security Scan",
            "Id": "a1t09000001UcDNAA0",
            "LastReferencedDate": "2022-05-10T07:11:01.000+0000",
            "LastViewedDate": "2022-05-10T07:11:01.000+0000",
            "Name": "DigitSec Security Scan Tool",
            "copado__Status__c": "Inactive",
            "copado__TestType__c": "DigitSec Security Scan"
          }
        ],
        "ObjectType": "copado__ExtensionConfiguration__c"
      }
    ],
    "blobsByUID": {}
  }