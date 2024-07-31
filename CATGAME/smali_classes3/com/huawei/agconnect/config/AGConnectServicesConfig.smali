.class public abstract Lcom/huawei/agconnect/config/AGConnectServicesConfig;
.super Ljava/lang/Object;
.source "AGConnectServicesConfig.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/agconnect/config/AGConnectServicesConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCES_LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->INSTANCES:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->INSTANCES_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "appCtx":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 47
    move-object v0, p0

    .line 50
    :cond_0
    sget-object v1, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->INSTANCES_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v2, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->INSTANCES:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    .line 52
    .local v2, "config":Lcom/huawei/agconnect/config/AGConnectServicesConfig;
    if-nez v2, :cond_1

    .line 53
    new-instance v3, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;

    invoke-direct {v3, v0}, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;-><init>(Landroid/content/Context;)V

    move-object v2, v3

    .line 54
    sget-object v3, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->INSTANCES:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_1
    monitor-exit v1

    return-object v2

    .line 57
    .end local v2    # "config":Lcom/huawei/agconnect/config/AGConnectServicesConfig;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public abstract getBoolean(Ljava/lang/String;)Z
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getInt(Ljava/lang/String;)I
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract overlayWith(Lcom/huawei/agconnect/config/LazyInputStream;)V
.end method

.method public abstract overlayWith(Ljava/io/InputStream;)V
.end method
