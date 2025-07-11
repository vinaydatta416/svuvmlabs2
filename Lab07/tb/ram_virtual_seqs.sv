/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:   ram_virtual_seqs.sv

Description		:	Virtual Sequence class for Dual Port RAM TB
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/
//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------



//------------------------------------------------------------------------------
//
// SEQUENCE: Base RAM virtual sequence - base virtual sequence with objections from which 
// all virtual sequences can be derived
//
//------------------------------------------------------------------------------

   // Extend ram_vbase_seq from uvm_sequence parameterized by uvm_sequence_item;

class ram_vbase_seq extends uvm_sequence #(uvm_sequence_item);

	
	// Factory registration
	
	// Declare handles for ram_wr_sequencer, ram_rd_sequencer and ram_virtual_sequencer
	// as wr_seqrh, rd_seqrh, vsqrh
    
	// Handles for all the sequences
	ram_single_addr_wr_xtns single_wxtns;
	ram_single_addr_rd_xtns single_rxtns;

	ram_ten_wr_xtns ten_wxtns;
	ram_ten_rd_xtns ten_rxtns;

	ram_even_wr_xtns even_wxtns;
	ram_even_rd_xtns even_rxtns;

	ram_odd_wr_xtns odd_wxtns;
	ram_odd_rd_xtns odd_rxtns;


	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
 	extern function new(string name = "ram_vbase_seq");
	extern task body();
	
endclass : ram_vbase_seq  
//-----------------  constructor new method  -------------------//

// Add constructor 

//-----------------  task body() method  -------------------//

	// Assign virtual sequencer handle(m_sequencer) to vsqrh
	// Use $cast(vsqrh, m_sequencer)



	

	// Assign the sub-sequencer handles with the sub-sequencer handles
	// of the virtual sequencer
	


   

//------------------------------------------------------------------------------
//                 single address sequence

//------------------------------------------------------------------------------
// Extend ram_single_vseq from ram_vbase_seq
class ram_single_vseq extends ram_vbase_seq;

    // Factory registration
	

     //------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
 	extern function new(string name = "ram_single_vseq");
	extern task body();
	
endclass : ram_single_vseq 
 
//-----------------  constructor new method  -------------------//

// Add constructor 

//-----------------  task body() method  -------------------//
	// call super.body();
	// create the instance of ram_single_addr_wr_xtns & ram_single_addr_rd_xtns
	//start write and read sequences on respective sequencers


//------------------------------------------------------------------------------
//                 ten address sequence

//------------------------------------------------------------------------------
// Extend ram_ten_vseq from uvm_sequence
class ram_ten_vseq extends ram_vbase_seq;

       // Factory registration
	
	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
 	extern function new(string name = "ram_ten_vseq");
	extern task body();
endclass : ram_ten_vseq  

//-----------------  constructor new method  -------------------//

// Add constructor 


//-----------------  task body() method  -------------------//


	// call super.body();
	// create the instance of ram_ten_wr_xtns & ram_ten_rd_xtns
	//start write and read sequences on respective sequencers

//------------------------------------------------------------------------------
//                 odd sequence

//------------------------------------------------------------------------------
// Extend ram_odd_vseq from ram_vbase_seq
class ram_odd_vseq extends ram_vbase_seq;

    // Factory Registration


	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
 	extern function new(string name = "ram_odd_vseq");
	extern task body();
endclass : ram_odd_vseq  

//-----------------  constructor new method  -------------------//

// Add constructor 

//-----------------  task body() method  -------------------//



	// call super.body();
	// create the instance of ram_odd_wr_xtns & ram_odd_rd_xtns
	//start write and read sequences on respective sequencers


//------------------------------------------------------------------------------
//                 even sequence

//------------------------------------------------------------------------------
// Extend ram_even_vseq from ram_vbase_seq
class ram_even_vseq extends ram_vbase_seq;

    // Factory Registration
	

	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
 	extern function new(string name = "ram_even_vseq");
	extern task body();
endclass : ram_even_vseq  
//-----------------  constructor new method  -------------------//

// Add constructor 

//-----------------  task body() method  -------------------//



	// call super.body();
	// create the instance of ram_even_wr_xtns & ram_even_rd_xtns
	//start write and read sequences on respective sequencers


