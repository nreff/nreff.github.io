︠00a2d795-4706-4319-aa72-4177400bc1afai︠
%hide
%auto
DATA="foo.data/"
︡799a9f8a-6164-4d31-9ce0-78a9df3e944b︡{"auto":true}︡
︠66586429-ebd7-41a8-a1cc-1ed942b42dc3︠
#Free Undamped Motion

t = var('t')
x = function('x', t)
m = 1/2
beta = 0
k = 6
Driving_Force = 0
DE = m*diff(x,t,2)+beta*diff(x,t)+k*x==Driving_Force
SOLUTION=desolve(DE, x)
show(SOLUTION)
︡fded5614-4bea-433d-b817-ef5dc07fb37b︡{"tex":{"tex":"k_{2} \\cos\\left(2 \\, \\sqrt{3} t\\right) + k_{1} \\sin\\left(2 \\, \\sqrt{3} t\\right)","display":true}}︡
︠cab264d5-d9fd-4b2a-b958-1393bd1edaa1︠
#Free Undamped Motion (IVP)

IVP=desolve(DE, x,[0,0.25,1])
show(expand(IVP))
plot1=plot(IVP,(t,0,15),rgbcolor=(1,0,1))
show(plot1)
︡1b4f3c7d-9235-4c1f-92fa-ffb34579043c︡{"tex":{"tex":"\\frac{1}{6} \\, \\sqrt{3} \\sin\\left(2 \\, \\sqrt{3} t\\right) + \\frac{1}{4} \\, \\cos\\left(2 \\, \\sqrt{3} t\\right)","display":true}}︡{"once":false,"file":{"show":true,"uuid":"b626f49d-fc63-426d-a5fc-120424389afd","filename":"/projects/c142975c-70a2-4325-9c37-9b4e2cbb0ac7/.sage/temp/compute8dc2/9140/tmp_c3CbTw.png"}}︡
︠3defcbde-90ff-485e-b820-8eb3bace9184︠
#Free Undamped Motion (IVPs)

plot1=plot(desolve(DE, x,[0,0.25,1]),(t,0,15),rgbcolor=(1,0,0))
plot2=plot(desolve(DE, x,[0,0,0]),(t,0,15),rgbcolor=(0,1,0))
plot3=plot(desolve(DE, x,[0,-0.5,0]),(t,0,15),rgbcolor=(0,0,1))
show(plot1+plot2+plot3)
︡1f75dfb5-e83e-442c-b7cd-e0083c0bf79a︡{"once":false,"file":{"show":true,"uuid":"945854f3-f415-4d82-b1ae-ab68c3ca7cea","filename":"/projects/c142975c-70a2-4325-9c37-9b4e2cbb0ac7/.sage/temp/compute8dc2/25527/tmp_WA_FHS.png"}}︡
︠0524dd38-3e8d-46d3-bc7e-776702866ff8︠
#Free Damped Motion

t = var('t')
x = function('x', t)
m = 1/2
beta = sqrt(12) #Underdamped beta=1/2, Overdamped beta=5, Critically damped beta=sqrt(12)
k = 6
Driving_Force = 0
DE = m*diff(x,t,2)+beta*diff(x,t)+k*x==Driving_Force
SOLUTION=desolve(DE, x)
show(expand(SOLUTION))
︡e4904213-32c9-48f5-a58b-8106387b6547︡{"tex":{"tex":"k_{2} t e^{\\left(-2 \\, \\sqrt{3} t\\right)} + k_{1} e^{\\left(-2 \\, \\sqrt{3} t\\right)}","display":true}}︡
︠cc67f211-38e0-442c-bb13-9fd22e8109bd︠
#Free Damped Motion IVP

IVP=desolve(DE, x,[0,0.25,1])
show(expand(IVP))
plot1=plot(IVP,(t,0,15),rgbcolor=(1,0,0))
show(plot1)
︡140b4589-124a-48f8-8f80-ddc393b2e913︡{"tex":{"tex":"\\frac{1}{2} \\, \\sqrt{3} t e^{\\left(-2 \\, \\sqrt{3} t\\right)} + t e^{\\left(-2 \\, \\sqrt{3} t\\right)} + \\frac{1}{4} \\, e^{\\left(-2 \\, \\sqrt{3} t\\right)}","display":true}}︡{"once":false,"file":{"show":true,"uuid":"850d5a97-67bd-432b-9984-39148eba6330","filename":"/projects/c142975c-70a2-4325-9c37-9b4e2cbb0ac7/.sage/temp/compute8dc2/9140/tmp_LKYgRj.png"}}︡
︠3f3aedec-3cc7-4e77-b7e5-dfcc7895126b︠
#Free Damped Motion (IVPs)

