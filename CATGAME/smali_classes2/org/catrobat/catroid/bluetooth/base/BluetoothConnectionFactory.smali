.class public interface abstract Lorg/catrobat/catroid/bluetooth/base/BluetoothConnectionFactory;
.super Ljava/lang/Object;
.source "BluetoothConnectionFactory.java"


# virtual methods
.method public abstract createBTConnectionForDevice(Ljava/lang/Class;Ljava/lang/String;Ljava/util/UUID;Landroid/content/Context;)Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Landroid/content/Context;",
            ")",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;"
        }
    .end annotation
.end method
