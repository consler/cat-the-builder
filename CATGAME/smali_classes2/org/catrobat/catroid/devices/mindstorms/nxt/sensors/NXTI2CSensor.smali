.class public abstract Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;
.super Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;
.source "NXTI2CSensor.java"


# static fields
.field private static final BYTES_READ_BYTE:B = 0x3t

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private address:B

.field private pendingCommunicationErrorWaitTime:I

.field private final requestTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(BLorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V
    .locals 2
    .param p1, "sensorAddress"    # B
    .param p2, "sensorType"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;
    .param p3, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 50
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->RAW:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    const/4 v1, 0x3

    invoke-direct {p0, v1, p2, v0, p3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    .line 43
    const/16 v0, 0x1f4

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->requestTimeout:I

    .line 51
    iput-byte p1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->address:B

    .line 52
    const/16 v0, 0x1e

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->pendingCommunicationErrorWaitTime:I

    .line 53
    return-void
.end method

.method private tryGetNumberOfBytesAreReadyToRead()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->getNumberOfBytesAreReadyToRead()B

    move-result v0
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;
    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;->getError()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->PendingCommunication:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    if-ne v1, v2, :cond_0

    .line 99
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending Coummunication Error occured, wait for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->pendingCommunicationErrorWaitTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms and try again."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->pendingCommunicationErrorWaitTime:I

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->wait(I)V

    .line 101
    const/4 v1, 0x0

    return v1

    .line 104
    :cond_0
    throw v0
.end method

.method private waitForBytes(B)V
    .locals 6
    .param p1, "numberOfBytes"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 82
    new-instance v0, Lorg/catrobat/catroid/utils/Stopwatch;

    invoke-direct {v0}, Lorg/catrobat/catroid/utils/Stopwatch;-><init>()V

    .line 83
    .local v0, "stopWatch":Lorg/catrobat/catroid/utils/Stopwatch;
    const/4 v1, 0x0

    .line 84
    .local v1, "bytesRead":B
    invoke-virtual {v0}, Lorg/catrobat/catroid/utils/Stopwatch;->start()V

    .line 86
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->tryGetNumberOfBytesAreReadyToRead()B

    move-result v1

    .line 87
    const-wide/16 v2, 0x1f4

    if-eq v1, p1, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/utils/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_0

    .line 89
    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/catroid/utils/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-gtz v2, :cond_2

    .line 92
    return-void

    .line 90
    :cond_2
    new-instance v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RequestTimeout while waiting on bytes Ready, waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/utils/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getI2CAddress()B
    .locals 1

    .line 56
    iget-byte v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->address:B

    return v0
.end method

.method public getNumberOfBytesAreReadyToRead()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 142
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->DIRECT_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->LS_GET_STATUS:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;Z)V

    .line 143
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;
    iget v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->port:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 144
    new-instance v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;

    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v2, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->sendAndReceive(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;-><init>([B)V

    .line 145
    .local v1, "reply":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;
    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError;->checkForError(Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;I)V

    .line 146
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;->getByte(I)B

    move-result v2

    return v2
.end method

.method protected initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 61
    invoke-super {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->initialize()V

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->readRegister(II)[B

    .line 63
    return-void
.end method

.method public read()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 132
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->DIRECT_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->LS_READ:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;Z)V

    .line 133
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;
    iget v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->port:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 134
    new-instance v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;

    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v2, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->sendAndReceive(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;-><init>([B)V

    .line 135
    .local v1, "reply":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;
    const/16 v2, 0x14

    invoke-static {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError;->checkForError(Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;I)V

    .line 136
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;->getByte(I)B

    move-result v2

    .line 137
    .local v2, "size":B
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;->getData(II)[B

    move-result-object v3

    return-object v3
.end method

.method protected readRegister(II)[B
    .locals 3
    .param p1, "register"    # I
    .param p2, "rxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->hasInit:Z

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->initialize()V

    .line 77
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-byte v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->address:B

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 78
    .local v0, "command":[B
    int-to-byte v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->writeAndRead([BB)[B

    move-result-object v1

    return-object v1
.end method

.method protected wait(I)V
    .locals 3
    .param p1, "millis"    # I

    .line 151
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "interruptedException":Ljava/lang/InterruptedException;
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->TAG:Ljava/lang/String;

    const-string v2, "Shouldn\'t be interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v0    # "interruptedException":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public write([BBZ)V
    .locals 3
    .param p1, "txData"    # [B
    .param p2, "rxLength"    # B
    .param p3, "reply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 116
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->DIRECT_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->LS_WRITE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    invoke-direct {v0, v1, v2, p3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;Z)V

    .line 117
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;
    iget v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->port:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 118
    array-length v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 119
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 120
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append([B)V

    .line 122
    if-eqz p3, :cond_0

    .line 123
    new-instance v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;

    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v2, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->sendAndReceive(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;-><init>([B)V

    .line 124
    .local v1, "brickReply":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;
    const/4 v2, 0x5

    invoke-static {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError;->checkForError(Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;I)V

    .line 125
    .end local v1    # "brickReply":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;
    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V

    .line 128
    :goto_0
    return-void
.end method

.method protected writeAndRead([BB)[B
    .locals 1
    .param p1, "data"    # [B
    .param p2, "rxLength"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->write([BBZ)V

    .line 110
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->waitForBytes(B)V

    .line 111
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->read()[B

    move-result-object v0

    return-object v0
.end method

.method protected writeRegister(BBZ)V
    .locals 3
    .param p1, "register"    # B
    .param p2, "data"    # B
    .param p3, "reply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 66
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->hasInit:Z

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->initialize()V

    .line 69
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [B

    iget-byte v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->address:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 v1, 0x2

    aput-byte p2, v0, v1

    .line 70
    .local v0, "command":[B
    invoke-virtual {p0, v0, v2, p3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->write([BBZ)V

    .line 71
    return-void
.end method
