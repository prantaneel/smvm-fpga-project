// Code your design here
module matToCSR
  #(parameter n = 100)
  (
    output real vector[n
    input real mat[n][n],
    input real inputVector[n]
  );
  int NNZ = 0, K = 0;
  initial begin
    for(int i = 0; i < n; i++)
      for(int j = 0; j < n; j++)
        if(mat[i][j]!=0.0)
          NNZ++;
    real val[NNZ];
    int col[NNZ], rowPtr[n+1];
    for(int i = 0; i < n; i++)
      begin
        row[i] = K;
        for(int j = 0; j < n; j++)
          begin
            if(mat[i][j]!=0.0)
              begin
                val[K] = mat[i][j];
                col[K] = j;
                K++;
              end
          end
      end
    row[n] = K;
  end
endmodule

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
  