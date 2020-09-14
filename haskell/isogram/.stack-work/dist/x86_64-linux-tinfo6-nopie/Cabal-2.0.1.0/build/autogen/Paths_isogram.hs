{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_isogram (
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
version = Version [1,3,0,3] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/isogram/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-11.1/8.2.2/bin"
libdir     = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/isogram/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-11.1/8.2.2/lib/x86_64-linux-ghc-8.2.2/isogram-1.3.0.3-Hf5RHt9VR5KLDwuRpVnrRW"
dynlibdir  = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/isogram/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-11.1/8.2.2/lib/x86_64-linux-ghc-8.2.2"
datadir    = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/isogram/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-11.1/8.2.2/share/x86_64-linux-ghc-8.2.2/isogram-1.3.0.3"
libexecdir = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/isogram/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-11.1/8.2.2/libexec/x86_64-linux-ghc-8.2.2/isogram-1.3.0.3"
sysconfdir = "/home/zedjones/Documents/Personal/Exercism-Exercises/haskell/isogram/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-11.1/8.2.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "isogram_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "isogram_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "isogram_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "isogram_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "isogram_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "isogram_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
