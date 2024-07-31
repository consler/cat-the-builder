.class public Lcom/huawei/hms/framework/network/grs/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private c:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field private d:Z

.field private final e:Ljava/lang/Object;

.field private f:Landroid/content/Context;

.field private g:Lcom/huawei/hms/framework/network/grs/b/h;

.field private h:Lcom/huawei/hms/framework/network/grs/a/a;

.field private i:Lcom/huawei/hms/framework/network/grs/a/c;

.field private j:Lcom/huawei/hms/framework/network/grs/a;

.field private k:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/huawei/hms/framework/network/grs/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/c;->a:Ljava/lang/String;

    const-string v0, "GRS_GrsClient-Init"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/ExecutorsUtils;->newCachedThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/c;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->f:Landroid/content/Context;

    new-instance p1, Lcom/huawei/hms/framework/network/grs/b/h;

    invoke-direct {p1}, Lcom/huawei/hms/framework/network/grs/b/h;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->g:Lcom/huawei/hms/framework/network/grs/b/h;

    new-instance p1, Lcom/huawei/hms/framework/network/grs/a/c;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->f:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/huawei/hms/framework/network/grs/a/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->i:Lcom/huawei/hms/framework/network/grs/a/c;

    new-instance p1, Lcom/huawei/hms/framework/network/grs/a/a;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->i:Lcom/huawei/hms/framework/network/grs/a/c;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->g:Lcom/huawei/hms/framework/network/grs/b/h;

    invoke-direct {p1, v0, v1}, Lcom/huawei/hms/framework/network/grs/a/a;-><init>(Lcom/huawei/hms/framework/network/grs/a/c;Lcom/huawei/hms/framework/network/grs/b/h;)V

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->h:Lcom/huawei/hms/framework/network/grs/a/a;

    invoke-direct {p0, p2}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    new-instance p1, Lcom/huawei/hms/framework/network/grs/a;

    iget-object p2, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->h:Lcom/huawei/hms/framework/network/grs/a/a;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->g:Lcom/huawei/hms/framework/network/grs/b/h;

    invoke-direct {p1, p2, v0, v1}, Lcom/huawei/hms/framework/network/grs/a;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/a/a;Lcom/huawei/hms/framework/network/grs/b/h;)V

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->j:Lcom/huawei/hms/framework/network/grs/a;

    iget-boolean p1, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean p2, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->f:Landroid/content/Context;

    sget-object v1, Lcom/huawei/hms/framework/network/grs/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/huawei/hms/framework/network/grs/c$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/huawei/hms/framework/network/grs/c$1;-><init>(Lcom/huawei/hms/framework/network/grs/c;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/util/concurrent/Future;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method constructor <init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/a/c;
    .locals 0

    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/c;->i:Lcom/huawei/hms/framework/network/grs/a/c;

    return-object p0
.end method

.method private a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->clone()Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/huawei/hms/framework/network/grs/c;->a:Ljava/lang/String;

    const-string v2, "GrsClient catch CloneNotSupportedException"

    invoke-static {v1, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->copy()Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/framework/network/grs/c;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/hms/framework/network/grs/c;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c;->i:Lcom/huawei/hms/framework/network/grs/a/c;

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/huawei/hms/framework/network/grs/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_2

    const-string v3, "\\d+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/huawei/hms/framework/network/grs/c;->a:Ljava/lang/String;

    const-string v6, "convert expire time from String to Long catch NumberFormatException."

    invoke-static {v3, v6, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    invoke-direct {p0, v4, v5}, Lcom/huawei/hms/framework/network/grs/c;->a(J)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/huawei/hms/framework/network/grs/c;->a:Ljava/lang/String;

    const-string v3, "init interface auto clear some invalid sp\'s data."

    invoke-static {v2, v3}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c;->i:Lcom/huawei/hms/framework/network/grs/a/c;

    invoke-virtual {v2, v1}, Lcom/huawei/hms/framework/network/grs/a/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->i:Lcom/huawei/hms/framework/network/grs/a/c;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/framework/network/grs/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    sget-object p1, Lcom/huawei/hms/framework/network/grs/c;->a:Ljava/lang/String;

    const-string v0, "sp\'s content is empty."

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(J)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x240c8400

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/huawei/hms/framework/network/grs/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/a/a;
    .locals 0

    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/c;->h:Lcom/huawei/hms/framework/network/grs/a/a;

    return-object p0
.end method

.method private c()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/util/concurrent/Future;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/huawei/hms/framework/network/grs/c;->a:Ljava/lang/String;

    const-string v3, "init compute task occur unknown Exception"

    invoke-static {v2, v3, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception v1

    sget-object v1, Lcom/huawei/hms/framework/network/grs/c;->a:Ljava/lang/String;

    const-string v2, "init compute task timed out"

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :catch_2
    move-exception v1

    sget-object v2, Lcom/huawei/hms/framework/network/grs/c;->a:Ljava/lang/String;

    const-string v3, "init compute task interrupted."

    invoke-static {v2, v3, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/huawei/hms/framework/network/grs/c;->a:Ljava/lang/String;

    const-string v3, "init compute task failed."

    invoke-static {v2, v3, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_4
    move-exception v1

    sget-object v1, Lcom/huawei/hms/framework/network/grs/c;->a:Ljava/lang/String;

    const-string v2, "init compute task canceled."

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->j:Lcom/huawei/hms/framework/network/grs/a;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->f:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    sget-object p1, Lcom/huawei/hms/framework/network/grs/c;->a:Ljava/lang/String;

    const-string p2, "invalid para!"

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method a(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->j:Lcom/huawei/hms/framework/network/grs/a;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->f:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_2
    :goto_0
    sget-object p1, Lcom/huawei/hms/framework/network/grs/c;->a:Ljava/lang/String;

    const-string v0, "invalid para!"

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;)V
    .locals 2

    if-nez p2, :cond_0

    sget-object p1, Lcom/huawei/hms/framework/network/grs/c;->a:Ljava/lang/String;

    const-string p2, "IQueryUrlsCallBack is must not null for process continue."

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->j:Lcom/huawei/hms/framework/network/grs/a;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->f:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;Landroid/content/Context;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 p1, -0x6

    invoke-interface {p2, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackFail(I)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;)V
    .locals 2

    if-nez p3, :cond_0

    sget-object p1, Lcom/huawei/hms/framework/network/grs/c;->a:Ljava/lang/String;

    const-string p2, "IQueryUrlCallBack is must not null for process continue."

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->j:Lcom/huawei/hms/framework/network/grs/a;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->f:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;Landroid/content/Context;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 p1, -0x6

    invoke-interface {p3, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackFail(I)V

    return-void
.end method

.method a()Z
    .locals 3

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c;->f:Landroid/content/Context;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->h:Lcom/huawei/hms/framework/network/grs/a/a;

    invoke-virtual {v1, v0, v2}, Lcom/huawei/hms/framework/network/grs/a/a;->b(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method a(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/huawei/hms/framework/network/grs/c;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/huawei/hms/framework/network/grs/c;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object p1, p1, Lcom/huawei/hms/framework/network/grs/c;->c:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->compare(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method b()V
    .locals 4

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/c;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->i:Lcom/huawei/hms/framework/network/grs/a/c;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/framework/network/grs/a/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->i:Lcom/huawei/hms/framework/network/grs/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/framework/network/grs/a/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->g:Lcom/huawei/hms/framework/network/grs/b/h;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/framework/network/grs/b/h;->a(Ljava/lang/String;)V

    return-void
.end method
