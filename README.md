# testPointzi

Following are the steps for implementing the projects:

Step 1: After cloning the project, build(CMD+B) the project. Finder view will pop with an 'test1.framework' file.

Step 2: As it is a static custom framework, you have to embed the framework. To embed the framework,Go to 

        Target->General->Embedded Binary and '+' and add it from the location where you have the 'test1.framework'.
        
Step 3: go to Appdelegate.h and add header #import <test1/test1.h>

Step 4: Go to Viewcontroller where you want to show the view and call '[MainVC completeData : self.view];'. It will show a view in the viewcontoller.




