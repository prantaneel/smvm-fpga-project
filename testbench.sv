module tb;
  real rowOutput, inputVector[3] = '{1.0, 2.0, 3.0}, val[3] = '{1.5, 2.5, 2.5};
  int rowIndex = 1, col[3] = '{1, 0, 1}, rowPtr[4] = '{0, 1, 3, 3};
  rowMul #(.nnz(3), .n(3)) inst(.rowOutput(rowOutput), .rowIndex(rowIndex), .inputVector(inputVector), .val(val), .col(col), .rowPtr(rowPtr));
  int delay = 10;
  initial begin
    #delay
    $display(rowOutput);
  end
endmodule
