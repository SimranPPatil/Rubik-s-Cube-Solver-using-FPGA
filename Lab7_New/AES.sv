/*---------------------------------------------------------------------------
  --      AES.sv                                                           --
  --      Joe Meng                                                         --
  --      Fall 2013                                                        --
  --                                                                       --
  --      Modified by Po-Han Huang 03/09/2017                              --
  --                                                                       --
  --      For use with ECE 385 Experiment 9                                --
  --      Spring 2017 Distribution                                         --
  --      UIUC ECE Department                                              --
  ---------------------------------------------------------------------------*/

// AES decryption core.

// AES module interface with all ports, commented for Week 1
 module  AES ( input                 clk, 
                                     reset_n,
                                     run,
					//input        [31:0]  key_0, key_1, key_2, key_3,	//added from the other one
               input        [127:0]  msg_en,
                                     key,
               output logic [127:0]  msg_de,
               output logic          ready);

// Partial interface for Week 1
// Splitting the signals into 32-bit ones for compatibility with ModelSim
//module  AES ( input                clk,
//              input        [31:0]  key_0, key_1, key_2, key_3,
//              output logic [31:0]  keyschedule_out_0, keyschedule_out_1, keyschedule_out_2, keyschedule_out_3 );      
      
logic [1407:0] keyschedule; 
logic [1:0] num;
logic init, ark, isr, imc, isb, done;
logic [127:0] RoundKey, encrypt_in, encrypt_ark, encrypt_imc, encrypt_isb, encrypt_isr, encrypt_out, decrypt ;
logic [31:0] msg_32, out_32;

      
KeyExpansion keyexpansion_0(.clk(clk), 
                            .Cipherkey(key),
                            .KeySchedule(keyschedule)
                            );
 
assign {keyschedule_out_0, keyschedule_out_1, keyschedule_out_2, keyschedule_out_3} = keyschedule[127:0];

aes_fsm_control control(.clk(clk), .reset_n(reset_n), .run(run), .encrypt(encrypt_out), .keyschedule(keyschedule), .init(init), .ark(ark), .isr(isr), .imc(imc), .isb(isb), .done_sig(done), .roundkey(RoundKey), .num(num), .msg_32(msg_32));

AddRoundKey addroundkey(.msg(encrypt_out), .RoundKey(RoundKey), .Result(encrypt_ark));

InvShiftRow invshiftrow (.msg(encrypt_out), .Result(encrypt_isr));

InvMixColumns invmixcolumns(.in(msg_32), .out(out_32));

InvSubBytes subbytes_0(.clk(clk), .in(encrypt_out[7:0]), .out(encrypt_isb[7:0]));
InvSubBytes subbytes_1(.clk(clk), .in(encrypt_out[15:8]), .out(encrypt_isb[15:8]));
InvSubBytes subbytes_2(.clk(clk), .in(encrypt_out[23:16]), .out(encrypt_isb[23:16]));
InvSubBytes subbytes_3(.clk(clk), .in(encrypt_out[31:24]), .out(encrypt_isb[31:24]));
InvSubBytes subbytes_4(.clk(clk), .in(encrypt_out[39:32]), .out(encrypt_isb[39:32]));
InvSubBytes subbytes_5(.clk(clk), .in(encrypt_out[47:40]), .out(encrypt_isb[47:40]));
InvSubBytes subbytes_6(.clk(clk), .in(encrypt_out[55:48]), .out(encrypt_isb[55:48]));
InvSubBytes subbytes_7(.clk(clk), .in(encrypt_out[63:56]), .out(encrypt_isb[63:56]));
InvSubBytes subbytes_8(.clk(clk), .in(encrypt_out[71:64]), .out(encrypt_isb[71:64]));
InvSubBytes subbytes_9(.clk(clk), .in(encrypt_out[79:72]), .out(encrypt_isb[79:72]));
InvSubBytes subbytes_10(.clk(clk), .in(encrypt_out[87:80]), .out(encrypt_isb[87:80]));
InvSubBytes subbytes_11(.clk(clk), .in(encrypt_out[95:88]), .out(encrypt_isb[95:88]));
InvSubBytes subbytes_12(.clk(clk), .in(encrypt_out[103:96]), .out(encrypt_isb[103:96]));
InvSubBytes subbytes_13(.clk(clk), .in(encrypt_out[111:104]), .out(encrypt_isb[111:104]));
InvSubBytes subbytes_14(.clk(clk), .in(encrypt_out[119:112]), .out(encrypt_isb[119:112]));
InvSubBytes subbytes_15(.clk(clk), .in(encrypt_out[127:120]), .out(encrypt_isb[127:120]));

Decryption decryption(.clk(clk), .done(done), .encrypt(encrypt_out), .decrypt(decrypt), .ready(ready));

feedEncrypt feeder(.num(num),.out_32(out_32), .en_in(encrypt_out), .encrypt(encrypt_imc));

RegisterUnit reg_unit(.clk(clk), .ark(ark), .isr(isr), .isb(isb), .imc(imc), .init(init), .encrypt_ark(encrypt_ark), .encrypt_isr(encrypt_isr), .encrypt_isb(encrypt_isb), .encrypt_imc(encrypt_imc), .encrypt_in(encrypt_out), .encrypt_out(encrypt_out), .msg_en(msg_en));

always_ff @ (posedge clk)
begin
if(done == 1'b1)
	msg_de = decrypt;
end
// For week 2, write your own state machine here for AES decryption process.


            
endmodule