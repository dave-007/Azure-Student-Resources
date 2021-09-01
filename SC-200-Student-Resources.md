# SC-200 Delivery Prep Notes

>> Note for existing Azure Passes!

>> There's a trick to this lab in that the tenant is precreated as part of lab, but you have an Azure Pass to activate and associate with the email address provided with the tenant.

>> If you activated the Azure Pass already, as I did, you can add the admin user as an owner on the subscription, then as that user in the portal, change the subscription, changing its directory to point to Contoso.



- GITHUB
https://github.com/dave-007/SC-200T00A-Microsoft-Security-Operations-Analyst


- LDC PDFs
SC-200*.pdf

https://docs.microsoft.com/en-us/learn/paths/sc-200-mitigate-threats-using-microsoft-defender-for-endpoint/

I'll go through the learning path, fast forward when apropriate.


-- Azure Sentinel Ninja training



## 7 Pillars

### Threat & Vulnerability Management

- Diagram 
https://i.imgur.com/yYGDCmn.png

URL

aka.ms/MDATPVideos TODO: WATCH THESE KEY RESOURCE
aka.ms/MDATPDocs
aka.ms/MDATPDocsTVMOverview

Interactive Guide: Threat and Vulnerability Management
https://aka.ms/MSDE_TVM_IG


### Attack surface reduction rules

- app whitelist
- hardware isolation (container opens unsafe files)
- app control
- ransomware protection
- controlled folder access
- network protection
- web protection
- exploit protection - mitigation techniques
- device control

### Next Gen Antivirus

- ml 
- detect & block attacks
- behavior monitoring
- 


### Endpoint detection & response

ATP
- https://mslearn.cloudguides.com/guides/Investigate%20and%20remediate%20threats%20with%20Microsoft%20Defender%20for%20Endpoint

### Auto investigation & remediation (AIR)

- react automatically
- See https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/automated-investigation-response-office?view=o365-worldwide

### Microsoft Threat Experts

managed threat __ service

- 
- experts on demand

### Management & APIs

- integrate APIs


____

Defender for Endpoint

- aka.ms/mdatpdocs

- Endpoint behavioral sensors. Embedded in Windows 10, these sensors collect and process behavioral signals from the operating system. The sensors send the data to your private, isolated cloud instance of Microsoft Defender for Endpoint.
- Cloud security analytics. Using big data, machine learning, and unique Microsoft optics across the Windows ecosystem, enterprise cloud products (such as Office 365), and online assets, behavioral signals are translated into insights, detections, and recommended responses to advanced threats.
- Threat intelligence. Generated by Microsoft hunters and security teams, and augmented by threat intelligence provided by partners, threat intelligence enables Microsoft Defender for Endpoint to identify attacker tools, techniques, and procedures, and generate alerts when these are observed in collected sensor data.

- Conditional Access
  - https://www.microsoft.com/en-us/videoplayer/embed/RE4byD1?rel=0&postJsllMsg=true


INteraction with other products:
--> https://docs.microsoft.com/en-us/learn/modules/deploy-microsoft-defender-for-endpoints-environment/7-configure-environment-advanced-features
___ 

### Architecture - Defender ATP

#### Indicators of Attack (IOA)

#### Defender Security Center

- Endpoint Events From:
  - Threat and vulnerability 
  - Firewall
  - Attack surface reduction
  - Browser protection
  - Exploit protection
  - Next-gen AV protection
  - Hardware-based isolation
  - EDR behavioral sensors
  - Application control 
  - EDR response controller
  - Network protection 
  - Update service



___

# LABS

## MOD 01

- EX 1

- ex1t1 step 6, few minute delay. try page refresh.
  - PREVIEW WAS ON ALREADY

- step 8 - Server error, please try to edit settings later..

- Microsoft Defender for Endpoint TOUR?

- Add role

- EX 2

- Attack Simulation Training?

