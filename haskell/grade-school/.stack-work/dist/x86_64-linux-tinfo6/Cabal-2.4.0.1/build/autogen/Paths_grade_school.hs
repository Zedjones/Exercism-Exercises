{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_grade_school (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,2] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/grade-school/.stack-work/install/x86_64-linux-tinfo6/03f0b7c6e91531f4eb614261d5262196d6535667f2cee5e34a3ad11c463cd8fa/8.6.5/bin"
libdir     = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/grade-school/.stack-work/install/x86_64-linux-tinfo6/03f0b7c6e91531f4eb614261d5262196d6535667f2cee5e34a3ad11c463cd8fa/8.6.5/lib/x86_64-linux-ghc-8.6.5/grade-school-0.1.0.2-G8AzlqzoObpLwNdfFiT9tp"
dynlibdir  = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/grade-school/.stack-work/install/x86_64-linux-tinfo6/03f0b7c6e91531f4eb614261d5262196d6535667f2cee5e34a3ad11c463cd8fa/8.6.5/lib/x86_64-linux-ghc-8.6.5"
datadir    = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/grade-school/.stack-work/install/x86_64-linux-tinfo6/03f0b7c6e91531f4eb614261d5262196d6535667f2cee5e34a3ad11c463cd8fa/8.6.5/share/x86_64-linux-ghc-8.6.5/grade-school-0.1.0.2"
libexecdir = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/grade-school/.stack-work/install/x86_64-linux-tinfo6/03f0b7c6e91531f4eb614261d5262196d6535667f2cee5e34a3ad11c463cd8fa/8.6.5/libexec/x86_64-linux-ghc-8.6.5/grade-school-0.1.0.2"
sysconfdir = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/grade-school/.stack-work/install/x86_64-linux-tinfo6/03f0b7c6e91531f4eb614261d5262196d6535667f2cee5e34a3ad11c463cd8fa/8.6.5/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "grade_school_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "grade_school_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "grade_school_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "grade_school_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "grade_school_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "grade_school_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
