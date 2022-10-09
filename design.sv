// Code your design here
module rowMul
  #(parameter nnz=100, n=100)
  (
  	output real rowOutput,
    input int rowIndex,
    input real inputVector[n],
    input real val[nnz],
    input int col[nnz],
    input int rowPtr[n+1]
  );
  real tempVar = 0;
  initial begin
    #1
    $display("ROW INDEX : ", rowIndex);
    for(int i = rowPtr[rowIndex]; i < rowPtr[rowIndex+1]; i++)
      begin
        $display("VAL : ", val[i], ", COL : ", col[i], ", VEC : ", inputVector[col[i]]);
        tempVar = tempVar + val[i]*inputVector[col[i]];
      end
    
  end
  assign rowOutput = tempVar;
endmodule
  