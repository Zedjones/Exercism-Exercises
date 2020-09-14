{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
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

bindir     = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/grade-school/.stack-work/install/x86_64-linux-tinfo6/c0eabb5fa0339aa40a52ff5992909c8ec896666a77fdf4897307a3fdbdf5cb26/8.2.2/bin"
libdir     = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/grade-school/.stack-work/install/x86_64-linux-tinfo6/c0eabb5fa0339aa40a52ff5992909c8ec896666a77fdf4897307a3fdbdf5cb26/8.2.2/lib/x86_64-linux-ghc-8.2.2/grade-school-0.1.0.2-5ArKQoEE3OLCtufp6PjHIe-test"
dynlibdir  = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/grade-school/.stack-work/install/x86_64-linux-tinfo6/c0eabb5fa0339aa40a52ff5992909c8ec896666a77fdf4897307a3fdbdf5cb26/8.2.2/lib/x86_64-linux-ghc-8.2.2"
datadir    = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/grade-school/.stack-work/install/x86_64-linux-tinfo6/c0eabb5fa0339aa40a52ff5992909c8ec896666a77fdf4897307a3fdbdf5cb26/8.2.2/share/x86_64-linux-ghc-8.2.2/grade-school-0.1.0.2"
libexecdir = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/grade-school/.stack-work/install/x86_64-linux-tinfo6/c0eabb5fa0339aa40a52ff5992909c8ec896666a77fdf4897307a3fdbdf5cb26/8.2.2/libexec/x86_64-linux-ghc-8.2.2/grade-school-0.1.0.2"
sysconfdir = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/grade-school/.stack-work/install/x86_64-linux-tinfo6/c0eabb5fa0339aa40a52ff5992909c8ec896666a77fdf4897307a3fdbdf5cb26/8.2.2/etc"

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
