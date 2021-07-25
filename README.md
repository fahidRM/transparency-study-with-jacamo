# Transparency Study using Jacamo

This repository is a basic setup to get started with a modified jacamo environment.


## Getting Started (using sample code)

- Download the folders `jacamo` and `project-libs`from this repository. 
- Setup `jacamo` on your computer using the content of the `jacamo` folder. This can be done by downloading the folder contents and then navigating to the subdirectory `build\libs` and running the file `jacamo-1.0.jar` and clicking on the `save configuration and exit` button.
- Restart eclipse IDE.
- Include `stag.jar` and the respective `jason-xxxx-mod.jar` from the `project-libs` directory in your project as dependencies.
- This codebase was intended to be used along with the transparency tool (see: https://github.com/fahidRM/agent-transparency-tool).
- Firstly, launch and start (by clicking on the `start debugging` button) the transparency tool then run your MAS.
- This repository contains a sample code in the folder `sample_code` that can be imported into an eclipse workspace and run out of the box.


## Using the Transparency tool with your own project

- After updating your project's dependedncy to include the jar files (cotnained `project-libs` directory) and setting up the version of jacamo contained in this repository  (cotnained `jacamo` directory)
- Edit your `jcm` file to make use of the contained `ag-arch` as shown below;
    
      Supposing your jcm file looks like this...
      
      agent sample_agent
      
      
      Edit it to be...
      
        agent sample_agent : sample_agent.asl {
            ag-arch: pkg.STAgArch
        }   
        
 - After doing this, edit your Agent's `asl` file to call on the `jason.init_stag_logger` internal action which ensures logs are complete.
 
      
      
      Supposing your asl file looks like this...

          ....[code]
          !start.

          +!start : true <- .print("hello world.");
					                   move(-1,-1).

          ...[code]

      Edit it to be...
      
        ....[code]
          ! start_logging_and_start.
          +! start_logging_and_start: true <- jason.init_stag_logger;
                                              !start.

          +!start : true <- .print("hello world.");
                            move(-1,-1).

          ...[code]

- Launch and start the transparency tool (see: https://github.com/fahidRM/agent-transparency-tool).
- Run your project as you normally would.

- A sample video demonstrating the setup is available here:  https://fahidrm.github.io/agent-transparency-tool/files/guides/agent_transparency_tool_with_jacamo.mp4




__NOTE: Please note this repository contains modified versions of `jacamo`and `jason` libraries that are necessary for capturing the required logs.__


									


