.class public Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;
.super Ljava/lang/Object;
.source "LegoSensorService.java"

# interfaces
.implements Lorg/catrobat/catroid/common/CatroidService;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;,
        Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$OnSensorChangedListener;
    }
.end annotation


# static fields
.field private static final SENSOR_UPDATER_THREAD_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private preferences:Landroid/content/SharedPreferences;

.field private sensorChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$OnSensorChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private sensorFactory:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;

.field private sensorRegistry:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;

.field private sensorScheduler:Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;

.field private sensorType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1, "sensorType"    # I
    .param p2, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;
    .param p3, "preferences"    # Landroid/content/SharedPreferences;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorChangedListeners:Ljava/util/List;

    .line 68
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to construct LegoSensorService with invalid sensorType!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    :goto_0
    iput p1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorType:I

    .line 73
    iput-object p3, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->preferences:Landroid/content/SharedPreferences;

    .line 74
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;-><init>(Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$1;)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorRegistry:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;

    .line 75
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;

    invoke-direct {v0, p2}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;-><init>(Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorFactory:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;

    .line 76
    new-instance v0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorScheduler:Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorScheduler:Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->pause()V

    .line 80
    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;)Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorScheduler:Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private deactivateAllEv3Sensors(Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V
    .locals 7
    .param p1, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 151
    new-instance v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    invoke-interface {p1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->getCommandCounter()S

    move-result v1

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->DIRECT_COMMAND_NO_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    sget-object v5, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_INPUT_DEVICE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;-><init>(SLorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;IILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;)V

    .line 153
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
    invoke-interface {p1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->incCommandCounter()V

    .line 155
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_STOP_ALL:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    .line 157
    const/4 v1, -0x1

    .line 158
    .local v1, "chainLayer":I
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 161
    :try_start_0
    invoke-interface {p1, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v2    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    return-void
.end method

.method private deactivateAllNxtSensors(Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V
    .locals 5
    .param p1, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 136
    const/4 v0, 0x0

    .local v0, "port":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 137
    new-instance v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->DIRECT_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->SET_INPUT_MODE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;Z)V

    .line 138
    .local v1, "command":Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;
    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 139
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    invoke-virtual {v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->getByte()B

    move-result v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 140
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->RAW:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    invoke-virtual {v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->getByte()B

    move-result v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 143
    :try_start_0
    invoke-interface {p1, v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_1

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v1    # "command":Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;
    .end local v2    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "port":I
    :cond_0
    return-void
.end method

.method private getSensorByPort(I)Ljava/lang/Enum;
    .locals 3
    .param p1, "port"    # I

    .line 100
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 106
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->EV3_SENSORS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "sensorCode":Ljava/lang/String;
    invoke-static {v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->getSensorFromSensorCode(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    move-result-object v1

    return-object v1

    .line 110
    .end local v0    # "sensorCode":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 102
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->NXT_SENSORS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0    # "sensorCode":Ljava/lang/String;
    invoke-static {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->getSensorFromSensorCode(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createSensor(I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    .locals 3
    .param p1, "port"    # I

    .line 83
    if-ltz p1, :cond_2

    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    .line 87
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->getSensorByPort(I)Ljava/lang/Enum;

    move-result-object v0

    .line 88
    .local v0, "sensor":Ljava/lang/Enum;
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorFactory:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;

    invoke-virtual {v1, v0, p1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->create(Ljava/lang/Enum;I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    move-result-object v1

    .line 94
    .local v1, "result":Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorRegistry:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;->add(Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;)V

    .line 95
    return-object v1

    .line 89
    .end local v1    # "result":Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorRegistry:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;

    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;->remove(I)V

    .line 90
    const/4 v1, 0x0

    return-object v1

    .line 84
    .end local v0    # "sensor":Ljava/lang/Enum;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to create sensor with invalid port number!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deactivateAllSensors(Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 128
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorType:I

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->deactivateAllNxtSensors(Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    goto :goto_0

    .line 130
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 131
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->deactivateAllEv3Sensors(Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    .line 133
    :cond_1
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorScheduler:Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->shutdown()V

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 125
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "preference"    # Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "sensorSettingKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->EV3_SENSORS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    sget-object v1, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->NXT_SENSORS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$OnSensorChangedListener;

    .line 179
    .local v2, "listener":Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$OnSensorChangedListener;
    if-eqz v2, :cond_0

    .line 180
    invoke-interface {v2}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$OnSensorChangedListener;->onSensorChanged()V

    .line 182
    .end local v2    # "listener":Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$OnSensorChangedListener;
    :cond_0
    goto :goto_0

    .line 184
    :cond_1
    return-void
.end method

.method public pauseSensorUpdate()V
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorScheduler:Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->pause()V

    .line 116
    return-void
.end method

.method public registerOnSensorChangedListener(Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$OnSensorChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$OnSensorChangedListener;

    .line 168
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public resumeSensorUpdate()V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->sensorScheduler:Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->resume()V

    .line 120
    return-void
.end method
