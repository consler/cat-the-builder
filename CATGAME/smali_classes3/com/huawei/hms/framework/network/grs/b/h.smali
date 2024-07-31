.class public Lcom/huawei/hms/framework/network/grs/b/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/framework/network/grs/b/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private d:Lcom/huawei/hms/framework/network/grs/a/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GRS_RequestController-Task"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/ExecutorsUtils;->newCachedThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/h;->b:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/h;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/framework/network/grs/b/h;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/b/h;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private a(Lcom/huawei/hms/framework/network/grs/b/d;Lcom/huawei/hms/framework/network/grs/b;)V
    .locals 2

    if-eqz p2, :cond_1

    const-string v0, "RequestController"

    if-nez p1, :cond_0

    const-string p1, "GrsResponse is null"

    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/huawei/hms/framework/network/grs/b;->a()V

    goto :goto_0

    :cond_0
    const-string v1, "GrsResponse is not null"

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/huawei/hms/framework/network/grs/b;->a(Lcom/huawei/hms/framework/network/grs/b/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/framework/network/grs/b/h;Lcom/huawei/hms/framework/network/grs/b/d;Lcom/huawei/hms/framework/network/grs/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/framework/network/grs/b/h;->a(Lcom/huawei/hms/framework/network/grs/b/d;Lcom/huawei/hms/framework/network/grs/b;)V

    return-void
.end method

.method static synthetic b(Lcom/huawei/hms/framework/network/grs/b/h;)Lcom/huawei/hms/framework/network/grs/a/a;
    .locals 0

    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/b/h;->d:Lcom/huawei/hms/framework/network/grs/a/a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/hms/framework/network/grs/b/d;
    .locals 6

    const-string v0, "RequestController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request to server with service name is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/b/h;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/c/d;->a(Ljava/lang/String;)Lcom/huawei/hms/framework/network/grs/c/d$a;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/b/h;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/framework/network/grs/b/b/b;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/huawei/hms/framework/network/grs/b/b/b;->b()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/huawei/hms/framework/network/grs/b/b/b;->a()Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/huawei/hms/framework/network/grs/c/d$a;->a()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    monitor-exit v1

    return-object v4

    :cond_3
    :goto_1
    const-string v2, "RequestController"

    const-string v3, "hitGrsRequestBean == null or request block is released."

    invoke-static {v2, v3}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/b/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/huawei/hms/framework/network/grs/b/h$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/huawei/hms/framework/network/grs/b/h$1;-><init>(Lcom/huawei/hms/framework/network/grs/b/h;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hms/framework/network/grs/b/h;->b:Ljava/util/Map;

    new-instance p3, Lcom/huawei/hms/framework/network/grs/b/b/b;

    invoke-direct {p3, p1}, Lcom/huawei/hms/framework/network/grs/b/b/b;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/framework/network/grs/b/d;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "RequestController"

    const-string p3, "when check result, find InterruptedException, check others"

    goto :goto_3

    :catch_1
    move-exception p1

    const-string p2, "RequestController"

    const-string p3, "when check result, find ExecutionException, check others"

    goto :goto_3

    :catch_2
    move-exception p1

    const-string p2, "RequestController"

    const-string p3, "when check result, find CancellationException, check others"

    :goto_3
    invoke-static {p2, p3, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/b;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/huawei/hms/framework/network/grs/b/h$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/huawei/hms/framework/network/grs/b/h$2;-><init>(Lcom/huawei/hms/framework/network/grs/b/h;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/b/h;->d:Lcom/huawei/hms/framework/network/grs/a/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/b/h;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
