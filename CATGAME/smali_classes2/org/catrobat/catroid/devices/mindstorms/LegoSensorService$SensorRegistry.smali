.class Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;
.super Ljava/lang/Object;
.source "LegoSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorRegistry"
.end annotation


# static fields
.field private static final INITIAL_DELAY:I = 0x1f4


# instance fields
.field private registeredSensors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/ScheduledFuture;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;->this$0:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;->registeredSensors:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;
    .param p2, "x1"    # Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$1;

    .line 190
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;-><init>(Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;)V
    .locals 8
    .param p1, "sensor"    # Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    monitor-enter p0

    .line 195
    :try_start_0
    invoke-interface {p1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;->getConnectedPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;->remove(I)V

    .line 196
    new-instance v2, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry$1;

    invoke-direct {v2, p0, p1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry$1;-><init>(Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;)V

    .line 202
    .local v2, "runnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;->this$0:Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;

    invoke-static {v0}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;->access$100(Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService;)Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    .line 203
    invoke-interface {p1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;->getUpdateInterval()I

    move-result v0

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 202
    invoke-virtual/range {v1 .. v7}, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 205
    .local v0, "updateSchedule":Ljava/util/concurrent/ScheduledFuture;
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;->registeredSensors:Landroid/util/SparseArray;

    invoke-interface {p1}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;->getConnectedPort()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 194
    .end local v0    # "updateSchedule":Ljava/util/concurrent/ScheduledFuture;
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local p0    # "this":Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;
    .end local p1    # "sensor":Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(I)V
    .locals 2
    .param p1, "port"    # I

    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;->registeredSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 210
    .local v0, "updateSchedule":Ljava/util/concurrent/ScheduledFuture;
    if-eqz v0, :cond_0

    .line 211
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 213
    .end local p0    # "this":Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorService$SensorRegistry;->registeredSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 208
    .end local v0    # "updateSchedule":Ljava/util/concurrent/ScheduledFuture;
    .end local p1    # "port":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
