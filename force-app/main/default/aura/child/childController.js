({

				show : function(component,event,helper){		
						// get the event with the name firstCall
						var evt =component.getEvent("firstCall");
						  evt.setParams({"empName":"Satish Myla"});
                // fire the event
                evt.fire();

				}
			})