- Resources: 
  - https://securitycenter.windows.com/tutorials
  - https://security.microsoft.com/attacksimulator
  - https://security.microsoft.com/tutorials
  - https://mslearn.cloudguides.com/guides/Investigate%20and%20remediate%20threats%20with%20Microsoft%20Defender%20for%20Endpoint

- Click 'Running' link to see investigation graph.

- tutorial named 'PowerShell script in fileless attack' 

- New name: Micosoft 365 Defender Portal

- TODO: try initiate live response session, run powershell from library

## MOD 02

- Show off M365 Defender
  - https://aka.ms/M365Defender-InteractiveGuide


- Also see : https://aka.ms/MSDO-IG
- Just explore the menus. Really.

- Defender for Identity
  - https://aka.ms/MSDefenderforIdentity-IG


- Cloud App Secuity
  - Guided demo link: https://aka.ms/DetectThreats-ManageAlerts-MCAS_InteractiveGuide


Total of 4 interactive guides
## MOD 03

- OK

## MOD 04

- OK (more KSQL!)
- https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/sqlcheatsheet

- https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/best-practices

## MOD 05

https://docs.microsoft.com/en-us/azure/sentinel/microsoft-365-defender-sentinel-integration
>>
Microsoft 365 Defender was formerly known as Microsoft Threat Protection or MTP.
Microsoft Defender for Endpoint was formerly known as Microsoft Defender Advanced Threat Protection or MDATP.
You may see the old names still in use for a period of time.
<<

! Tried Connectors in Sentinel
, connected to Defender
, connected to Active Directory
, enabled UEBA https://docs.microsoft.com/en-us/azure/sentinel/enable-entity-behavior-analytics?WT.mc_id=Portal-Microsoft_Azure_Security_Insights
- Sentinel
- Watch List

