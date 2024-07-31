.class public Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;
.super Ljava/lang/Object;
.source "LegoNXTImpl.java"

# interfaces
.implements Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;
.implements Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$OnSensorChangedListener;


# static fields
.field private static final LEGO_NXT_UUID:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected context:Landroid/content/Context;

.field private isInitialized:Z

.field protected mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

.field private motorA:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

.field private motorB:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

.field private motorC:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

.field private sensor1:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

.field private sensor2:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

.field private sensor3:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

.field private sensor4:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

.field private sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->LEGO_NXT_UUID:Ljava/util/UUID;

    .line 44
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->isInitialized:Z

    .line 63
    iput-object p1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->context:Landroid/content/Context;

    .line 64
    return-void
.end method

.method private declared-synchronized assignSensorsToPorts()V
    .locals 4

    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    iget-object v3, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->context:Landroid/content/Context;

    .line 281
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    .line 282
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->registerOnSensorChangedListener(Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$OnSensorChangedListener;)V

    .line 285
    .end local p0    # "this":Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->createSensor(I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor1:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    .line 286
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->createSensor(I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor2:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    .line 287
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->createSensor(I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor3:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    .line 288
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->createSensor(I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor4:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private tryGetBatteryLevel()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 176
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->DIRECT_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->GET_BATTERY_LEVEL:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;Z)V

    .line 178
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;
    new-instance v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;

    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v2, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->sendAndReceive(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;-><init>([B)V

    .line 179
    .local v1, "reply":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;
    const/4 v2, 0x5

    invoke-static {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError;->checkForError(Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;I)V

    .line 181
    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v2, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->sendAndReceive(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)[B

    move-result-object v2

    .line 182
    .local v2, "batByte":[B
    const/4 v4, 0x2

    new-array v4, v4, [B

    .line 183
    .local v4, "batValues":[B
    const/4 v5, 0x3

    aget-byte v5, v2, v5

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    .line 184
    const/4 v5, 0x4

    aget-byte v5, v2, v5

    aput-byte v5, v4, v3

    .line 186
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 188
    .local v3, "millivolt":I
    return v3
.end method

.method private tryGetKeepAliveTime()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 147
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->DIRECT_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->KEEP_ALIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;Z)V

    .line 149
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->sendAndReceive(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)[B

    move-result-object v1

    .line 151
    .local v1, "alive":[B
    new-instance v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;

    iget-object v4, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v4, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->sendAndReceive(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;-><init>([B)V

    .line 152
    .local v2, "reply":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;
    const/4 v4, 0x7

    invoke-static {v2, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError;->checkForError(Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;I)V

    .line 154
    const/4 v4, 0x4

    new-array v5, v4, [B

    .line 155
    .local v5, "aliveTimeToInt":[B
    const/4 v6, 0x3

    aget-byte v7, v1, v6

    const/4 v8, 0x0

    aput-byte v7, v5, v8

    .line 156
    aget-byte v4, v1, v4

    aput-byte v4, v5, v3

    .line 157
    const/4 v3, 0x5

    aget-byte v3, v1, v3

    const/4 v4, 0x2

    aput-byte v3, v5, v4

    .line 158
    const/4 v3, 0x6

    aget-byte v3, v1, v3

    aput-byte v3, v5, v6

    .line 160
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 161
    .local v3, "aliveTime":I
    return v3
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 308
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->deactivateAllSensors(Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    .line 309
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->stopAllMovements()V

    .line 91
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->deactivateAllSensors(Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    .line 93
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->destroy()V

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->disconnect()V

    .line 97
    :cond_1
    return-void
.end method

.method public getBatteryLevel()I
    .locals 2

    .line 167
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->tryGetBatteryLevel()I

    move-result v0
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    return v0

    .line 168
    .end local v1    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :catch_1
    move-exception v1

    .line 169
    .local v1, "e":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;
    return v0
.end method

.method public getBluetoothDeviceUUID()Ljava/util/UUID;
    .locals 1

    .line 83
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->LEGO_NXT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 73
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_NXT:Ljava/lang/Class;

    return-object v0
.end method

.method public getKeepAliveTime()I
    .locals 2

    .line 138
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->tryGetKeepAliveTime()I

    move-result v0
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    return v0

    .line 139
    .end local v1    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :catch_1
    move-exception v1

    .line 140
    .local v1, "e":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;
    return v0
.end method

.method public getMotorA()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->motorA:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    return-object v0
.end method

.method public getMotorB()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->motorB:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    return-object v0
.end method

.method public getMotorC()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->motorC:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "Lego NXT"

    return-object v0
.end method

.method public getSensor1()Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor1:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    return-object v0
.end method

.method public getSensor2()Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor2:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    return-object v0
.end method

.method public getSensor3()Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor3:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    return-object v0
.end method

.method public getSensor4()Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor4:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    return-object v0
.end method

.method public declared-synchronized getSensorValue(Lorg/catrobat/catroid/formulaeditor/Sensors;)F
    .locals 3
    .param p1, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;

    monitor-enter p0

    .line 216
    :try_start_0
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$Sensors:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 227
    const/high16 v0, -0x40800000    # -1.0f

    monitor-exit p0

    return v0

    .line 224
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor4:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor4:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;->getLastSensorValue()F

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;
    :cond_1
    monitor-exit p0

    return v2

    .line 222
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor3:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor3:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;->getLastSensorValue()F

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return v2

    .line 220
    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor2:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor2:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;->getLastSensorValue()F

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    monitor-exit p0

    return v2

    .line 218
    :cond_6
    :try_start_4
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor1:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensor1:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;->getLastSensorValue()F

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    monitor-exit p0

    return v2

    .line 215
    .end local p1    # "sensor":Lorg/catrobat/catroid/formulaeditor/Sensors;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initialise()V
    .locals 4

    monitor-enter p0

    .line 258
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 259
    monitor-exit p0

    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->init()V
    :try_end_1
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    nop

    .line 269
    :try_start_2
    new-instance v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    iput-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->motorA:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    .line 270
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->motorB:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    .line 271
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    const/4 v1, 0x2

    iget-object v3, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->motorC:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    .line 273
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->assignSensorsToPorts()V

    .line 275
    iput-boolean v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->isInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 264
    .end local p0    # "this":Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :try_start_3
    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->isInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 257
    .end local v1    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAlive()Z
    .locals 2

    .line 102
    :try_start_0
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->tryGetKeepAliveTime()I
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const/4 v0, 0x1

    return v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    const/4 v1, 0x0

    return v1
.end method

.method public onSensorChanged()V
    .locals 0

    .line 252
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->assignSensorsToPorts()V

    .line 253
    return-void
.end method

.method public pause()V
    .locals 1

    .line 302
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->stopAllMovements()V

    .line 303
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->pauseSensorUpdate()V

    .line 304
    return-void
.end method

.method public playTone(II)V
    .locals 4
    .param p1, "frequencyInHz"    # I
    .param p2, "durationInMs"    # I

    .line 112
    if-gtz p2, :cond_0

    .line 113
    return-void

    .line 116
    :cond_0
    const/16 v0, 0x36b0

    if-le p1, v0, :cond_1

    .line 117
    const/16 p1, 0x36b0

    goto :goto_0

    .line 118
    :cond_1
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_2

    .line 119
    const/16 p1, 0xc8

    .line 122
    :cond_2
    :goto_0
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->DIRECT_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->PLAY_TONE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;Z)V

    .line 123
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 124
    const v1, 0xff00

    and-int v2, p1, v1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 125
    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 126
    and-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 129
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_1

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v1    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_1
    return-void
.end method

.method public setConnection(Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;)V
    .locals 1
    .param p1, "btConnection"    # Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    .line 78
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;-><init>(Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 79
    return-void
.end method

.method public start()V
    .locals 1

    .line 293
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->initialise()V

    .line 295
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->assignSensorsToPorts()V

    .line 297
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->resumeSensorUpdate()V

    .line 298
    return-void
.end method

.method public stopAllMovements()V
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->motorA:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->stop()V

    .line 209
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->motorB:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->stop()V

    .line 210
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;->motorC:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->stop()V

    .line 211
    return-void
.end method
