{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_twelve_days (
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
version = Version [1,2,0,5] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/twelve-days/.stack-work/install/x86_64-linux-tinfo6/a8fe30e2d5c57a16e3dba54071ef6fa4bf8aa8514da4410b74c98cd3e5f3aac8/8.6.5/bin"
libdir     = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/twelve-days/.stack-work/install/x86_64-linux-tinfo6/a8fe30e2d5c57a16e3dba54071ef6fa4bf8aa8514da4410b74c98cd3e5f3aac8/8.6.5/lib/x86_64-linux-ghc-8.6.5/twelve-days-1.2.0.5-6zcuXV0PQ4Ox7BMiW7Mi"
dynlibdir  = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/twelve-days/.stack-work/install/x86_64-linux-tinfo6/a8fe30e2d5c57a16e3dba54071ef6fa4bf8aa8514da4410b74c98cd3e5f3aac8/8.6.5/lib/x86_64-linux-ghc-8.6.5"
datadir    = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/twelve-days/.stack-work/install/x86_64-linux-tinfo6/a8fe30e2d5c57a16e3dba54071ef6fa4bf8aa8514da4410b74c98cd3e5f3aac8/8.6.5/share/x86_64-linux-ghc-8.6.5/twelve-days-1.2.0.5"
libexecdir = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/twelve-days/.stack-work/install/x86_64-linux-tinfo6/a8fe30e2d5c57a16e3dba54071ef6fa4bf8aa8514da4410b74c98cd3e5f3aac8/8.6.5/libexec/x86_64-linux-ghc-8.6.5/twelve-days-1.2.0.5"
sysconfdir = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/twelve-days/.stack-work/install/x86_64-linux-tinfo6/a8fe30e2d5c57a16e3dba54071ef6fa4bf8aa8514da4410b74c98cd3e5f3aac8/8.6.5/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "twelve_days_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "twelve_days_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "twelve_days_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "twelve_days_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "twelve_days_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "twelve_days_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
