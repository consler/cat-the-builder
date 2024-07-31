.class public Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;
.super Ljava/lang/Object;
.source "LegoEV3Impl.java"

# interfaces
.implements Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;
.implements Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$OnSensorChangedListener;


# static fields
.field private static final FREQ_MAX_VAL:I = 0x2710

.field private static final FREQ_MIN_VAL:I = 0xfa

.field private static final KEEP_ALIVE_TIME:I = 0x5

.field private static final LEGO_EV3_UUID:Ljava/util/UUID;

.field private static final NUMBER_VOLUME_LEVELS:I = 0xd

.field private static final TAG:Ljava/lang/String;

.field private static final VOLUME_LEVEL_INCR:I = 0x8


# instance fields
.field protected context:Landroid/content/Context;

.field private isInitialized:Z

.field protected mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

.field private motorA:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

.field private motorB:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

.field private motorC:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

.field private motorD:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

.field private sensor1:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

.field private sensor2:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

.field private sensor3:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

.field private sensor4:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

.field private sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->LEGO_EV3_UUID:Ljava/util/UUID;

    .line 48
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->isInitialized:Z

    .line 75
    iput-object p1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->context:Landroid/content/Context;

    .line 76
    return-void
.end method

.method private declared-synchronized assignSensorsToPorts()V
    .locals 4

    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    iget-object v3, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->context:Landroid/content/Context;

    .line 323
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    .line 324
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->registerOnSensorChangedListener(Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$OnSensorChangedListener;)V

    .line 327
    .end local p0    # "this":Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->createSensor(I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensor1:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    .line 328
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->createSensor(I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensor2:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    .line 329
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->createSensor(I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensor3:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    .line 330
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->createSensor(I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensor4:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendKeepAlive()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 171
    new-instance v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v1

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->DIRECT_COMMAND_NO_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    sget-object v5, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_KEEP_ALIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;-><init>(SLorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;IILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;)V

    .line 173
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->incCommandCounter()V

    .line 175
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 178
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v1    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 348
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->deactivateAllSensors(Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    .line 349
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->stopAllMovements()V

    .line 362
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->disconnect()V

    .line 364
    :cond_0
    return-void
.end method

.method public getBluetoothDeviceUUID()Ljava/util/UUID;
    .locals 1

    .line 368
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->LEGO_EV3_UUID:Ljava/util/UUID;

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

    .line 85
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_EV3:Ljava/lang/Class;

    return-object v0
.end method

.method public getMotorA()Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->motorA:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

    return-object v0
.end method

.method public getMotorB()Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->motorB:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

    return-object v0
.end method

.method public getMotorC()Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->motorC:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

    return-object v0
.end method

.method public getMotorD()Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->motorD:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "Lego EV3"

    return-object v0
.end method

.method public getSensor1()Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensor1:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    return-object v0
.end method

.method public getSensor2()Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensor2:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    return-object v0
.end method

.method public getSensor3()Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensor3:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    return-object v0
.end method

.method public getSensor4()Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensor4:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    return-object v0
.end method

.method public getSensorValue(Lorg/catrobat/catroid/formulaeditor/Sensors;)F
    .locals 3
    .param p1, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 267
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$Sensors:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 278
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensor4:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;->getLastSensorValue()F

    move-result v2

    :cond_1
    return v2

    .line 273
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensor3:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;->getLastSensorValue()F

    move-result v2

    :cond_3
    return v2

    .line 271
    :cond_4
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensor2:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;->getLastSensorValue()F

    move-result v2

    :cond_5
    return v2

    .line 269
    :cond_6
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensor1:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;->getLastSensorValue()F

    move-result v2

    :cond_7
    return v2
.end method

.method public declared-synchronized initialise()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    monitor-enter p0

    .line 304
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 305
    monitor-exit p0

    return-void

    .line 308
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->init()V

    .line 310
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;-><init>(I)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->motorA:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

    .line 311
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;-><init>(I)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->motorB:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

    .line 312
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;-><init>(I)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->motorC:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

    .line 313
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;-><init>(I)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->motorD:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;

    .line 315
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->assignSensorsToPorts()V

    .line 317
    iput-boolean v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->isInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 303
    .end local p0    # "this":Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAlive()Z
    .locals 2

    .line 162
    :try_start_0
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sendKeepAlive()V
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    const/4 v0, 0x1

    return v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    const/4 v1, 0x0

    return v1
.end method

.method public moveMotorSpeed(BII)V
    .locals 8
    .param p1, "outputField"    # B
    .param p2, "chainLayer"    # I
    .param p3, "speed"    # I

    .line 209
    new-instance v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v1

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->DIRECT_COMMAND_NO_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    sget-object v5, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_SPEED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;-><init>(SLorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;IILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;)V

    .line 210
    .local v0, "setSpeedCommand":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->incCommandCounter()V

    .line 212
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v1, p2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 213
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 214
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v1, p3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 216
    new-instance v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v2}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v3

    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->DIRECT_COMMAND_NO_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    sget-object v7, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_START:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;-><init>(SLorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;IILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;)V

    .line 218
    .local v1, "startMotorCommand":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v2}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->incCommandCounter()V

    .line 220
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v1, v2, p2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 221
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v1, v2, p1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 224
    :try_start_0
    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v2, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V

    .line 225
    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v2, v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    goto :goto_0

    .line 226
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v2    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    return-void
.end method

.method public moveMotorStepsSpeed(BIIIIIZ)V
    .locals 7
    .param p1, "outputField"    # B
    .param p2, "chainLayer"    # I
    .param p3, "speed"    # I
    .param p4, "step1Tacho"    # I
    .param p5, "step2Tacho"    # I
    .param p6, "step3Tacho"    # I
    .param p7, "brake"    # Z

    .line 186
    new-instance v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v1

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->DIRECT_COMMAND_NO_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    sget-object v5, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_STEP_SPEED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;-><init>(SLorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;IILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;)V

    .line 187
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->incCommandCounter()V

    .line 189
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v1, p2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 190
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 192
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_LONG:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v1, p3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 194
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_LONG:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v1, p4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 195
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_LONG:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v1, p5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 196
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_LONG:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v1, p6}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 198
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v1, p7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 201
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v1    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    return-void
.end method

.method public onSensorChanged()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->assignSensorsToPorts()V

    .line 152
    return-void
.end method

.method public pause()V
    .locals 1

    .line 342
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->stopAllMovements()V

    .line 343
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->pauseSensorUpdate()V

    .line 344
    return-void
.end method

.method public playTone(III)V
    .locals 8
    .param p1, "frequencyInHz"    # I
    .param p2, "durationInMs"    # I
    .param p3, "volumeInPercent"    # I

    .line 91
    const/16 v0, 0x64

    if-le p3, v0, :cond_0

    .line 92
    const/16 p3, 0x64

    goto :goto_0

    .line 93
    :cond_0
    if-gez p3, :cond_1

    .line 94
    const/4 p3, 0x0

    .line 97
    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-nez p3, :cond_3

    move v0, v1

    :cond_3
    or-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 98
    return-void

    .line 101
    :cond_4
    const/16 v0, 0x2710

    if-le p1, v0, :cond_5

    .line 102
    const/16 p1, 0x2710

    goto :goto_2

    .line 103
    :cond_5
    const/16 v0, 0xfa

    if-ge p1, v0, :cond_6

    .line 104
    const/16 p1, 0xfa

    .line 107
    :cond_6
    :goto_2
    const/16 v0, 0xd

    .line 108
    .local v0, "volumeLevel":I
    const/4 v1, 0x0

    .local v1, "volLevel":I
    :goto_3
    const/16 v2, 0xd

    if-ge v1, v2, :cond_8

    .line 109
    mul-int/lit8 v2, v1, 0x8

    if-le p3, v2, :cond_7

    .line 110
    add-int/lit8 v0, v1, 0x1

    .line 108
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 114
    .end local v1    # "volLevel":I
    :cond_8
    new-instance v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v2}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v3

    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->DIRECT_COMMAND_NO_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_SOUND:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;-><init>(SLorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;IILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;)V

    .line 115
    .local v1, "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v2}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->incCommandCounter()V

    .line 117
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->SOUND_PLAY_TONE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;)V

    .line 118
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v1, v2, v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 119
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_LONG:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v1, v2, p1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 120
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_LONG:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v1, v2, p2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 123
    :try_start_0
    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v2, v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_4

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v2    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_4
    return-void
