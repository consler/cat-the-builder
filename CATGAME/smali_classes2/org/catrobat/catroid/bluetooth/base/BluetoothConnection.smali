.class public interface abstract Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;
.super Ljava/lang/Object;
.source "BluetoothConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;
    }
.end annotation


# virtual methods
.method public abstract connect()Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;
.end method

.method public abstract connectSocket(Landroid/bluetooth/BluetoothSocket;)Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;
.end method

.method public abstract disconnect()V
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getState()Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;
.end method
