.class public Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;
.super Ljava/lang/Object;
.source "LegoNXTSetting.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/LegoNXTSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NXTPort"
.end annotation


# instance fields
.field private number:I

.field private sensor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;


# direct methods
.method public constructor <init>(ILorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;)V
    .locals 0
    .param p1, "number"    # I
    .param p2, "sensor"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;->number:I

    .line 66
    iput-object p2, p0, Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;->sensor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 67
    return-void
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;->number:I

    return v0
.end method

.method public getSensor()Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;->sensor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    return-object v0
.end method

.method public setNumber(I)V
    .locals 0
    .param p1, "number"    # I

    .line 82
    iput p1, p0, Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;->number:I

    .line 83
    return-void
.end method

.method public setSensor(Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;)V
    .locals 0
    .param p1, "sensor"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 74
    iput-object p1, p0, Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;->sensor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 75
    return-void
.end method
