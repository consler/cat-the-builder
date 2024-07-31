.class Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry$1;
.super Ljava/lang/Object;
.source "LegoSensorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;->add(Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;

.field final synthetic val$sensor:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;)V
    .locals 0
    .param p1, "this$1"    # Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;

    .line 196
    iput-object p1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry$1;->this$1:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;

    iput-object p2, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry$1;->val$sensor:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry$1;->val$sensor:Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;->updateLastSensorValue()V

    .line 200
    return-void
.end method
