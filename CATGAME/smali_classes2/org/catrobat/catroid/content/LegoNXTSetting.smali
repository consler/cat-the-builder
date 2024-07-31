.class public Lorg/catrobat/catroid/content/LegoNXTSetting;
.super Ljava/lang/Object;
.source "LegoNXTSetting.java"

# interfaces
.implements Lorg/catrobat/catroid/content/Setting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private portSensorMapping:[Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;


# direct methods
.method public constructor <init>([Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;)V
    .locals 4
    .param p1, "sensorMapping"    # [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/content/LegoNXTSetting;->portSensorMapping:[Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;

    iput-object v0, p0, Lorg/catrobat/catroid/content/LegoNXTSetting;->portSensorMapping:[Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/LegoNXTSetting;->portSensorMapping:[Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 39
    new-instance v2, Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;

    aget-object v3, p1, v0

    invoke-direct {v2, v0, v3}, Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;-><init>(ILorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;)V

    aput-object v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getSensorMapping()[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;
    .locals 4

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 52
    .local v0, "sensorMapping":[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/content/LegoNXTSetting;->portSensorMapping:[Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 53
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;->getSensor()Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    move-result-object v2

    aput-object v2, v0, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public updateMapping([Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;)V
    .locals 3
    .param p1, "sensorMapping"    # [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/LegoNXTSetting;->portSensorMapping:[Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 45
    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;->setNumber(I)V

    .line 46
    iget-object v1, p0, Lorg/catrobat/catroid/content/LegoNXTSetting;->portSensorMapping:[Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;->setSensor(Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
