.class public Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;
.super Ljava/lang/Object;
.source "LegoEV3Setting.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/LegoEV3Setting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EV3Port"
.end annotation


# instance fields
.field private number:I

.field private sensor:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;


# direct methods
.method public constructor <init>(ILorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;)V
    .locals 0
    .param p1, "number"    # I
    .param p2, "sensor"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;->number:I

    .line 66
    iput-object p2, p0, Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;->sensor:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 67
    return-void
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;->number:I

    return v0
.end method

.method public getSensor()Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;->sensor:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    return-object v0
.end method

.method public setNumber(I)V
    .locals 0
    .param p1, "number"    # I

    .line 82
    iput p1, p0, Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;->number:I

    .line 83
    return-void
.end method

.method public setSensor(Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;)V
    .locals 0
    .param p1, "sensor"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 74
    iput-object p1, p0, Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;->sensor:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 75
    return-void
.end method
