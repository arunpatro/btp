require 'nn'

-------------------------------------------------------
-- This is a straight CNN without any reduction in size
-------------------------------------------------------
-- lenet = nn.Sequential()
-- lenet:add(nn.SpatialConvolution(1,4,5,5,1,1,2,2))
-- lenet:add(nn.ReLU())
-- lenet:add(nn.SpatialConvolution(4,8,3,3,1,1,1,1))
-- lenet:add(nn.ReLU())
-- lenet:add(nn.SpatialConvolution(8,16,3,3,1,1,1,1))
-- lenet:add(nn.ReLU())
-- -- lenet:add(nn.SpatialConvolution(16,64,5,5,1,1,2,2))
-- -- lenet:add(nn.ReLU())
-- -- lenet:add(nn.SpatialFullConvolution(64,16,5,5,1,1,2,2))
-- -- lenet:add(nn.ReLU())
-- lenet:add(nn.SpatialConvolution(16,8,3,3,1,1,1,1))
-- lenet:add(nn.ReLU())
-- lenet:add(nn.SpatialConvolution(8,4,3,3,1,1,1,1))
-- lenet:add(nn.ReLU())
-- lenet:add(nn.SpatialConvolution(4,1,5,5,1,1,2,2))
-- lenet:add(nn.ReLU())

-- params, gg = lenet:getParameters()
-- print(#params)

-- torch.save('lenet-test.t7',lenet)

---------------------------------------------------
-- This is for producing one value for MSE
---------------------------------------------------
lenet = nn.Sequential()
lenet:add(nn.SpatialConvolution(1,4,7,7))
lenet:add(nn.ReLU())
lenet:add(nn.SpatialConvolution(4,8,5,5))
lenet:add(nn.ReLU())
lenet:add(nn.SpatialConvolution(8,16,5,5))
lenet:add(nn.ReLU())
lenet:add(nn.SpatialMaxPooling(2,2,2,2))
lenet:add(nn.SpatialConvolution(16,64,5,5))
lenet:add(nn.ReLU())
lenet:add(nn.SpatialConvolution(64,1,3,3))
lenet:add(nn.ReLU())
lenet:add(nn.SpatialConvolution(1,1,3,3))
lenet:add(nn.ReLU())
-- lenet:add(nn.SpatialConvolution(256,1,5,5))
-- lenet:add(nn.ReLU())

params, gg = lenet:getParameters()
print(#params)


torch.save('lenet-one.t7',lenet)