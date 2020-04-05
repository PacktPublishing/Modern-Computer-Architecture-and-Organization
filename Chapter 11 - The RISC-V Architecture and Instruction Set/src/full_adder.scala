import chisel3._

class FullAdder extends Module {
  val io = IO(new Bundle {
    val a     = Input(UInt(1.W))
    val b     = Input(UInt(1.W))
    val c_in  = Input(UInt(1.W))
    val s     = Output(UInt(1.W))
    val c_out = Output(UInt(1.W))
  })

  io.s := (io.a ^ io.b) ^ io.c_in
  io.c_out := (io.a & io.b) | ((io.a ^ io.b) & io.c_in)
}
