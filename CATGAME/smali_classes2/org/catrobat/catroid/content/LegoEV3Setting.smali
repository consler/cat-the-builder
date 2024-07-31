.class public Lorg/catrobat/catroid/content/LegoEV3Setting;
.super Ljava/lang/Object;
.source "LegoEV3Setting.java"

# interfaces
.implements Lorg/catrobat/catroid/content/Setting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private portSensorMapping:[Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;


# direct methods
.method public constructor <init>([Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;)V
    .locals 4
    .param p1, "sensorMapping"    # [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/content/LegoEV3Setting;->portSensorMapping:[Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;

    iput-object v0, p0, Lorg/catrobat/catroid/content/LegoEV3Setting;->portSensorMapping:[Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/LegoEV3Setting;->portSensorMapping:[Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 39
    new-instance v2, Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;

    aget-object v3, p1, v0

    invoke-direct {v2, v0, v3}, Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;-><init>(ILorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;)V

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
.method public getSensorMapping()[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;
    .locals 4

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 52
    .local v0, "sensorMapping":[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/content/LegoEV3Setting;->portSensorMapping:[Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 53
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;->getSensor()Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

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

.method public updateMapping([Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;)V
    .locals 3
    .param p1, "sensorMapping"    # [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/LegoEV3Setting;->portSensorMapping:[Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 45
    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;->setNumber(I)V

    .line 46
    iget-object v1, p0, Lorg/catrobat/catroid/content/LegoEV3Setting;->portSensorMapping:[Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;->setSensor(Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
