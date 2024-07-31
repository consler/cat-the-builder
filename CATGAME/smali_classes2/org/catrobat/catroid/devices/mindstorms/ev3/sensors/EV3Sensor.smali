.class public abstract Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;
.super Ljava/lang/Object;
.source "EV3Sensor.java"

# interfaces
.implements Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;,
        Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;,
        Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected final connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

.field protected hasInit:Z

.field protected lastValidValue:F

.field protected final port:I

.field protected final sensorMode:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

.field protected final sensorType:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field protected final updateInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "sensorType"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;
    .param p3, "sensorMode"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;
    .param p4, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/16 v0, 0xfa

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->updateInterval:I

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->lastValidValue:F

    .line 143
    iput p1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->port:I

    .line 144
    iput-object p2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->sensorType:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    .line 145
    iput-object p3, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->sensorMode:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    .line 147
    iput-object p4, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 148
    return-void
.end method

.method private buildCommand(ILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    .locals 8
    .param p1, "globalVars"    # I
    .param p2, "commandCode"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;
    .param p3, "opCode"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;
    .param p4, "addTypeAndMode"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;
    .param p5, "addReturnValue"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    .line 262
    new-instance v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v1

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->DIRECT_COMMAND_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    const/4 v4, 0x0

    move-object v0, v6

    move v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;-><init>(SLorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;IILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;)V

    .line 264
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->incCommandCounter()V

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, "chainLayer":I
    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->sensorType:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    invoke-virtual {v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->getByte()B

    move-result v2

    .line 268
    .local v2, "type":I
    iget-object v3, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->sensorMode:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    invoke-virtual {v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;->getByte()B

    move-result v3

    .line 269
    .local v3, "mode":I
    const/4 v4, 0x1

    .line 270
    .local v4, "returnValue":I
    const/4 v5, 0x0

    .line 272
    .local v5, "returnValueIndex":I
    if-eqz p2, :cond_0

    .line 273
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;)V

    .line 276
    :cond_0
    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v6, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 277
    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    iget v7, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->port:I

    invoke-virtual {v0, v6, v7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 279
    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->INCLUDE_TYPE_AND_MODE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    if-ne p4, v6, :cond_1

    .line 280
    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_LONG:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v6, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 281
    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v6, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 284
    :cond_1
    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->INCLUDE_RETURN_VALUE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    if-ne p5, v6, :cond_2

    .line 285
    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v6, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 288
    :cond_2
    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;->PARAM_VARIABLE_SCOPE_GLOBAL:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

    invoke-virtual {v0, v6, v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;I)V

    .line 290
    return-object v0
.end method

.method private sendCommandAndGetReply(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;I)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;
    .locals 3
    .param p1, "command"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    .param p2, "commandCounter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 294
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1, p1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->sendAndReceive(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;-><init>([B)V

    .line 296
    .local v0, "reply":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    return-object v0

    .line 297
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;

    const-string v2, "Reply not valid!"

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getConnectedPort()I
    .locals 1

    .line 328
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->port:I

    return v0
.end method

.method public getConnectionType(I)Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;
    .locals 9
    .param p1, "chainLayer"    # I

    .line 151
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v0

    .line 152
    .local v0, "commandCount":I
    const/4 v1, 0x0

    .line 154
    .local v1, "connectionType":B
    new-instance v8, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v2}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v3

    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->DIRECT_COMMAND_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    sget-object v7, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_INPUT_DEVICE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;-><init>(SLorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;IILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;)V

    .line 156
    .local v2, "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    iget-object v3, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v3}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->incCommandCounter()V

    .line 158
    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_GET_CONNECTION:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    invoke-virtual {v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->getByte()B

    move-result v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    .line 159
    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v2, v3, p1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 160
    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    iget v4, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->port:I

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 161
    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;->PARAM_VARIABLE_SCOPE_GLOBAL:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;I)V

    .line 164
    :try_start_0
    invoke-direct {p0, v2, v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->sendCommandAndGetReply(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;I)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;

    move-result-object v3

    .line 165
    .local v3, "reply":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;->getByte(I)B

    move-result v4
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 168
    .end local v3    # "reply":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;
    goto :goto_0

    .line 166
    :catch_0
    move-exception v3

    .line 167
    .local v3, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v3    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    invoke-static {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->getSensorConnectionTypeByValue(B)Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    move-result-object v3

    return-object v3
.end method

.method public getLastSensorValue()F
    .locals 1

    .line 318
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->lastValidValue:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 323
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->sensorType:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    invoke-virtual {v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "%s_%s_%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPercentValue()I
    .locals 8

    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "percentValue":I
    iget-boolean v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->hasInit:Z

    if-nez v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->initialize()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v1

    .line 200
    .local v1, "commandCount":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_INPUT_READ:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->INCLUDE_TYPE_AND_MODE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    sget-object v7, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->NO_RETURN_VALUE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->buildCommand(ILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    move-result-object v2

    .line 204
    .local v2, "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    :try_start_0
    invoke-direct {p0, v2, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->sendCommandAndGetReply(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;I)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;

    move-result-object v3

    .line 205
    .local v3, "reply":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;->getByte(I)B

    move-result v4
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 208
    .end local v3    # "reply":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;
    goto :goto_0

    .line 206
    :catch_0
    move-exception v3

    .line 207
    .local v3, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v1    # "commandCount":I
    .end local v2    # "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    .end local v3    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    return v0
.end method

.method public getRawValue(I)[B
    .locals 8
    .param p1, "numBytes"    # I

    .line 214
    new-array v0, p1, [B

    .line 216
    .local v0, "valueBytes":[B
    iget-boolean v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->hasInit:Z

    if-nez v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->initialize()V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v1

    .line 221
    .local v1, "commandCount":I
    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_GET_RAW:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    sget-object v5, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_INPUT_DEVICE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->NO_TYPE_AND_MODE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    sget-object v7, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->NO_RETURN_VALUE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->buildCommand(ILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    move-result-object v2

    .line 225
    .local v2, "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    :try_start_0
    invoke-direct {p0, v2, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->sendCommandAndGetReply(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;I)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;

    move-result-object v3

    .line 226
    .local v3, "reply":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;
    const/4 v4, 0x3

    .line 227
    .local v4, "offset":I
    invoke-virtual {v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;->getLength()I

    move-result v5

    .line 228
    .local v5, "replyLength":I
    sub-int v6, v5, v4

    invoke-virtual {v3, v4, v6}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;->getData(II)[B

    move-result-object v6
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 231
    .end local v3    # "reply":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;
    .end local v4    # "offset":I
    .end local v5    # "replyLength":I
    goto :goto_0

    .line 229
    :catch_0
    move-exception v3

    .line 230
    .local v3, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v1    # "commandCount":I
    .end local v2    # "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    .end local v3    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    return-object v0
.end method

.method public getSiValue(I)[B
    .locals 8
    .param p1, "numBytes"    # I

    .line 237
    new-array v0, p1, [B

    .line 239
    .local v0, "siValue":[B
    iget-boolean v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->hasInit:Z

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->initialize()V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v1

    .line 244
    .local v1, "commandCount":I
    const/4 v4, 0x0

    sget-object v5, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_INPUT_READ_SI:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->INCLUDE_TYPE_AND_MODE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    sget-object v7, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->NO_RETURN_VALUE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->buildCommand(ILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    move-result-object v2

    .line 248
    .local v2, "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    :try_start_0
    invoke-direct {p0, v2, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->sendCommandAndGetReply(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;I)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;

    move-result-object v3

    .line 249
    .local v3, "reply":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;
    const/4 v4, 0x3

    .line 250
    .local v4, "offset":I
    invoke-virtual {v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;->getLength()I

    move-result v5

    .line 251
    .local v5, "replyLength":I
    sub-int v6, v5, v4

    invoke-virtual {v3, v4, v6}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;->getData(II)[B

    move-result-object v6
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 254
    .end local v3    # "reply":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;
    .end local v4    # "offset":I
    .end local v5    # "replyLength":I
    goto :goto_0

    .line 252
    :catch_0
    move-exception v3

    .line 253
    .local v3, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v1    # "commandCount":I
    .end local v2    # "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    .end local v3    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    return-object v0
.end method

.method public getUpdateInterval()I
    .locals 1

    .line 304
    const/16 v0, 0xfa

    return v0
.end method

.method protected initialize()V
    .locals 8

    .line 174
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v0

    .line 177
    .local v0, "commandCounter":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->hasInit:Z

    .line 179
    const/4 v3, 0x1

    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_READY_RAW:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    sget-object v5, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_INPUT_DEVICE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->INCLUDE_TYPE_AND_MODE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    sget-object v7, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->INCLUDE_RETURN_VALUE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->buildCommand(ILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    move-result-object v1

    .line 183
    .local v1, "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    :try_start_0
    invoke-direct {p0, v1, v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->sendCommandAndGetReply(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;I)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v0    # "commandCounter":I
    .end local v1    # "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    .end local v2    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    goto :goto_1

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->hasInit:Z

    .line 190
    :goto_1
    return-void
.end method

.method public updateLastSensorValue()V
    .locals 3

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->getValue()F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->lastValidValue:F
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v0    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    return-void
.end method
