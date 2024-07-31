.class public Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "LegoSensorPortConfigDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;
    }
.end annotation


# instance fields
.field private sensorInfo:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

.field private sensorInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "legoType"    # I
    .param p3, "selectedItem"    # I

    .line 106
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 63
    const v1, 0x7f120474

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->TOUCH:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    const v4, 0x7f1205f9

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 65
    const v1, 0x7f120473

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->SOUND:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    const v4, 0x7f1205f8

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 67
    const v1, 0x7f120471

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->LIGHT_INACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    const v4, 0x7f1205f5

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 69
    const v1, 0x7f120472

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->LIGHT_ACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    const v4, 0x7f1205f6

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 71
    const v1, 0x7f120475

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    const v4, 0x7f1205fa

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 73
    const v1, 0x7f12046c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->TOUCH:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const v4, 0x7f120338

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 75
    const v1, 0x7f120465

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->INFRARED:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const v4, 0x7f120331

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 77
    const v1, 0x7f120461

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const v4, 0x7f12032d

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 79
    const v1, 0x7f120462

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->COLOR_AMBIENT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const v4, 0x7f12032e

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 81
    const v1, 0x7f120463

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->COLOR_REFLECT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const v4, 0x7f12032f

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 83
    const v1, 0x7f120464

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->HT_NXT_COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const v4, 0x7f120330

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 85
    const v1, 0x7f120469

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_TEMPERATURE_C:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const v4, 0x7f120335

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 87
    const v1, 0x7f12046a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_TEMPERATURE_F:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const v4, 0x7f120336

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 89
    const v1, 0x7f120466

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_LIGHT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const v4, 0x7f120332

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 91
    const v1, 0x7f120467

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_LIGHT_ACTIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const v4, 0x7f120333

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 93
    const v1, 0x7f120468

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_SOUND:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const v4, 0x7f120334

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 95
    const v1, 0x7f12046b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const v4, 0x7f120337

    invoke-direct {v2, p0, v4, v3}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;->sensorInfoMap:Ljava/util/Map;

    .line 108
    invoke-virtual {p0, p3, p2}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;->getSensorInfo(II)Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;->sensorInfo:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    .line 110
    if-nez p2, :cond_0

    .line 111
    invoke-static {p1}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getLegoNXTSensorMapping(Landroid/content/Context;)[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {p1}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getLegoEV3SensorMapping(Landroid/content/Context;)[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    move-result-object v0

    :goto_0
    nop

    .line 114
    .local v0, "sensorsByPort":[Ljava/lang/Enum;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "portNames":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 117
    .local v2, "dialogItems":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez p2, :cond_1

    const v4, 0x7f03001a

    goto :goto_1

    :cond_1
    const v4, 0x7f030013

    .line 118
    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "sensorNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "portNumber":I
    :goto_2
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 121
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    .line 122
    .local v5, "sensorNameIndex":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 120
    .end local v5    # "sensorNameIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 125
    .end local v4    # "portNumber":I
    :cond_2
    const v4, 0x7f12052c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;->sensorInfo:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    iget v7, v7, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;->titleResId:I

    .line 126
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 125
    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 127
    const/4 v4, -0x1

    new-instance v5, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$1;

    invoke-direct {v5, p0}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$1;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;)V

    invoke-virtual {p0, v2, v4, v5}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;)Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;->sensorInfo:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    return-object v0
.end method


# virtual methods
.method public create()Landroidx/appcompat/app/AlertDialog;
    .locals 2

    .line 150
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 151
    .local v0, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$3;

    invoke-direct {v1, p0, v0}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$3;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 157
    return-object v0
.end method

.method getSensorInfo(II)Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;
    .locals 4
    .param p1, "selectedItem"    # I
    .param p2, "type"    # I

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;->sensorInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    .line 101
    .local v0, "info":Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;
    if-nez p2, :cond_0

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 102
    .local v1, "sensor":Ljava/lang/Enum;
    :goto_0
    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;

    const v3, 0x7f1205f7

    invoke-direct {v2, p0, v3, v1}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V

    :goto_1
    return-object v2
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$OnClickListener;)Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$OnClickListener;

    .line 136
    new-instance v0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$2;

    invoke-direct {v0, p0, p2}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$2;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$OnClickListener;)V

    invoke-virtual {p0, p1, v0}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 145
    return-object p0
.end method
