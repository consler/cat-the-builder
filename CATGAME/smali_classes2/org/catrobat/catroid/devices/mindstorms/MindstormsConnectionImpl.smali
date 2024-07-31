.class public Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;
.super Ljava/lang/Object;
.source "MindstormsConnectionImpl.java"

# interfaces
.implements Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;


# instance fields
.field private bluetoothConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

.field private commandCounter:S

.field private isConnected:Z

.field private legoInputStream:Ljava/io/DataInputStream;

.field private legoOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;)V
    .locals 1
    .param p1, "btConnection"    # Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->legoOutputStream:Ljava/io/OutputStream;

    .line 36
    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->legoInputStream:Ljava/io/DataInputStream;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->isConnected:Z

    .line 40
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->commandCounter:S

    .line 43
    iput-object p1, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->bluetoothConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    .line 44
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->isConnected:Z

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->bluetoothConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;->disconnect()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->legoInputStream:Ljava/io/DataInputStream;

    .line 72
    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->legoOutputStream:Ljava/io/OutputStream;

    .line 73
    return-void
.end method

.method public getCommandCounter()S
    .locals 1

    .line 103
    iget-short v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->commandCounter:S

    return v0
.end method

.method public incCommandCounter()V
    .locals 1

    .line 108
    iget-short v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->commandCounter:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->commandCounter:S

    .line 109
    return-void
.end method

.method public init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 50
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->bluetoothConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    invoke-interface {v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->legoInputStream:Ljava/io/DataInputStream;

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->bluetoothConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->legoOutputStream:Ljava/io/OutputStream;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->isConnected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    nop

    .line 57
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->isConnected:Z

    .line 55
    new-instance v1, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;

    const-string v2, "Cannot establish BtConnection"

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method

.method public isConnected()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->isConnected:Z

    return v0
.end method

.method protected receive()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 116
    .local v1, "data":[B
    :try_start_0
    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->legoInputStream:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 117
    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 118
    .local v0, "expectedLength":I
    new-array v2, v0, [B

    .line 120
    .local v2, "payload":[B
    iget-object v4, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->legoInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4, v2, v3, v0}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "expectedLength":I
    nop

    .line 125
    return-object v2

    .line 121
    .end local v2    # "payload":[B
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;

    const-string v3, "Read Error"

    invoke-direct {v2, v0, v3}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v2
.end method

.method public send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V
    .locals 7
    .param p1, "command"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 84
    :try_start_0
    invoke-interface {p1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;->getLength()I

    move-result v0

    .line 85
    .local v0, "messageLength":I
    invoke-interface {p1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;->getRawCommand()[B

    move-result-object v1

    .line 86
    .local v1, "message":[B
    invoke-interface {p1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;->getLength()I

    move-result v2

    const/4 v3, 0x2

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 87
    .local v2, "data":[B
    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v2, v5

    .line 88
    const/4 v4, 0x1

    const v6, 0xff00

    and-int/2addr v6, v0

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 90
    invoke-static {v1, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget-object v3, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->legoOutputStream:Ljava/io/OutputStream;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :try_start_1
    iget-object v4, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->legoOutputStream:Ljava/io/OutputStream;

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 94
    iget-object v4, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->legoOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 95
    monitor-exit v3

    .line 98
    .end local v0    # "messageLength":I
    .end local v1    # "message":[B
    .end local v2    # "data":[B
    nop

    .line 99
    return-void

    .line 95
    .restart local v0    # "messageLength":I
    .restart local v1    # "message":[B
    .restart local v2    # "data":[B
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "command":Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    .end local v0    # "messageLength":I
    .end local v1    # "message":[B
    .end local v2    # "data":[B
    .restart local p1    # "command":Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;

    const-string v2, "Error on message send."

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized sendAndReceive(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)[B
    .locals 1
    .param p1, "command"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V

    .line 78
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;->receive()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 76
    .end local p0    # "this":Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;
    .end local p1    # "command":Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