plot1=plot(desolve(DE, x,[0,0.25,1]),(t,0,15),rgbcolor=(1,0,0))
plot2=plot(desolve(DE, x,[0,0,0]),(t,0,15),rgbcolor=(0,1,0))
plot3=plot(desolve(DE, x,[0,-0.5,0]),(t,0,15),rgbcolor=(0,0,1))
show(plot1+plot2+plot3)
︡81d391f9-956e-46d8-8177-2dffd98086bb︡{"once":false,"file":{"show":true,"uuid":"1e3e60df-1cea-448e-9839-5345c385af34","filename":"/projects/c142975c-70a2-4325-9c37-9b4e2cbb0ac7/.sage/temp/compute8dc2/25527/tmp_z67URG.png"}}︡
︠10cf6c66-f599-4b07-a367-a4b0dff50cdf︠
#Driven Motion

t = var('t')
x = function('x', t)
m = 1/2
beta = 1/2 #Underdamped beta=1/2, Overdamped beta=5, Critically damped beta=sqrt(12)
k = 6
Driving_Force = 0.5*cos(3*t)
DE = m*diff(x,t,2)+beta*diff(x,t)+k*x==Driving_Force
SOLUTION=desolve(DE, x)
show(expand(SOLUTION))
︡1eba3505-fd7e-4742-808e-326a6b3b189a︡{"tex":{"tex":"k_{2} \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) e^{\\left(-\\frac{1}{2} \\, t\\right)} + k_{1} e^{\\left(-\\frac{1}{2} \\, t\\right)} \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) + \\frac{1}{6} \\, \\cos\\left(3 \\, t\\right) + \\frac{1}{6} \\, \\sin\\left(3 \\, t\\right)","display":true}}︡
︠542becbe-d1dc-48d0-8f81-8fee6151322b︠
#Driven Motion IVP

IVP=desolve(DE, x,[0,-1,1])
show(expand(IVP))
plot1=plot(IVP,(t,0,15),rgbcolor=(1,0,0))
show(plot1)
︡1a371f86-f2b4-40e3-bd6e-bd4f75bffb46︡{"tex":{"tex":"-\\frac{1}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t\\right)} \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) - \\frac{7}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) e^{\\left(-\\frac{1}{2} \\, t\\right)} + \\frac{1}{6} \\, \\cos\\left(3 \\, t\\right) + \\frac{1}{6} \\, \\sin\\left(3 \\, t\\right)","display":true}}︡{"once":false,"file":{"show":true,"uuid":"400dd0a1-5ac8-4649-97c8-d27880631737","filename":"/projects/c142975c-70a2-4325-9c37-9b4e2cbb0ac7/.sage/temp/compute8dc2/25527/tmp_XxTP_N.png"}}︡
︠2c06a0e7-93fa-42a1-8d9a-b7d550787b21︠
#Driven Motion (IVPs)

plot1=plot(desolve(DE, x,[0,-1,1]),(t,0,15),rgbcolor=(1,0,0))
plot2=plot(desolve(DE, x,[0,0,0]),(t,0,15),rgbcolor=(0,1,0))
plot3=plot(desolve(DE, x,[0,0.5,0]),(t,0,15),rgbcolor=(0,0,1))
show(plot1+plot2+plot3)
︡b2e6e7db-9e1b-479d-8c8a-60a174d96e15︡{"once":false,"file":{"show":true,"uuid":"8ea62109-6001-48c7-a385-a7cf84706dab","filename":"/projects/c142975c-70a2-4325-9c37-9b4e2cbb0ac7/.sage/temp/compute8dc2/25527/tmp_IdTxCF.png"}}︡
︠9a635af9-e2d1-448a-8bbd-7a92a2dddc01︠
plot4=plot(1/6*sin(3*t)+1/6*cos(3*t),(t,0,15),rgbcolor=(0,0,0))
show(plot1+plot2+plot3+plot4)
︡6c0e6c4b-bc18-4a9a-ba08-36c74345592a︡{"once":false,"file":{"show":true,"uuid":"88aa1aaa-4f39-4e1f-82ef-42ddc3eb7237","filename":"/projects/c142975c-70a2-4325-9c37-9b4e2cbb0ac7/.sage/temp/compute8dc2/25527/tmp_gv3z9I.png"}}︡
︠214bc58d-c997-49f6-bc2c-836891b09a78︠
#Driven Motion with Switch (from 1 to -1 @ t=10)

