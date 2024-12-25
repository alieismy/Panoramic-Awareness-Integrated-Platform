@echo on
@echo =============================================================
@echo $                                                           $
@echo $               CSI Microservice Security Platform          $
@echo $                                                           $
@echo $                                                           $
@echo $                                                           $
@echo $  L.J All Right Reserved                                  $
@echo $  Copyright (C) 2019-2020                                  $
@echo $                                                           $
@echo =============================================================
@echo.
@echo off

@title CSI Microservice Security Platform
@color 0e

call mvn clean package -Dmaven.test.skip=true

pause