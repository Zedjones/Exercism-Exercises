{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_strain (
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

bindir     = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/strain/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-11.1/8.2.2/bin"
libdir     = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/strain/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-11.1/8.2.2/lib/x86_64-linux-ghc-8.2.2/strain-0.1.0.2-Aci1q38gJ1w97CjatZzZ9A"
dynlibdir  = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/strain/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-11.1/8.2.2/lib/x86_64-linux-ghc-8.2.2"
datadir    = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/strain/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-11.1/8.2.2/share/x86_64-linux-ghc-8.2.2/strain-0.1.0.2"
libexecdir = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/strain/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-11.1/8.2.2/libexec/x86_64-linux-ghc-8.2.2/strain-0.1.0.2"
sysconfdir = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/strain/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-11.1/8.2.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "strain_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "strain_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "strain_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "strain_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "strain_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "strain_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
