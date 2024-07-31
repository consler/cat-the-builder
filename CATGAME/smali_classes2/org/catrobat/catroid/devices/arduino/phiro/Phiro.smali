.class public interface abstract Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;
.super Ljava/lang/Object;
.source "Phiro.java"

# interfaces
.implements Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;


# virtual methods
.method public abstract getSensorValue(Lorg/catrobat/catroid/formulaeditor/Sensors;)I
.end method

.method public abstract moveLeftMotorBackward(I)V
.end method

.method public abstract moveLeftMotorForward(I)V
.end method

.method public abstract moveRightMotorBackward(I)V
.end method

.method public abstract moveRightMotorForward(I)V
.end method

.method public abstract playTone(II)V
.end method

.method public abstract reportFirmwareVersion()V
.end method

.method public abstract setLeftRGBLightColor(III)V
.end method

.method public abstract setRightRGBLightColor(III)V
.end method

.method public abstract stopAllMovements()V
.end method

.method public abstract stopLeftMotor()V
.end method

.method public abstract stopRightMotor()V
.end method
