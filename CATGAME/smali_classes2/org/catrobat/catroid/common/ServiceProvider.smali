.class public final Lorg/catrobat/catroid/common/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static services:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/catroid/common/CatroidService;",
            ">;",
            "Lorg/catrobat/catroid/common/CatroidService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/catrobat/catroid/common/ServiceProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/common/ServiceProvider;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/common/ServiceProvider;->services:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private static createCommonService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/catroid/common/CatroidService;",
            ">;)",
            "Lorg/catrobat/catroid/common/CatroidService;"
        }
    .end annotation

    .line 70
    .local p0, "serviceType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/catrobat/catroid/common/CatroidService;>;"
    const/4 v0, 0x0

    .line 72
    .local v0, "service":Lorg/catrobat/catroid/common/CatroidService;
    sget-object v1, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    if-ne p0, v1, :cond_0

    .line 73
    new-instance v1, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;

    invoke-direct {v1}, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;-><init>()V

    move-object v0, v1

    .line 81
    :cond_0
    if-eqz v0, :cond_1

    .line 82
    invoke-static {p0, v0}, Lorg/catrobat/catroid/common/ServiceProvider;->registerService(Ljava/lang/Class;Lorg/catrobat/catroid/common/CatroidService;)V

    .line 85
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/catrobat/catroid/common/CatroidService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .local p0, "serviceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lorg/catrobat/catroid/common/ServiceProvider;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lorg/catrobat/catroid/common/ServiceProvider;->services:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/CatroidService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .local v1, "serviceInstance":Lorg/catrobat/catroid/common/CatroidService;
    if-eqz v1, :cond_0

    .line 49
    monitor-exit v0

    return-object v1

    .line 51
    :cond_0
    :try_start_1
    invoke-static {p0}, Lorg/catrobat/catroid/common/ServiceProvider;->createCommonService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 52
    if-eqz v1, :cond_1

    .line 53
    monitor-exit v0

    return-object v1

    .line 57
    :cond_1
    :try_start_2
    sget-object v2, Lorg/catrobat/catroid/common/ServiceProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Service \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' is registered!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 46
    .end local v1    # "serviceInstance":Lorg/catrobat/catroid/common/CatroidService;
    .end local p0    # "serviceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerService(Ljava/lang/Class;Lorg/catrobat/catroid/common/CatroidService;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/catrobat/catroid/common/CatroidService;",
            "S::",
            "Lorg/catrobat/catroid/common/CatroidService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TS;)V"
        }
    .end annotation

    .local p0, "serviceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "serviceInstance":Lorg/catrobat/catroid/common/CatroidService;, "TS;"
    const-class v0, Lorg/catrobat/catroid/common/ServiceProvider;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lorg/catrobat/catroid/common/ServiceProvider;->services:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lorg/catrobat/catroid/common/ServiceProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' got overwritten!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit v0

    return-void

    .line 40
    .end local p0    # "serviceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p1    # "serviceInstance":Lorg/catrobat/catroid/common/CatroidService;, "TS;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized unregisterService(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/catrobat/catroid/common/CatroidService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .local p0, "serviceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lorg/catrobat/catroid/common/ServiceProvider;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lorg/catrobat/catroid/common/ServiceProvider;->services:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 64
    sget-object v1, Lorg/catrobat/catroid/common/ServiceProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregister Service: Service \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is not registered!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v0

    return-void

    .line 62
    .end local p0    # "serviceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
