.class public interface abstract Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;
.super Ljava/lang/Object;
.source "LegoNXT.java"

# interfaces
.implements Lorg/catrobat/catroid/devices/mindstorms/Mindstorms;
.implements Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;


# virtual methods
.method public abstract getBatteryLevel()I
.end method

.method public abstract getKeepAliveTime()I
.end method

.method public abstract getMotorA()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;
.end method

.method public abstract getMotorB()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;
.end method

.method public abstract getMotorC()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;
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

.method public abstract playTone(II)V
.end method

.method public abstract stopAllMovements()V
.end method
