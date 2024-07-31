.class public Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$SensorReadings;
.super Ljava/lang/Object;
.source "NXTSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorReadings"
.end annotation


# instance fields
.field public normalized:I

.field public raw:I

.field public scaled:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