.end method

.method public setConnection(Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;)V
    .locals 1
    .param p1, "btConnection"    # Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    .line 156
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnectionImpl;-><init>(Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 157
    return-void
.end method

.method public setLed(I)V
    .locals 7
    .param p1, "ledStatus"    # I

    .line 251
    new-instance v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v1

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->DIRECT_COMMAND_NO_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    sget-object v5, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_UI_WRITE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;-><init>(SLorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;IILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;)V

    .line 252
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->incCommandCounter()V

    .line 254
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->UI_WRITE_LED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;)V

    .line 256
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_LONG:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 259
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v1    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->initialise()V

    .line 336
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->assignSensorsToPorts()V

    .line 337
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->sensorService:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->resumeSensorUpdate()V

    .line 338
    return-void
.end method

.method public stopAllMovements()V
    .locals 3

    .line 354
    const/16 v0, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->stopMotor(BIZ)V

    .line 355
    return-void
.end method

.method public stopMotor(BIZ)V
    .locals 7
    .param p1, "outputField"    # B
    .param p2, "chainLayer"    # I
    .param p3, "brake"    # Z

    .line 233
    new-instance v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v1

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->DIRECT_COMMAND_NO_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    sget-object v5, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_STOP:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;-><init>(SLorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;IILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;)V

    .line 234
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->incCommandCounter()V

    .line 236
    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    .line 238
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    .line 240
    int-to-byte v1, p3

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    .line 243
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->mindstormsConnection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v1    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    return-void
.end method
