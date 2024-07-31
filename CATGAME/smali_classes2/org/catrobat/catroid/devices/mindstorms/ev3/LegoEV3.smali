.class public interface abstract Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;
.super Ljava/lang/Object;
.source "LegoEV3.java"

# interfaces
.implements Lorg/catrobat/catroid/devices/mindstorms/Mindstorms;
.implements Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;


# virtual methods
.method public abstract getMotorA()Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;
.end method

.method public abstract getMotorB()Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;
.end method

.method public abstract getMotorC()Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;
.end method

.method public abstract getMotorD()Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;
.end method

.method public abstract getSensor1()Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
.end method

.method public abstract getSensor2()Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
.end method

.method public abstract getSensor3()Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
.end method

.method public abstract getSensor4()Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
.end method

.method public abstract getSensorValue(Lorg/catrobat/catroid/formulaeditor/Sensors;)F
.end method

.method public abstract isAlive()Z
.end method

.method public abstract moveMotorSpeed(BII)V
.end method

.method public abstract moveMotorStepsSpeed(BIIIIIZ)V
.end method

.method public abstract playTone(III)V
.end method

.method public abstract setLed(I)V
.end method

.method public abstract stopAllMovements()V
.end method

.method public abstract stopMotor(BIZ)V
.end method
