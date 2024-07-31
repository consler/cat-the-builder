.class public abstract Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;
.super Ljava/lang/Object;
.source "NXTSensor.java"

# interfaces
.implements Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;,
        Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected final connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

.field public hasInit:Z

.field protected lastValidValue:F

.field protected final port:I

.field protected final sensorMode:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

.field protected final sensorType:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

.field protected final updateInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "sensorType"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;
    .param p3, "sensorMode"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;
    .param p4, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/16 v0, 0xfa

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->updateInterval:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->lastValidValue:F

    .line 85
    iput p1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->port:I

    .line 86
    iput-object p2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->sensorType:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    .line 87
    iput-object p3, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->sensorMode:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    .line 89
    iput-object p4, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 90
    return-void
.end method


# virtual methods
.method public getConnectedPort()I
    .locals 1

    .line 191
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->port:I

    return v0
.end method

.method public getLastSensorValue()F
    .locals 1

    .line 181
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->lastValidValue:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->sensorType:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    invoke-virtual {v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "%s_%s_%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNormalizedValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->getSensorReadings()Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;->normalized:I

    return v0
.end method

.method protected getRawValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->getSensorReadings()Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;->raw:I

    return v0
.end method

.method public getScaledValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->getSensorReadings()Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;->scaled:I

    return v0
.end method

.method public getSensorReadings()Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 118
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->hasInit:Z

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->initialize()V

    .line 122
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;

    invoke-direct {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;-><init>()V

    .line 123
    .local v0, "sensorReadings":Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;
    new-instance v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->DIRECT_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->GET_INPUT_VALUES:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;Z)V

    .line 124
    .local v1, "command":Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;
    iget v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->port:I

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 125
    new-instance v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;

    iget-object v3, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v3, v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->sendAndReceive(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;-><init>([B)V

    .line 126
    .local v2, "reply":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError;->checkForError(Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;I)V

    .line 128
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;->getShort(I)I

    move-result v3

    iput v3, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;->raw:I

    .line 129
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;->getShort(I)I

    move-result v3

    iput v3, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;->normalized:I

    .line 130
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;->getShort(I)I

    move-result v3

    iput v3, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;->scaled:I

    .line 131
    return-object v0
.end method

.method public getUpdateInterval()I
    .locals 1

    .line 167
    const/16 v0, 0xfa

    return v0
.end method

.method protected initialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->updateTypeAndMode()V

    .line 138
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 139
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->resetScaledValue()V

    .line 140
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 141
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->updateTypeAndMode()V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->hasInit:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/InterruptedException;
    iput-boolean v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->hasInit:Z

    .line 145
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    goto :goto_1

    .line 147
    :cond_0
    iput-boolean v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->hasInit:Z

    .line 149
    :goto_1
    return-void
.end method

.method public resetScaledValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 153
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->DIRECT_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->RESET_INPUT_SCALED_VALUE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;Z)V

    .line 154
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;
    iget v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->port:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 155
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V

    .line 156
    return-void
.end method

.method public updateLastSensorValue()V
    .locals 3

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->getValue()F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->lastValidValue:F
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v0    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    return-void
.end method

.method public updateTypeAndMode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 95
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->DIRECT_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->SET_INPUT_MODE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;Z)V

    .line 96
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;
    iget v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->port:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 97
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->sensorType:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 98
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->sensorMode:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 100
    new-instance v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;

    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v2, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->sendAndReceive(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;-><init>([B)V

    .line 101
    .local v1, "reply":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;
    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError;->checkForError(Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;I)V

    .line 102
    return-void
.end method
