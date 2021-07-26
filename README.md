# CitadelGuard
Final Year Project (Machine Learning, Computer Networks, Web Development)

Type: Research and Development (R&D)

As with the collaboration with external organization, the primary aim of this project is to intercept malicious traffic over the network and write an appropriate **ensemble model** that will give relative prediciton over the severity of an attack. By the end of the term, the finalized product will be a running web based application that will displaying point of origin of an attack as well as the severity of it compared to other non malicious activities.

The **first phase** of the project (FYP 1) is to gather data over a corporate network that can be used for our purpose. To this end, we used 5 different honeypots to gather data, each with its own specialization. The honeypots are named as
* Cowrie (For ssh and telnet based activies)
* Dionaea (Primary for FTP based but also for HTTP and SQL based activites)
* Snare / Glastopf (For running web applications)
* SpamD (smtp based attacks, running in daemon mode)
* mwcollectd (for malware collection)

For project sake, a public ip access was granted to the university systems as to mimic the environment of a corporate organization under attack. The sensors were configured to our needs and then deployed over systems to start gathering interactions between the pc and external traffic (in PCN Lab). The data gathered needs to be sanatized as well as viable features are needed to be extracted that can be utilize in the learning phase.

Here in the repository, you will find the code snippets that were written to extract features and store the generated raw data from the honeypots into format that can be stored in *mongodb atlas*, which can be then used in the next phase of the project. Some of the honeypots generate logs directly in json format, which is viable since they are easy to manipulate, some honeypot such as Glastopf / Snare had their own format, so important features were to be extracted from them using shell scripts! (these scripts can only be executed with log files, which are not uploaded here because of their raw size)

The **second phase** (FYP 2) of project is to actually design an ensemble model that can fare better in prediction compared to individual algorithms that are currently being used in security domain. Moreover a simple research aspect is not enough for the project requirements and external organization satisfaction, therefore a fully functional web application will also be created that will be displaying various intricate details of network traffic being monitored and the severity of actions that can assist the sys-admins teams and forensic analysists in the study and incident response teams for their post-disaster recovery phase.
