/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:	ram_vtest_lib.sv

Description 	:	Test case for Dual Port RAM
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/
//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


// Extend ram_base_test from uvm_test;
class ram_base_test extends uvm_test;

   // Factory Registration
	

  
    // Declare the handles ram_tb, ram_env_config, ram_wr_agent_config and
    // ram_rd_agent_config as ram_envh, m_tb_cfg, m_wr_cfg & m_rd_cfg       	
   
 
    // Declare has_ragent=1 & has_wagent=1 as int data type
   


	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
	extern function new(string name = "ram_base_test" , uvm_component parent);
	extern function void build_phase(uvm_phase phase);
    extern function void config_ram();
 endclass
//-----------------  constructor new method  -------------------//
// Define Constructor new() function



//-----------------  config_ram() method  -------------------//

function void ram_base_test::config_ram();
    if (has_wagent)
		begin 
			//for write agent config
			// set is_active to UVM_ACTIVE 
			
			// Get the virtual interface from the config database "vif"
			
			//assign m_wr_cfg to m_tb_cfg.m_wr_cfg
		

		end

    if(has_ragent) 
		begin
			//for read agent
			// set is_active to UVM_ACTIVE 
            
			// Get the virtual interface from the config database "vif"
			
			//assign m_rd_cfg to m_tb_cfg.m_rd_cfg
			
        end
		// assign local has_wagent & has_ragent variables to the variables in ram_env_config
      
                
		// set the m_tb_cfg object into UVM config DB "ram_env_config" 



endfunction
	

//-----------------  build() phase method  -------------------//
            
function void ram_base_test::build_phase(uvm_phase phase);
	// Create the instance for ram_env_config
 

    if(has_wagent)
		// Create the instance for  ram_wr_agent_config 
     

    if(has_ragent)
		// Create the instance for  ram_rd_agent_config
	

	//call function config_ram()
 
    super.build_phase(phase);
	// create the instance for ram_tb

endfunction


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_single_addr_test from ram_base_test;
class ram_single_addr_test extends ram_base_test;

  
   // Factory Registration
	

	// Declare the handle for  ram_single_vseq virtual sequence
 
	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
 	extern function new(string name = "ram_single_addr_test" , uvm_component parent);
	extern function void build_phase(uvm_phase phase);
	extern task run_phase(uvm_phase phase);
endclass

//-----------------  constructor new method  -------------------//

 // Define Constructor new() function



//-----------------  build() phase method  -------------------//
	  // In build phase call super.build_phase(phase);


//-----------------  run() phase method  -------------------//
task ram_single_addr_test::run_phase(uvm_phase phase);
	//raise objection
  
	//create instance for sequence
   
	//start the sequence wrt virtual sequencer
   
	//drop objection

endtask   


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_ten_addr_test from ram_base_test;
class ram_ten_addr_test extends ram_base_test;

  
   // Factory Registration


   // Declare the handle for  ram_ten_vseq virtual sequence
   
	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
 	extern function new(string name = "ram_ten_addr_test" , uvm_component parent);
	extern function void build_phase(uvm_phase phase);
	extern task run_phase(uvm_phase phase);
endclass

//-----------------  constructor new method  -------------------//

 // Define Constructor new() function



//-----------------  build() phase method  -------------------//
            

   // In build phase call super.build_phase(phase);


//-----------------  run() phase method  -------------------//
task ram_ten_addr_test::run_phase(uvm_phase phase);
	//raise objection
   
	//create instance for sequence
 
	//start the sequence wrt virtual sequencer

	//drop objection
   
endtask   


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_odd_addr_test from ram_base_test;
class ram_odd_addr_test extends ram_base_test;

  
	// Factory Registration
	

	// Declare the handle for  ram_odd_vseq virtual sequence
    
	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
 	extern function new(string name = "ram_odd_addr_test" , uvm_component parent);
	extern function void build_phase(uvm_phase phase);
	extern task run_phase(uvm_phase phase);
endclass

//-----------------  constructor new method  -------------------//

 // Define Constructor new() function



//-----------------  build() phase method  -------------------//
            
	  // In build phase call super.build_phase(phase);

//-----------------  run() phase method  -------------------//
task ram_odd_addr_test::run_phase(uvm_phase phase);
	//raise objection
   
	//create instance for sequence
    
	//start the sequence wrt virtual sequencer
   
	//drop objection
   
endtask   


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_even_addr_test from ram_base_test;
class ram_even_addr_test extends ram_base_test;

  
	// Factory Registration
	

	// Declare the handle for  ram_even_vseq virtual sequence
  
	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
 	extern function new(string name = "ram_even_addr_test" , uvm_component parent);
	extern function void build_phase(uvm_phase phase);
	extern task run_phase(uvm_phase phase);
endclass

//-----------------  constructor new method  -------------------//

 // Define Constructor new() function



//-----------------  build() phase method  -------------------//
	  // In build phase call super.build_phase(phase);

//-----------------  run() phase method  -------------------//
task ram_even_addr_test::run_phase(uvm_phase phase);
	//raise objection
    
	//create instance for sequence
 
	//start the sequence wrt virtual sequencer
 
	//drop objection
 
endtask   


