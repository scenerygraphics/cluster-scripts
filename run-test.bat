rem Adjust to your local settings
set SCENERYPATH=\\master\path\to\scenery\base
set MASTERNODE=tcp://10.1.2.201:6666

net use S: %SCENERYPATH%
java -cp "S:/scenery/target/*;S:/scenery/target/dependency/*" -ea -Xmx16g -Dscenery.Renderer=VulkanRenderer -Dscenery.LogLevel=info -Dscenery.Renderer.Device=Quadro -Dscenery.RunFullscreen=true -Dscenery.VulkanRenderer.UseOpenGLSwapchain=true -Dscenery.Renderer.Framelock=true -Dscenery.MasterNode=tcp://10.1.2.201:6666 -Dscenery.ScreenName=%2 -Dscenery.Renderer.Config=DeferredShadingStereo.yml -Dscenery.vr.Active=true -Dscenery.VulkanRenderer.EnableValidations=false -DRenderer.ForceUndecoratedWindow=true org.junit.runner.JUnitCore %1 > S:\%2.log 2>&1
net use S: /delete /yes
