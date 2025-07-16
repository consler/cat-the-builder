.class public Lcom/huawei/hms/framework/common/ExecutorsUtils;
.super Ljava/lang/Object;
.source "ExecutorsUtils.java"


# static fields
.field private static final THREADNAME_HEADER:Ljava/lang/String; = "NetworkKit_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/huawei/hms/framework/common/ExecutorsUtils$1;

    invoke-direct {v0, p0}, Lcom/huawei/hms/framework/common/ExecutorsUtils$1;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "ThreadName is empty"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newCachedThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 38
    invoke-static {p0}, Lcom/huawei/hms/framework/common/ExecutorsUtils;->createThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    .line 39
    new-instance p0, Lcom/huawei/hms/framework/common/ThreadPoolExcutorEnhance;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/huawei/hms/framework/common/ThreadPoolExcutorEnhance;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcom/huawei/hms/framework/common/ThreadPoolExcutorEnhance;->allowCoreThreadTimeOut(Z)V

    return-object p0
.end method

.method public static newFixedThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 83
    invoke-static {p1}, Lcom/huawei/hms/framework/common/ExecutorsUtils;->createThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    .line 84
    new-instance p1, Lcom/huawei/hms/framework/common/ThreadPoolExcutorEnhance;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p1

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/huawei/hms/framework/common/ThreadPoolExcutorEnhance;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 p0, 0x1

    .line 86
    invoke-virtual {p1, p0}, Lcom/huawei/hms/framework/common/ThreadPoolExcutorEnhance;->allowCoreThreadTimeOut(Z)V

    return-object p1
.end method

.method public static newScheduledThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 68
    invoke-static {p1}, Lcom/huawei/hms/framework/common/ExecutorsUtils;->createThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    .line 69
    new-instance v0, Lcom/huawei/hms/framework/common/ScheduledThreadPoolExecutorEnhance;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hms/framework/common/ScheduledThreadPoolExecutorEnhance;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/huawei/hms/framework/common/ExecutorsUtils;->createThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/huawei/hms/framework/common/ExecutorsEnhance;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