t = var('t')
x = function('x', t)
m = 1/2
beta = 1/2 #Underdamped beta=1/2, Overdamped beta=5, Critically damped beta=sqrt(12)
k = 6
Driving_Force = 1-2*unit_step(t-10) 
DE = m*diff(x,t,2)+beta*diff(x,t)+k*x==Driving_Force
SOLUTION=desolve(DE, x)
show(expand(SOLUTION))
︡2713c1ac-aa4e-4c14-9ef1-59a92bca9d7d︡{"tex":{"tex":"\\frac{1}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} \\mathrm{sgn}\\left(t - 10\\right) \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) + k_{2} \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) e^{\\left(-\\frac{1}{2} \\, t\\right)} + \\frac{1}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} \\mathrm{sgn}\\left(t - 10\\right) + k_{1} e^{\\left(-\\frac{1}{2} \\, t\\right)} \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) + \\frac{1}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) + \\frac{1}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} - \\frac{1}{6} \\, \\mathrm{sgn}\\left(t - 10\\right)","display":true}}︡
︠9e128df3-3cd2-4d56-ad59-d17e99b6176f︠
#Driven Motion IVP

IVP=desolve(DE, x,[0,-1,1])
show(expand(IVP))
plot1=plot(IVP,(t,0,30),rgbcolor=(1,0,0))
show(plot1)
︡02c3fdb4-9db1-4fcd-9d42-ebeefd138b52︡{"tex":{"tex":"\\frac{1}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} \\mathrm{sgn}\\left(t - 10\\right) \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) + \\frac{1}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} \\mathrm{sgn}\\left(t - 10\\right) + \\frac{1}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) + \\frac{5}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t\\right)} \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) - \\frac{7}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) e^{\\left(-\\frac{1}{2} \\, t\\right)} + \\frac{1}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} - \\frac{1}{6} \\, \\mathrm{sgn}\\left(t - 10\\right)","display":true}}︡{"once":false,"file":{"show":true,"uuid":"a27467c6-c53a-43bc-9bb7-f3a6bac37187","filename":"/projects/c142975c-70a2-4325-9c37-9b4e2cbb0ac7/.sage/temp/compute8dc2/25527/tmp_Cu3fuF.png"}}︡
︠878a1a47-577b-46f0-a264-8b8cde8916cdi︠
︡fd91b33a-ddd2-4504-b6bf-966539d98292︡
︠710b39e0-1ccb-40d0-833c-44a518c0c76f︠
#Driven Motion with Driving Force = 1 (to find transient terms)

t = var('t')
x = function('x', t)
m = 1/2
beta = 1/2 #Underdamped beta=1/2, Overdamped beta=5, Critically damped beta=sqrt(12)
k = 6
Driving_Force = 1 
DE2 = m*diff(x,t,2)+beta*diff(x,t)+k*x==Driving_Force
SOLUTION=desolve(DE2, x)
show(expand(SOLUTION))
︡e346f5a5-2efc-41d5-ab31-4351bd012c1c︡{"tex":{"tex":"k_{2} \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) e^{\\left(-\\frac{1}{2} \\, t\\right)} + k_{1} e^{\\left(-\\frac{1}{2} \\, t\\right)} \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) + \\frac{1}{6}","display":true}}︡
︠d72c49b6-a401-4219-8d21-a6492a9f48a9︠
IVP2=desolve(DE2, x,[0,-1,1])
show(expand(IVP2))
plot1=plot(IVP,(t,0,30),rgbcolor=(1,0,0))
plot2=plot(IVP2,(t,0,30),rgbcolor=(0,1,0))
show(plot1+plot2)
︡82d50f8e-3092-44b2-b634-180bc22ee5b0︡{"tex":{"tex":"\\frac{5}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t\\right)} \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) - \\frac{7}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) e^{\\left(-\\frac{1}{2} \\, t\\right)} + \\frac{1}{6}","display":true}}︡{"once":false,"file":{"show":true,"uuid":"3e8572e5-9121-4e0b-ac57-49b60c4aae2e","filename":"/projects/c142975c-70a2-4325-9c37-9b4e2cbb0ac7/.sage/temp/compute8dc2/25527/tmp_8eQfKf.png"}}︡
︠e9cd6f88-dbd9-4c2a-b27b-ebce7e62f1eb︠
#Driven Motion with Switch (from 1 to -1 @ t=10)

