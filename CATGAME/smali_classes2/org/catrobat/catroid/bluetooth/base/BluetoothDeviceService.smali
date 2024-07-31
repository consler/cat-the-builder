.class public interface abstract Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
.super Ljava/lang/Object;
.source "BluetoothDeviceService.java"

# interfaces
.implements Lorg/catrobat/catroid/common/CatroidService;
.implements Lorg/catrobat/catroid/stage/StageResourceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;
    }
.end annotation


# virtual methods
.method public abstract connectDevice(Ljava/lang/Class;Landroid/app/Activity;I)Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">;",
            "Landroid/app/Activity;",
            "I)",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;"
        }
    .end annotation
.end method

.method public abstract connectDevice(Ljava/lang/Class;Landroid/content/Context;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;"
        }
    .end annotation
.end method

.method public abstract deviceConnected(Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation
.end method

.method public abstract disconnectDevices()V
.end method

.method public abstract getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
