{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_armstrong_numbers (
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
version = Version [1,0,0,1] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/zedjones/Documents/Personal/Haskell/Exercism-Exercises/haskell/armstrong-numbers/.stack-work/install/x86_64-linux/lts-12.4/8.4.3/bin"
libdir     = "/home/zedjones/Documents/Personal/Haskell/Exercism-Exercises/haskell/armstrong-numbers/.stack-work/install/x86_64-linux/lts-12.4/8.4.3/lib/x86_64-linux-ghc-8.4.3/armstrong-numbers-1.0.0.1-JgDveaVKzRWRC1wfQVaY6"
dynlibdir  = "/home/zedjones/Documents/Personal/Haskell/Exercism-Exercises/haskell/armstrong-numbers/.stack-work/install/x86_64-linux/lts-12.4/8.4.3/lib/x86_64-linux-ghc-8.4.3"
datadir    = "/home/zedjones/Documents/Personal/Haskell/Exercism-Exercises/haskell/armstrong-numbers/.stack-work/install/x86_64-linux/lts-12.4/8.4.3/share/x86_64-linux-ghc-8.4.3/armstrong-numbers-1.0.0.1"
libexecdir = "/home/zedjones/Documents/Personal/Haskell/Exercism-Exercises/haskell/armstrong-numbers/.stack-work/install/x86_64-linux/lts-12.4/8.4.3/libexec/x86_64-linux-ghc-8.4.3/armstrong-numbers-1.0.0.1"
sysconfdir = "/home/zedjones/Documents/Personal/Haskell/Exercism-Exercises/haskell/armstrong-numbers/.stack-work/install/x86_64-linux/lts-12.4/8.4.3/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "armstrong_numbers_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "armstrong_numbers_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "armstrong_numbers_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "armstrong_numbers_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "armstrong_numbers_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "armstrong_numbers_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