t = var('t')
x = function('x', t)
m = 1/2
beta = 1/2 #Underdamped beta=1/2, Overdamped beta=5, Critically damped beta=sqrt(12)
k = 6
Driving_Force = 1-2*unit_step(t-10)+2*unit_step(t-20) 
DE3 = m*diff(x,t,2)+beta*diff(x,t)+k*x==Driving_Force
SOLUTION=desolve(DE3, x)
show(expand(SOLUTION))
︡cf5fb6be-11bc-40ee-b025-8b8dc5d1bd1e︡{"tex":{"tex":"\\frac{1}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} \\mathrm{sgn}\\left(t - 10\\right) \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) - \\frac{1}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t + 10\\right)} \\mathrm{sgn}\\left(t - 20\\right) \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t - 10 \\, \\sqrt{47}\\right) + k_{2} \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) e^{\\left(-\\frac{1}{2} \\, t\\right)} + \\frac{1}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} \\mathrm{sgn}\\left(t - 10\\right) - \\frac{1}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t - 10 \\, \\sqrt{47}\\right) e^{\\left(-\\frac{1}{2} \\, t + 10\\right)} \\mathrm{sgn}\\left(t - 20\\right) + k_{1} e^{\\left(-\\frac{1}{2} \\, t\\right)} \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) + \\frac{1}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) - \\frac{1}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t + 10\\right)} \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t - 10 \\, \\sqrt{47}\\right) - \\frac{1}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t - 10 \\, \\sqrt{47}\\right) e^{\\left(-\\frac{1}{2} \\, t + 10\\right)} + \\frac{1}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} - \\frac{1}{6} \\, \\mathrm{sgn}\\left(t - 10\\right) + \\frac{1}{6} \\, \\mathrm{sgn}\\left(t - 20\\right) + \\frac{1}{6}","display":true}}︡
︠6227bf46-1b7d-4dee-aa93-d143aaab2a58︠
IVP3=desolve(DE3, x,[0,-1,1])
show(expand(IVP3))
plot1=plot(IVP,(t,0,30),rgbcolor=(1,0,0))
plot2=plot(IVP2,(t,0,30),rgbcolor=(0,1,0))
plot3=plot(IVP3,(t,0,30),rgbcolor=(0,0,1))
show(plot1+plot2+plot3)
︡56ef1027-7690-4d46-8bac-f683e9fb8f9a︡{"tex":{"tex":"\\frac{1}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} \\mathrm{sgn}\\left(t - 10\\right) \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) - \\frac{1}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t + 10\\right)} \\mathrm{sgn}\\left(t - 20\\right) \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t - 10 \\, \\sqrt{47}\\right) + \\frac{1}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} \\mathrm{sgn}\\left(t - 10\\right) - \\frac{1}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t - 10 \\, \\sqrt{47}\\right) e^{\\left(-\\frac{1}{2} \\, t + 10\\right)} \\mathrm{sgn}\\left(t - 20\\right) + \\frac{1}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) - \\frac{1}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t + 10\\right)} \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t - 10 \\, \\sqrt{47}\\right) + \\frac{5}{282} \\, \\sqrt{47} e^{\\left(-\\frac{1}{2} \\, t\\right)} \\sin\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) - \\frac{7}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t\\right) e^{\\left(-\\frac{1}{2} \\, t\\right)} - \\frac{1}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t - 10 \\, \\sqrt{47}\\right) e^{\\left(-\\frac{1}{2} \\, t + 10\\right)} + \\frac{1}{6} \\, \\cos\\left(\\frac{1}{2} \\, \\sqrt{47} t - 5 \\, \\sqrt{47}\\right) e^{\\left(-\\frac{1}{2} \\, t + 5\\right)} - \\frac{1}{6} \\, \\mathrm{sgn}\\left(t - 10\\right) + \\frac{1}{6} \\, \\mathrm{sgn}\\left(t - 20\\right) + \\frac{1}{6}","display":true}}︡{"once":false,"file":{"show":true,"uuid":"a5f36a49-abbf-43f3-b81a-835012cff9b6","filename":"/projects/c142975c-70a2-4325-9c37-9b4e2cbb0ac7/.sage/temp/compute8dc2/25527/tmp_k7sIZx.png"}}︡
︠1a946643-1534-43f3-89bb-99807b349210︠









