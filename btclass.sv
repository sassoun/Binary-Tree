// A class for the binary tree homework problem.
//

class btclass;
 btclass lpt;
 btclass gpt;
 real value;

 function automatic void add(input btclass nn);
   begin
     if(nn.value < value) begin
       if(lpt) lpt.add(nn); else lpt=nn;
     end else begin
       if(gpt) gpt.add(nn); else gpt=nn;
     end
     return;
   end
 endfunction





 function automatic void printascending;
   begin
// -----------------------------------------------
// values are alligned from smallest to largest

 if(lpt)
	begin
		lpt.printascending();
		$display("%d", value);
	end
 
 if (gpt)
	begin
		gpt.printascending();	
	end


// ----------------------------------------------
   end
 endfunction
 




 function automatic void printdescending;
   begin
// ------------------------------------------------
// values are alligned from largest to smallest

 if (gpt)
	begin
		gpt.printdescending();	
		$display("%d", value);
	end

 if(lpt)
	begin
		lpt.printdescending();
	end



// -------------------------------------------------
   end
 endfunction





 function new(input real vl);
   begin
     value=vl;
     lpt=null;
     gpt=null;
   end
 endfunction


endclass

