@echo on
@echo =============================================================
@echo $                                                                                       $
@echo $               CSI Microservice Security Platform verify           $
@echo $                                                                                       $
@echo $                                                                                       $
@echo $                                                                                       $
@echo $  L.J All Right Reserved                                                   $
@echo $  Copyright (C) 2019-2020                                                $
@echo $                                                                                       $
@echo =============================================================
@echo.
@echo off

@title CSI Microservice Security Platform
@color 0e

REM mvn verify -Dmaven.test.skip=true -e
mvn verify sonar:sonar -Dsonar.host.url=http://192.10.4.1:9000/

pause
