/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		: 	ram_vtest_lib.sv

Description 	: 	Test case for Dual port RAM
  
Author Name		: 	Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/
// Extend ram_base_test from uvm_test;
class ram_base_test extends uvm_test;

   // Factory Registration
	`uvm_component_utils(ram_base_test)

  
    // Declare the ram_env and ram_wr_agent_config handles as ram_envh and m_ram_cfg respectively
    
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
	// set is_active to UVM_ACTIVE 
 
	// Get the virtual interface from the config database "vif"
	
endfunction
	

//-----------------  build() phase method  -------------------//
            
function void ram_base_test::build_phase(uvm_phase phase);
	// Create the instance of ram_wr_agent_config
 
	//call function config_ram()
   
	
	// set the config object into UVM config DB  
	
 	super.build_phase(phase);
	// create the instance for ram_env

endfunction


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

  // Extend ram_single_addr_test from ram_base_test;
class ram_single_addr_test extends ram_base_test;

  
	// Factory Registration
	`uvm_component_utils(ram_single_addr_test)

   //Declare the handle for  ram_rand_wr_xtns sequence
    ram_single_addr_wr_xtns ram_seqh;
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
function ram_single_addr_test::new(string name = "ram_single_addr_test" , uvm_component parent);
	super.new(name,parent);
endfunction


//-----------------  build() phase method  -------------------//
            
function void ram_single_addr_test::build_phase(uvm_phase phase);
    super.build_phase(phase);
endfunction


//-----------------  run() phase method  -------------------//
 task ram_single_addr_test::run_phase(uvm_phase phase);
	//raise objection
    phase.raise_objection(this);
	//create instance for sequence
    ram_seqh=ram_single_addr_wr_xtns::type_id::create("ram_seqh");
	//start the sequence on the write agent's sequencer
    ram_seqh.start(ram_envh.wr_agnth.seqrh);
	//drop objection
    phase.drop_objection(this);
	endtask   


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_ten_addr_test from ram_base_test;
class ram_ten_addr_test extends ram_base_test;

  
	// Factory Registration
	`uvm_component_utils(ram_ten_addr_test)

   // Declare the handle for  ram_ten_wr_xtns sequence
    ram_ten_wr_xtns ram_seqh;
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
function ram_ten_addr_test::new(string name = "ram_ten_addr_test" , uvm_component parent);
	super.new(name,parent);
endfunction


//-----------------  build() phase method  -------------------//
            
function void ram_ten_addr_test::build_phase(uvm_phase phase);
    super.build_phase(phase);
endfunction


//-----------------  run() phase method  -------------------//
task ram_ten_addr_test::run_phase(uvm_phase phase);
	//raise objection
    phase.raise_objection(this);
	//create instance for sequence
    ram_seqh=ram_ten_wr_xtns::type_id::create("ram_seqh");
	//start the sequence on the write agent's sequencer
    ram_seqh.start(ram_envh.wr_agnth.seqrh);
	//drop objection
    phase.drop_objection(this);
	endtask   


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------
// Extend ram_odd_addr_test from ram_base_test;
class ram_odd_addr_test extends ram_base_test;

  
	// Factory Registration
	`uvm_component_utils(ram_odd_addr_test)

   // Declare the handle for  ram_odd_wr_xtns sequence
    ram_odd_wr_xtns ram_seqh;
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
function ram_odd_addr_test::new(string name = "ram_odd_addr_test" , uvm_component parent);
	super.new(name,parent);
endfunction


//-----------------  build() phase method  -------------------//
            
function void ram_odd_addr_test::build_phase(uvm_phase phase);
    super.build_phase(phase);
endfunction


//-----------------  run() phase method  -------------------//
task ram_odd_addr_test::run_phase(uvm_phase phase);
	//raise objection
    phase.raise_objection(this);
	//create instance for sequence
    ram_seqh=ram_odd_wr_xtns::type_id::create("ram_seqh");
	//start the sequence on the write agent's sequencer 
    ram_seqh.start(ram_envh.wr_agnth.seqrh);
	//drop objection
    phase.drop_objection(this);
endtask   


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_even_addr_test from ram_base_test;
class ram_even_addr_test extends ram_base_test;

  
	// Factory Registration
	`uvm_component_utils(ram_even_addr_test)

   // Declare the handle for  ram_even_wr_xtns sequence
   ram_even_wr_xtns ram_seqh;
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
function ram_even_addr_test::new(string name = "ram_even_addr_test" , uvm_component parent);
	super.new(name,parent);
endfunction


//-----------------  build() phase method  -------------------//
            
function void ram_even_addr_test::build_phase(uvm_phase phase);
	super.build_phase(phase);
endfunction


//-----------------  run() phase method  -------------------//
task ram_even_addr_test::run_phase(uvm_phase phase);
	//raise objection
    phase.raise_objection(this);
	//create instance for sequence
    ram_seqh=ram_even_wr_xtns::type_id::create("ram_seqh");
	//start the sequence on the write agent's sequencer
    ram_seqh.start(ram_envh.wr_agnth.seqrh);
	//drop objection
    phase.drop_objection(this);
endtask   