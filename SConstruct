import excons
import sys
import glob
import excons.tools.maya as maya

defines = []
if sys.platform == "win32":
   defines.append("NOMINMAX")

def CustomCompilerFlags(env):
   if sys.platform == "win32":
      env.Append(CCFLAGS=["/arch:AVX"])
   else:
      env.Append(CCFLAGS=["-mavx"])

targets = [
   {
      "name": "cvwrap",
      "type": "dynamicmodule",
      "prefix": "maya/plug-ins/%s" % maya.Version(nice=True),
      "bldprefix": maya.Version(),
      "ext": maya.PluginExt(),
      "defs": defines,
      "incdirs": ["src"],
      "srcs": glob.glob("src/*.cpp"),
      "custom": [maya.Require, CustomCompilerFlags],
      "libs": ([] if maya.Version(asString=False) < 2016 else ["clew"]),
      "install": {"maya/scripts": glob.glob("scripts/*")}
   }
]

maya.SetupMscver()

env = excons.MakeBaseEnv()

excons.DeclareTargets(env, targets)

Default(["cvwrap"])

