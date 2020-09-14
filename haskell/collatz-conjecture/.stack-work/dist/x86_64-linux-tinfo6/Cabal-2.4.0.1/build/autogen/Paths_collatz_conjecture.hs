{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_collatz_conjecture (
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
version = Version [1,2,0,2] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/collatz-conjecture/.stack-work/install/x86_64-linux-tinfo6/dde2a86c8841d644fcc5d00f0f4e1af3837ee63c38ea80ee87c4781cea28ab30/8.6.5/bin"
libdir     = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/collatz-conjecture/.stack-work/install/x86_64-linux-tinfo6/dde2a86c8841d644fcc5d00f0f4e1af3837ee63c38ea80ee87c4781cea28ab30/8.6.5/lib/x86_64-linux-ghc-8.6.5/collatz-conjecture-1.2.0.2-sriDJ1BQX11lv8jL60vpi"
dynlibdir  = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/collatz-conjecture/.stack-work/install/x86_64-linux-tinfo6/dde2a86c8841d644fcc5d00f0f4e1af3837ee63c38ea80ee87c4781cea28ab30/8.6.5/lib/x86_64-linux-ghc-8.6.5"
datadir    = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/collatz-conjecture/.stack-work/install/x86_64-linux-tinfo6/dde2a86c8841d644fcc5d00f0f4e1af3837ee63c38ea80ee87c4781cea28ab30/8.6.5/share/x86_64-linux-ghc-8.6.5/collatz-conjecture-1.2.0.2"
libexecdir = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/collatz-conjecture/.stack-work/install/x86_64-linux-tinfo6/dde2a86c8841d644fcc5d00f0f4e1af3837ee63c38ea80ee87c4781cea28ab30/8.6.5/libexec/x86_64-linux-ghc-8.6.5/collatz-conjecture-1.2.0.2"
sysconfdir = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/collatz-conjecture/.stack-work/install/x86_64-linux-tinfo6/dde2a86c8841d644fcc5d00f0f4e1af3837ee63c38ea80ee87c4781cea28ab30/8.6.5/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "collatz_conjecture_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "collatz_conjecture_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "collatz_conjecture_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "collatz_conjecture_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "collatz_conjecture_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "collatz_conjecture_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
