/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:   ram_rd_driver.sv

Description		:	Read Driver class for Dual port RAM TB
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/
//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


// Extend ram_rd_driver from uvm_driver parameterized by read_xtn
class ram_rd_driver extends uvm_driver #(read_xtn);

	// Factory Registration

	`uvm_component_utils(ram_rd_driver)

	// Declare virtual interface handle with RDR_MP as modport
	

	// Declare the ram_rd_agent_config handle as "m_cfg"




	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
     	
	extern function new(string name ="ram_rd_driver",uvm_component parent);
	extern function void build_phase(uvm_phase phase);
	extern function void connect_phase(uvm_phase phase);
	extern task run_phase(uvm_phase phase);
	extern task send_to_dut(read_xtn duv_xtn);
	extern function void report_phase(uvm_phase phase);
endclass

//-----------------  constructor new method  -------------------//
 


//-----------------  build() phase method  -------------------//

	// call super.build_phase(phase);
  	// get the config object using uvm_config_db 


//-----------------  connect() phase method  -------------------//
// in connect phase assign the configuration object's virtual interface
// to the driver's virtual interface instance(handle --> "vif")


//-----------------  run() phase method  -------------------//
// In forever loop
// Get the sequence item using seq_item_port
// Call send_to_dut task provided
// send the item_done to the sequencer using seq_item_port  




//-----------------  task send_to_dut() method  -------------------//


 task ram_rd_driver::send_to_dut (read_xtn duv_xtn);

   	// Print the transaction
    `uvm_info("RAM_RD_DRIVER",$sformatf("printing from driver \n %s", duv_xtn.sprint()),UVM_LOW) 
	repeat(5)
      	@(vif.rdr_cb);

    
    //Driving XTN
   	vif.rdr_cb.rd_address <= duv_xtn.address;
   	vif.rdr_cb.read <= duv_xtn.read;
  
   	repeat(2) 
		@(vif.rdr_cb);
  	duv_xtn.data  = vif.rdr_cb.data_out;
    //Removing data
   	vif.rdr_cb.rd_address <= '0;
   	vif.rdr_cb.read <= '0; 

    repeat(5)
		@(vif.rdr_cb);
	// increment drv_data_sent_cnt
  

 endtask 

 // UVM report_phase
	//In report phase display drv_data_sent_cnt






   







