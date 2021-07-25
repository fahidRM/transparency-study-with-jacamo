

can_turn_left.



! start_logging_and_start.


+! start_logging_and_start: true <- jason.init_stag_logger;
                                    ! turn;
                                    ! turn;
                                    ! turn.
                                    

+! turn : can_turn_left  <- .print("I just turned left...");
							 - can_turn_left;
							 + can_turn_right.

+! turn : can_turn_right <- .print("I just turned right....");
							 - can_turn_right;
							 + can_turn_left.





{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organisation
//{ include("$moiseJar/asl/org-obedient.asl") }