- Try Worksbooks 'Azure Sentinel Cost'
Resources - Ninja training -> http://aka.ms/mdeninja
- [Updates](https://techcommunity.microsoft.com/t5/azure-sentinel/the-ninja-training-2021-edition-is-out/ba-p/2027400)
- [FAQ](https://techcommunity.microsoft.com/t5/azure-sentinel/the-faq-companion-to-the-azure-sentinel-ninja-training/ba-p/2022485)
- REPOS  
  - https://github.com/Azure/Azure-Sentinel

- Notebooks
  - https://github.com/Azure/Azure-Sentinel-Notebooks

- Azure Sentinel Blog - https://techcommunity.microsoft.com/t5/azure-sentinel/bg-p/AzureSentinelBlog/label-name/Azure%20Sentinel

- TECH COMMUNITY
  - https://techcommunity.microsoft.com/t5/microsoft-365-defender/bg-p/MicrosoftThreatProtectionBlog
  

  To query data across workspaces, use the workspace() function before the table name.
TableName
| union workspace(“WorkspaceName").TableName


### EX 1
Needs E? licenses already enabled for tenant
### Data Connectors

-Screenshot of how many defenders Azure has.
  - https://i.imgur.com/L8SLlaj.png

  TODO: troubleshoot

### EX 2

Chose ' Windows 10 Enterprise. Version 20H2 - Gen2'
Size B2?

In connector, select 'All Events' for which events to stream.

- Task 5, look for option with Defender init, wait for spaces to create if not reusing mod 1

EX 3 Blocked

EX 4 Good

TODO: FIT IN LOGIC APP RESPONSE

## MOD 07

EX 1
NEED? Teams Account first 

EX 2

EX 3

EX 4 
- My Sentinel is separate from the lab tenant with this test user.

What are 'Tactics'?

EX 5

EX 6

EX 7
Screenshow, click on WIN1 and drill into events
https://i.imgur.com/2hep3wB.png

ENABLE SENTINEL SIEM

## MOD 08

Not finding DeviceEvents source, try security events
Resources
- https://techcommunity.microsoft.com/t5/azure-sentinel/azure-sentinel-workbooks-101-with-sample-workbook/ba-p/1409216
- https://github.com/Azure/Azure-Sentinel-Notebooks/blob/8122bca32387d60a8ee9c058ead9d3ab8f4d61e6/A%20Getting%20Started%20Guide%20For%20Azure%20Sentinel%20ML%20Notebooks.ipynb

- Azure Monitor
  - table reference - https://docs.microsoft.com/en-us/azure/azure-monitor/reference/tables/tables-category
- KQL & Azure Data Studio
  - https://www.red-gate.com/simple-talk/blogs/connecting-log-analytics-using-azure-data-studio-kql/

  - https://docs.microsoft.com/en-us/azure/azure-monitor/logs/logs-data-export?tabs=portal

  AZURE DATA EXPLORER

  - https://docs.microsoft.com/en-us/azure/data-explorer/

  - https://docs.microsoft.com/en-us/azure/data-explorer/kql-quick-reference

  - https://techcommunity.microsoft.com/t5/azure-data-explorer/azure-data-explorer-reimagine-telemetry-analytics/ba-p/1777362

  - https://docs.microsoft.com/en-us/azure/data-explorer/write-queries

  - !!! https://www.youtube.com/watch?v=chVFAGX8IYQ
  ___
  notes from PS Video


  USE .SHOW

  ```kql

.create table
.create-merge table
.rename table

.drop table

...


.create table MyLogs ( Leve1:string,
.show table EIL93§

.show table mxkogs schema as json
.alter-merge table f‌lxgggg (Timestamp
.show table EXEQSE schema as json

  ```

## LOG ANALYTICS DEMO
- https://aka.ms/LADemo

Azure Data Explorer export data


____

...

SKILLPIPE

RBAC Roles

Product names to know

- Microsoft Defender for Endpoint
  - Threat and Vulnerability Management
- Microsoft 365 Defender
  - Azure AD Identity Protection
  - Microsoft Defender for Office 365
  - Microsoft Defender for Identity
  - Microsoft Cloud App Security
- Azure Defender
- Azure Sentinel
  - Data Connectors to all sources inc. 'Microsoft 365 Defender' ..
  - Analytics
  - Playbooks
  - Security Incident Management
  - Threat hunting
- Microsoft Defender ATP (Advanced Threat Protection)
  - EDR (Endpoint Detection & Response) , Block Mode https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/introducing-edr-in-block-mode-stopping-attacks-in-their-tracks/ba-p/1596617
  - https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/tvm-vulnerable-devices-report?view=o365-worldwide
- Office 365 Threat Intelligence


- Endpoint Linux Onboarding, install mdatp


___ 
KQL resources

- https://docs.microsoft.com/en-us/azure/data-explorer/write-queries

>> copied from https://mslearn.cloudguides.com/guides/Protect%20your%20organization%20with%20Microsoft%20365%20Defender

```kql

let selectedTimestamp = datetime(2026-07-18T23:49:25.69696602)3
let accountSid - "S-1-S-21-1137142824-3273894016-956$73326-1106";
let accountObjectId = "ab653b23-d23e-49df-9493-c26596f8f319";
let accountName - "barbara.moreland";
search in (DeviceLogonEvents, DeviceProcessEvents, DeviceNetworkEvents, DeviceFileEvents, DeviceRegistryEvents,
Timestamp between ((selectedTimestamp - 1h) .. (selectedTimestamp + 1h))
and (AccountSid =~ accountSid
or InitiatingProcessAccountSid =~ accountSid
or QueryTarget =~ accountName)
// or AccountObjectId == accountObjectId
// or InitiatingProcessAccountObjectId == accountObjectId
// or AccountName =~ accountName
// or InitiatingProcessAccountName -~ accountName
| take 100

```


## AZURE ALERTS REFERENCE
> https://docs.microsoft.com/en-us/azure/security-center/alerts-reference?azure-portal=true



# KQL & HUNTING
- https://github.com/BlueTeamLabs/sentinel-attack


todo: notebook parameters