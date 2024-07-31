.class public interface abstract Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;
.super Ljava/lang/Object;
.source "MultiplayerInterface.kt"

# interfaces
.implements Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&J\u001c\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;",
        "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
        "getChangedMultiplayerVariables",
        "",
        "receivedData",
        "",
        "sendChangedMultiplayerVariables",
        "multiplayerVariable",
        "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "setStreams",
        "inputStream",
        "Ljava/io/InputStream;",
        "outputStream",
        "Ljava/io/OutputStream;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract getChangedMultiplayerVariables([B)V
.end method

.method public abstract sendChangedMultiplayerVariables(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
.end method

.method public abstract setStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end method
