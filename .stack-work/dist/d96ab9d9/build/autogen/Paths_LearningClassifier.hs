module Paths_LearningClassifier (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\stack_root\\LearningClassifier\\.stack-work\\install\\x86_64-windows\\lts-3.11\\7.10.2\\bin"
libdir     = "C:\\stack_root\\LearningClassifier\\.stack-work\\install\\x86_64-windows\\lts-3.11\\7.10.2\\lib\\x86_64-windows-ghc-7.10.2\\LearningClassifier-0.1.0.0-LwaGjALzisSEwmqwRVZVyM"
datadir    = "C:\\stack_root\\LearningClassifier\\.stack-work\\install\\x86_64-windows\\lts-3.11\\7.10.2\\share\\x86_64-windows-ghc-7.10.2\\LearningClassifier-0.1.0.0"
libexecdir = "C:\\stack_root\\LearningClassifier\\.stack-work\\install\\x86_64-windows\\lts-3.11\\7.10.2\\libexec"
sysconfdir = "C:\\stack_root\\LearningClassifier\\.stack-work\\install\\x86_64-windows\\lts-3.11\\7.10.2\\etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "LearningClassifier_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "LearningClassifier_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "LearningClassifier_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "LearningClassifier_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "LearningClassifier_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
