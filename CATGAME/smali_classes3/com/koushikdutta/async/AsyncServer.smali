.class public Lcom/koushikdutta/async/AsyncServer;
.super Ljava/lang/Object;
.source "AsyncServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/AsyncServer$NamedThreadFactory;,
        Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;,
        Lcom/koushikdutta/async/AsyncServer$ConnectFuture;,
        Lcom/koushikdutta/async/AsyncServer$ObjectHolder;,
        Lcom/koushikdutta/async/AsyncServer$Scheduler;,
        Lcom/koushikdutta/async/AsyncServer$Scheduled;,
        Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final LOGTAG:Ljava/lang/String; = "NIO"

.field private static final QUEUE_EMPTY:J = 0x7fffffffffffffffL

.field private static final ipSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field static mInstance:Lcom/koushikdutta/async/AsyncServer;

.field static final mServers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Thread;",
            "Lcom/koushikdutta/async/AsyncServer;",
            ">;"
        }
    .end annotation
.end field

.field private static synchronousResolverWorkers:Ljava/util/concurrent/ExecutorService;

.field private static synchronousWorkers:Ljava/util/concurrent/ExecutorService;


# instance fields
.field mAffinity:Ljava/lang/Thread;

.field mName:Ljava/lang/String;

.field mQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;"
        }
    .end annotation
.end field

.field private mSelector:Lcom/koushikdutta/async/SelectorWrapper;

.field postCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    nop

    .line 88
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 89
    const-string v0, "java.net.preferIPv4Stack"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    .line 97
    :goto_0
    new-instance v0, Lcom/koushikdutta/async/AsyncServer;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncServer;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->mInstance:Lcom/koushikdutta/async/AsyncServer;

    .line 132
    const-string v0, "AsyncServer-worker-"

    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->newSynchronousWorkers(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->synchronousWorkers:Ljava/util/concurrent/ExecutorService;

    .line 429
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$8;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncServer$8;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->ipSorter:Ljava/util/Comparator;

    .line 442
    const-string v0, "AsyncServer-resolver-"

    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->newSynchronousWorkers(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->synchronousResolverWorkers:Ljava/util/concurrent/ExecutorService;

    .line 557
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->mServers:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/AsyncServer;-><init>(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/AsyncServer;->postCounter:I

    .line 231
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/koushikdutta/async/AsyncServer$Scheduler;->INSTANCE:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    .line 114
    if-nez p1, :cond_0

    .line 115
    const-string p1, "AsyncServer"

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/SelectorWrapper;

    .line 44
    invoke-static {p0}, Lcom/koushikdutta/async/AsyncServer;->shutdownEverything(Lcom/koushikdutta/async/SelectorWrapper;)V

    return-void
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/AsyncServer;)Lcom/koushikdutta/async/SelectorWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/AsyncServer;

    .line 44
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/AsyncServer;
    .param p1, "x1"    # Ljava/net/InetSocketAddress;
    .param p2, "x2"    # Lcom/koushikdutta/async/callback/ConnectCallback;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->connectResolvedInetSocketAddress(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Comparator;
    .locals 1

    .line 44
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->ipSorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/AsyncServer;
    .param p1, "x1"    # Lcom/koushikdutta/async/AsyncNetworkSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->handleSocket(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    return-void
.end method

.method static synthetic access$800(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/AsyncServer;
    .param p1, "x1"    # Lcom/koushikdutta/async/SelectorWrapper;
    .param p2, "x2"    # Ljava/util/PriorityQueue;

    .line 44
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->run(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V

    return-void
.end method

.method private addMe()Z
    .locals 4

    .line 560
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->mServers:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 561
    :try_start_0
    sget-object v1, Lcom/koushikdutta/async/AsyncServer;->mServers:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/AsyncServer;

    .line 562
    .local v1, "current":Lcom/koushikdutta/async/AsyncServer;
    if-eqz v1, :cond_0

    .line 564
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 566
    :cond_0
    sget-object v2, Lcom/koushikdutta/async/AsyncServer;->mServers:Ljava/util/WeakHashMap;

    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    invoke-virtual {v2, v3, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    nop

    .end local v1    # "current":Lcom/koushikdutta/async/AsyncServer;
    monitor-exit v0

    .line 568
    const/4 v0, 0x1

    return v0

    .line 567
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private connectResolvedInetSocketAddress(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
    .locals 2
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "callback"    # Lcom/koushikdutta/async/callback/ConnectCallback;

    .line 363
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$1;)V

    .line 364
    .local v0, "cancel":Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
    nop

    .line 366
    new-instance v1, Lcom/koushikdutta/async/AsyncServer$6;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/koushikdutta/async/AsyncServer$6;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$ConnectFuture;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/net/InetSocketAddress;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 391
    return-object v0
.end method

.method public static getCurrentThreadServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 2

    .line 572
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->mServers:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public static getDefault()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 99
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->mInstance:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method private handleSocket(Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    .locals 2
    .param p1, "handler"    # Lcom/koushikdutta/async/AsyncNetworkSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->getChannel()Lcom/koushikdutta/async/ChannelWrapper;

    move-result-object v0

    .line 121
    .local v0, "sc":Lcom/koushikdutta/async/ChannelWrapper;
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-virtual {v1}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ChannelWrapper;->register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 122
    .local v1, "ckey":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v1, p1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p1, p0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->setup(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    .line 124
    return-void
.end method

.method private static lockAndRunQueue(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J
    .locals 8
    .param p0, "server"    # Lcom/koushikdutta/async/AsyncServer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;)J"
        }
    .end annotation

    .line 716
    .local p1, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/koushikdutta/async/AsyncServer$Scheduled;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 720
    .local v0, "wait":J
    :goto_0
    const/4 v2, 0x0

    .line 722
    .local v2, "run":Lcom/koushikdutta/async/AsyncServer$Scheduled;
    monitor-enter p0

    .line 723
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 725
    .local v3, "now":J
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 726
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    .line 727
    .local v5, "s":Lcom/koushikdutta/async/AsyncServer$Scheduled;
    iget-wide v6, v5, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    cmp-long v6, v6, v3

    if-gtz v6, :cond_0

    .line 728
    move-object v2, v5

    goto :goto_1

    .line 731
    :cond_0
    iget-wide v6, v5, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    sub-long v0, v6, v3

    .line 732
    invoke-virtual {p1, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 735
    .end local v3    # "now":J
    .end local v5    # "s":Lcom/koushikdutta/async/AsyncServer$Scheduled;
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    if-nez v2, :cond_2

    .line 738
    nop

    .line 743
    .end local v2    # "run":Lcom/koushikdutta/async/AsyncServer$Scheduled;
    const/4 v2, 0x0

    iput v2, p0, Lcom/koushikdutta/async/AsyncServer;->postCounter:I

    .line 744
    return-wide v0

    .line 740
    .restart local v2    # "run":Lcom/koushikdutta/async/AsyncServer$Scheduled;
    :cond_2
    iget-object v3, v2, Lcom/koushikdutta/async/AsyncServer$Scheduled;->runnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 741
    .end local v2    # "run":Lcom/koushikdutta/async/AsyncServer$Scheduled;
    goto :goto_0

    .line 735
    .restart local v2    # "run":Lcom/koushikdutta/async/AsyncServer$Scheduled;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static newSynchronousWorkers(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 9
    .param p0, "prefix"    # Ljava/lang/String;

    .line 423
    new-instance v7, Lcom/koushikdutta/async/AsyncServer$NamedThreadFactory;

    invoke-direct {v7, p0}, Lcom/koushikdutta/async/AsyncServer$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 424
    .local v7, "tf":Ljava/util/concurrent/ThreadFactory;
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-wide/16 v3, 0xa

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 426
    .local v0, "tpe":Ljava/util/concurrent/ThreadPoolExecutor;
    return-object v0
.end method

.method public static post(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;-><init>(Lcom/koushikdutta/async/AsyncServer$1;)V

    .line 74
    .local v0, "wrapper":Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/async/ThreadQueue;->getOrCreateThreadQueue(Ljava/lang/Thread;)Lcom/koushikdutta/async/ThreadQueue;

    move-result-object v1

    .line 75
    .local v1, "threadQueue":Lcom/koushikdutta/async/ThreadQueue;
    iput-object v1, v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->threadQueue:Lcom/koushikdutta/async/ThreadQueue;

    .line 76
    iput-object p0, v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->handler:Landroid/os/Handler;

    .line 77
    iput-object p1, v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->runnable:Ljava/lang/Runnable;

    .line 79
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ThreadQueue;->add(Ljava/lang/Runnable;)Z

    .line 80
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    iget-object v2, v1, Lcom/koushikdutta/async/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 84
    return-void
.end method

.method private static run(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .locals 3
    .param p0, "server"    # Lcom/koushikdutta/async/AsyncServer;
    .param p1, "selector"    # Lcom/koushikdutta/async/SelectorWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Lcom/koushikdutta/async/SelectorWrapper;",
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;)V"
        }
    .end annotation

    .line 658
    .local p2, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/koushikdutta/async/AsyncServer$Scheduled;>;"
    :goto_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->runLoop(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catch Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    goto :goto_1

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;
    const-string v1, "NIO"

    const-string v2, "Selector exception, shutting down"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    :try_start_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 667
    goto :goto_1

    .line 666
    :catch_1
    move-exception v1

    .line 670
    .end local v0    # "e":Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;
    :goto_1
    monitor-enter p0

    .line 671
    :try_start_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 672
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 674
    :cond_1
    invoke-static {p1}, Lcom/koushikdutta/async/AsyncServer;->shutdownEverything(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 675
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    if-ne v0, p1, :cond_2

    .line 676
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    sget-object v2, Lcom/koushikdutta/async/AsyncServer$Scheduler;->INSTANCE:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    .line 677
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 678
    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    .line 680
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 683
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->mServers:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 684
    :try_start_3
    sget-object v1, Lcom/koushikdutta/async/AsyncServer;->mServers:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    monitor-exit v0

    .line 687
    return-void

    .line 685
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 681
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private run(Z)V
    .locals 6
    .param p1, "newThread"    # Z

    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "reentrant":Z
    monitor-enter p0

    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    if-eqz v1, :cond_0

    .line 582
    const-string v1, "NIO"

    const-string v2, "Reentrant call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    nop

    .line 585
    const/4 v0, 0x1

    .line 586
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 587
    .local v1, "selector":Lcom/koushikdutta/async/SelectorWrapper;
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/koushikdutta/async/AsyncServer$Scheduled;>;"
    goto :goto_2

    .line 591
    .end local v1    # "selector":Lcom/koushikdutta/async/SelectorWrapper;
    .end local v2    # "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/koushikdutta/async/AsyncServer$Scheduled;>;"
    :cond_0
    :try_start_1
    new-instance v1, Lcom/koushikdutta/async/SelectorWrapper;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/SelectorWrapper;-><init>(Ljava/nio/channels/Selector;)V

    iput-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 592
    .restart local v1    # "selector":Lcom/koushikdutta/async/SelectorWrapper;
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    .restart local v2    # "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/koushikdutta/async/AsyncServer$Scheduled;>;"
    nop

    .line 597
    if-eqz p1, :cond_1

    .line 598
    :try_start_2
    new-instance v3, Lcom/koushikdutta/async/AsyncServer$14;

    iget-object v4, p0, Lcom/koushikdutta/async/AsyncServer;->mName:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v1, v2}, Lcom/koushikdutta/async/AsyncServer$14;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V

    iput-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    goto :goto_0

    .line 605
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    .line 607
    :goto_0
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncServer;->addMe()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_2

    .line 609
    :try_start_3
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-virtual {v3}, Lcom/koushikdutta/async/SelectorWrapper;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 612
    goto :goto_1

    .line 611
    :catch_0
    move-exception v3

    .line 613
    :goto_1
    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 614
    iput-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    .line 615
    monitor-exit p0

    return-void

    .line 617
    :cond_2
    if-eqz p1, :cond_3

    .line 618
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 620
    monitor-exit p0

    return-void

    .line 626
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 628
    if-eqz v0, :cond_4

    .line 630
    :try_start_5
    invoke-static {p0, v1, v2}, Lcom/koushikdutta/async/AsyncServer;->runLoop(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    :try_end_5
    .catch Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException; {:try_start_5 .. :try_end_5} :catch_1

    .line 640
    goto :goto_3

    .line 632
    :catch_1
    move-exception v3

    .line 633
    .local v3, "e":Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;
    const-string v4, "NIO"

    const-string v5, "Selector closed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    :try_start_6
    invoke-virtual {v1}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 639
    goto :goto_3

    .line 638
    :catch_2
    move-exception v4

    .line 641
    .end local v3    # "e":Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;
    :goto_3
    return-void

    .line 644
    :cond_4
    invoke-static {p0, v1, v2}, Lcom/koushikdutta/async/AsyncServer;->run(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V

    .line 645
    return-void

    .line 594
    .end local v1    # "selector":Lcom/koushikdutta/async/SelectorWrapper;
    .end local v2    # "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/koushikdutta/async/AsyncServer$Scheduled;>;"
    :catch_3
    move-exception v1

    .line 595
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    monitor-exit p0

    return-void

    .line 626
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1
.end method

.method private static runLoop(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .locals 17
    .param p0, "server"    # Lcom/koushikdutta/async/AsyncServer;
    .param p1, "selector"    # Lcom/koushikdutta/async/SelectorWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Lcom/koushikdutta/async/SelectorWrapper;",
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;
        }
    .end annotation

    .line 755
    .local p2, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/koushikdutta/async/AsyncServer$Scheduled;>;"
    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 758
    .local v2, "needsSelect":Z
    move-object/from16 v3, p2

    invoke-static {v1, v3}, Lcom/koushikdutta/async/AsyncServer;->lockAndRunQueue(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J

    move-result-wide v4

    .line 760
    .local v4, "wait":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 763
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/koushikdutta/async/SelectorWrapper;->selectNow()I

    move-result v0

    .line 764
    .local v0, "readyNow":I
    const-wide v6, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    .line 767
    invoke-virtual/range {p1 .. p1}, Lcom/koushikdutta/async/SelectorWrapper;->keys()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    if-nez v8, :cond_1

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 769
    monitor-exit p0

    return-void

    .line 773
    :cond_0
    const/4 v2, 0x0

    .line 775
    .end local v0    # "readyNow":I
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    if-eqz v2, :cond_3

    .line 778
    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 780
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/koushikdutta/async/SelectorWrapper;->select()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v6, p1

    goto :goto_0

    .line 784
    :cond_2
    move-object/from16 v6, p1

    :try_start_3
    invoke-virtual {v6, v4, v5}, Lcom/koushikdutta/async/SelectorWrapper;->select(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 777
    :cond_3
    move-object/from16 v6, p1

    .line 790
    :goto_0
    nop

    .line 793
    invoke-virtual/range {p1 .. p1}, Lcom/koushikdutta/async/SelectorWrapper;->selectedKeys()Ljava/util/Set;

    move-result-object v7

    .line 794
    .local v7, "readyKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/nio/channels/SelectionKey;

    .line 796
    .local v9, "key":Ljava/nio/channels/SelectionKey;
    :try_start_4
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_6

    .line 797
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v12, v0

    .line 798
    .local v12, "nextReady":Ljava/nio/channels/ServerSocketChannel;
    const/4 v13, 0x0

    .line 799
    .local v13, "sc":Ljava/nio/channels/SocketChannel;
    const/4 v14, 0x0

    .line 801
    .local v14, "ckey":Ljava/nio/channels/SelectionKey;
    :try_start_5
    invoke-virtual {v12}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    move-object v13, v0

    .line 802
    if-nez v13, :cond_4

    .line 803
    goto :goto_1

    .line 804
    :cond_4
    invoke-virtual {v13, v10}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 805
    invoke-virtual/range {p1 .. p1}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v13, v0, v11}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    move-object v14, v0

    .line 806
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/callback/ListenCallback;

    .line 807
    .local v0, "serverHandler":Lcom/koushikdutta/async/callback/ListenCallback;
    new-instance v15, Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-direct {v15}, Lcom/koushikdutta/async/AsyncNetworkSocket;-><init>()V

    .line 808
    .local v15, "handler":Lcom/koushikdutta/async/AsyncNetworkSocket;
    invoke-virtual {v13}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/net/InetSocketAddress;

    invoke-virtual {v15, v13, v10}, Lcom/koushikdutta/async/AsyncNetworkSocket;->attach(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 809
    invoke-virtual {v15, v1, v14}, Lcom/koushikdutta/async/AsyncNetworkSocket;->setup(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    .line 810
    invoke-virtual {v14, v15}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    invoke-interface {v0, v15}, Lcom/koushikdutta/async/callback/ListenCallback;->onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_3

    .line 817
    .end local v0    # "serverHandler":Lcom/koushikdutta/async/callback/ListenCallback;
    .end local v15    # "handler":Lcom/koushikdutta/async/AsyncNetworkSocket;
    goto :goto_2

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    new-array v10, v11, [Ljava/io/Closeable;

    const/4 v11, 0x0

    aput-object v13, v10, v11

    invoke-static {v10}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 815
    if-eqz v14, :cond_5

    .line 816
    invoke-virtual {v14}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 818
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "nextReady":Ljava/nio/channels/ServerSocketChannel;
    .end local v13    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v14    # "ckey":Ljava/nio/channels/SelectionKey;
    :cond_5
    :goto_2
    goto :goto_3

    .line 819
    :cond_6
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 820
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/AsyncNetworkSocket;

    .line 821
    .local v0, "handler":Lcom/koushikdutta/async/AsyncNetworkSocket;
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->onReadable()I

    move-result v10

    .line 822
    .local v10, "transmitted":I
    invoke-virtual {v1, v10}, Lcom/koushikdutta/async/AsyncServer;->onDataReceived(I)V

    .line 823
    .end local v0    # "handler":Lcom/koushikdutta/async/AsyncNetworkSocket;
    .end local v10    # "transmitted":I
    goto :goto_3

    .line 824
    :cond_7
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 825
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/AsyncNetworkSocket;

    .line 826
    .restart local v0    # "handler":Lcom/koushikdutta/async/AsyncNetworkSocket;
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->onDataWritable()V

    .line 827
    .end local v0    # "handler":Lcom/koushikdutta/async/AsyncNetworkSocket;
    goto :goto_3

    .line 828
    :cond_8
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 829
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    move-object v10, v0

    .line 830
    .local v10, "cancel":Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object v12, v0

    .line 831
    .local v12, "sc":Ljava/nio/channels/SocketChannel;
    invoke-virtual {v9, v11}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_3

    .line 834
    const/4 v13, 0x0

    :try_start_7
    invoke-virtual {v12}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 835
    new-instance v0, Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;-><init>()V

    move-object v14, v0

    .line 836
    .local v14, "newHandler":Lcom/koushikdutta/async/AsyncNetworkSocket;
    invoke-virtual {v14, v1, v9}, Lcom/koushikdutta/async/AsyncNetworkSocket;->setup(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    .line 837
    invoke-virtual {v12}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v14, v12, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->attach(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 838
    invoke-virtual {v9, v14}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_3

    .line 846
    nop

    .line 848
    :try_start_8
    invoke-virtual {v10, v14}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->setComplete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 849
    iget-object v0, v10, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v0, v13, v14}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_3

    .line 853
    :cond_9
    nop

    .line 854
    .end local v10    # "cancel":Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
    .end local v12    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v14    # "newHandler":Lcom/koushikdutta/async/AsyncNetworkSocket;
    nop

    .line 861
    :goto_3
    goto :goto_4

    .line 851
    .restart local v10    # "cancel":Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
    .restart local v12    # "sc":Ljava/nio/channels/SocketChannel;
    .restart local v14    # "newHandler":Lcom/koushikdutta/async/AsyncNetworkSocket;
    :catch_1
    move-exception v0

    .line 852
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "needsSelect":Z
    .end local v4    # "wait":J
    .end local v7    # "readyKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local v9    # "key":Ljava/nio/channels/SelectionKey;
    .end local p0    # "server":Lcom/koushikdutta/async/AsyncServer;
    .end local p1    # "selector":Lcom/koushikdutta/async/SelectorWrapper;
    .end local p2    # "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/koushikdutta/async/AsyncServer$Scheduled;>;"
    throw v11

    .line 840
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "newHandler":Lcom/koushikdutta/async/AsyncNetworkSocket;
    .restart local v2    # "needsSelect":Z
    .restart local v4    # "wait":J
    .restart local v7    # "readyKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .restart local v9    # "key":Ljava/nio/channels/SelectionKey;
    .restart local p0    # "server":Lcom/koushikdutta/async/AsyncServer;
    .restart local p1    # "selector":Lcom/koushikdutta/async/SelectorWrapper;
    .restart local p2    # "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/koushikdutta/async/AsyncServer$Scheduled;>;"
    :catch_2
    move-exception v0

    .line 841
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 842
    new-array v11, v11, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v12, v11, v14

    invoke-static {v11}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 843
    invoke-virtual {v10, v0}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->setComplete(Ljava/lang/Exception;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 844
    iget-object v11, v10, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v11, v0, v13}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 845
    :cond_a
    goto/16 :goto_1

    .line 856
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v10    # "cancel":Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
    .end local v12    # "sc":Ljava/nio/channels/SocketChannel;
    :cond_b
    const-string v0, "NIO"

    const-string v10, "wtf"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v10, "Unknown key state."

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "needsSelect":Z
    .end local v4    # "wait":J
    .end local v7    # "readyKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local v9    # "key":Ljava/nio/channels/SelectionKey;
    .end local p0    # "server":Lcom/koushikdutta/async/AsyncServer;
    .end local p1    # "selector":Lcom/koushikdutta/async/SelectorWrapper;
    .end local p2    # "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/koushikdutta/async/AsyncServer$Scheduled;>;"
    throw v0
    :try_end_9
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_3

    .line 860
    .restart local v2    # "needsSelect":Z
    .restart local v4    # "wait":J
    .restart local v7    # "readyKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .restart local v9    # "key":Ljava/nio/channels/SelectionKey;
    .restart local p0    # "server":Lcom/koushikdutta/async/AsyncServer;
    .restart local p1    # "selector":Lcom/koushikdutta/async/SelectorWrapper;
    .restart local p2    # "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/koushikdutta/async/AsyncServer$Scheduled;>;"
    :catch_3
    move-exception v0

    .line 862
    .end local v9    # "key":Ljava/nio/channels/SelectionKey;
    :goto_4
    goto/16 :goto_1

    .line 863
    :cond_c
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 864
    return-void

    .line 775
    .end local v7    # "readyKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v6, p1

    :goto_5
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .end local v2    # "needsSelect":Z
    .end local v4    # "wait":J
    .end local p0    # "server":Lcom/koushikdutta/async/AsyncServer;
    .end local p1    # "selector":Lcom/koushikdutta/async/SelectorWrapper;
    .end local p2    # "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/koushikdutta/async/AsyncServer$Scheduled;>;"
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 788
    .restart local v2    # "needsSelect":Z
    .restart local v4    # "wait":J
    .restart local p0    # "server":Lcom/koushikdutta/async/AsyncServer;
    .restart local p1    # "selector":Lcom/koushikdutta/async/SelectorWrapper;
    .restart local p2    # "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/koushikdutta/async/AsyncServer$Scheduled;>;"
    :catch_4
    move-exception v0

    goto :goto_6

    .line 775
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 788
    :catch_5
    move-exception v0

    move-object/from16 v6, p1

    .line 789
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    new-instance v7, Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;

    invoke-direct {v7, v0}, Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method private static shutdownEverything(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 1
    .param p0, "selector"    # Lcom/koushikdutta/async/SelectorWrapper;

    .line 705
    invoke-static {p0}, Lcom/koushikdutta/async/AsyncServer;->shutdownKeys(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 708
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 712
    :goto_0
    return-void
.end method

.method private static shutdownKeys(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 5
    .param p0, "selector"    # Lcom/koushikdutta/async/SelectorWrapper;

    .line 691
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 692
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 694
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 697
    goto :goto_1

    .line 696
    :catch_0
    move-exception v2

    .line 698
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    :goto_1
    goto :goto_0

    .line 701
    :cond_0
    goto :goto_2

    .line 700
    :catch_1
    move-exception v0

    .line 702
    :goto_2
    return-void
.end method

.method private static wakeup(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 2
    .param p0, "selector"    # Lcom/koushikdutta/async/SelectorWrapper;

    .line 134
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->synchronousWorkers:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/koushikdutta/async/AsyncServer$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncServer$1;-><init>(Lcom/koushikdutta/async/SelectorWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method


# virtual methods
.method public connectDatagram(Ljava/lang/String;I)Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v6

    .line 484
    .local v6, "socket":Ljava/nio/channels/DatagramChannel;
    new-instance v0, Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncDatagramSocket;-><init>()V

    move-object v7, v0

    .line 485
    .local v7, "handler":Lcom/koushikdutta/async/AsyncDatagramSocket;
    invoke-virtual {v7, v6}, Lcom/koushikdutta/async/AsyncDatagramSocket;->attach(Ljava/nio/channels/DatagramChannel;)V

    .line 489
    new-instance v8, Lcom/koushikdutta/async/AsyncServer$11;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/AsyncServer$11;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ILcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;)V

    invoke-virtual {p0, v8}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    .line 503
    return-object v7
.end method

.method public connectDatagram(Ljava/net/SocketAddress;)Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 3
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 537
    .local v0, "socket":Ljava/nio/channels/DatagramChannel;
    new-instance v1, Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {v1}, Lcom/koushikdutta/async/AsyncDatagramSocket;-><init>()V

    .line 538
    .local v1, "handler":Lcom/koushikdutta/async/AsyncDatagramSocket;
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/AsyncDatagramSocket;->attach(Ljava/nio/channels/DatagramChannel;)V

    .line 542
    new-instance v2, Lcom/koushikdutta/async/AsyncServer$13;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/koushikdutta/async/AsyncServer$13;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V

    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    .line 554
    return-object v1
.end method

.method public connectSocket(Ljava/lang/String;ILcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "callback"    # Lcom/koushikdutta/async/callback/ConnectCallback;

    .line 419
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/koushikdutta/async/AsyncServer;->connectSocket(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    return-object v0
.end method

.method public connectSocket(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 3
    .param p1, "remote"    # Ljava/net/InetSocketAddress;
    .param p2, "callback"    # Lcom/koushikdutta/async/callback/ConnectCallback;

    .line 395
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->connectResolvedInetSocketAddress(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    move-result-object v0

    return-object v0

    .line 398
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 400
    .local v0, "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<Lcom/koushikdutta/async/AsyncNetworkSocket;>;"
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->getByName(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    .line 401
    .local v1, "lookup":Lcom/koushikdutta/async/future/Future;, "Lcom/koushikdutta/async/future/Future<Ljava/net/InetAddress;>;"
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 402
    new-instance v2, Lcom/koushikdutta/async/AsyncServer$7;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/koushikdutta/async/AsyncServer$7;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/net/InetSocketAddress;)V

    .line 403
    invoke-interface {v1, v2}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    .line 415
    return-object v0
.end method

.method public dump()V
    .locals 1

    .line 867
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$15;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/AsyncServer$15;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 881
    return-void
.end method

.method public getAffinity()Ljava/lang/Thread;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    return-object v0
.end method

.method public getAllByName(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "[",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 444
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 445
    .local v0, "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<[Ljava/net/InetAddress;>;"
    sget-object v1, Lcom/koushikdutta/async/AsyncServer;->synchronousResolverWorkers:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/koushikdutta/async/AsyncServer$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/AsyncServer$9;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 469
    return-object v0
.end method

.method public getByName(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 473
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->getAllByName(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/AsyncServer$10;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncServer$10;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    .line 474
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/future/Future;->then(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/future/Future;

    .line 473
    return-object v0
.end method

.method public isAffinityThread()Z
    .locals 2

    .line 888
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAffinityThreadOrStopped()Z
    .locals 2

    .line 892
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    .line 893
    .local v0, "affinity":Ljava/lang/Thread;
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isRunning()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listen(Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;
    .locals 8
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "handler"    # Lcom/koushikdutta/async/callback/ListenCallback;

    .line 299
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;-><init>(Lcom/koushikdutta/async/AsyncServer$1;)V

    .line 300
    .local v0, "holder":Lcom/koushikdutta/async/AsyncServer$ObjectHolder;, "Lcom/koushikdutta/async/AsyncServer$ObjectHolder<Lcom/koushikdutta/async/AsyncServerSocket;>;"
    new-instance v1, Lcom/koushikdutta/async/AsyncServer$5;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/koushikdutta/async/AsyncServer$5;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncServer$ObjectHolder;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    .line 343
    iget-object v1, v0, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;->held:Ljava/lang/Object;

    check-cast v1, Lcom/koushikdutta/async/AsyncServerSocket;

    return-object v1
.end method

.method protected onDataReceived(I)V
    .locals 0
    .param p1, "transmitted"    # I

    .line 290
    return-void
.end method

.method protected onDataSent(I)V
    .locals 0
    .param p1, "transmitted"    # I

    .line 293
    return-void
.end method

.method public openDatagram()Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/AsyncServer;->openDatagram(Ljava/net/SocketAddress;Z)Lcom/koushikdutta/async/AsyncDatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method public openDatagram(Ljava/net/SocketAddress;Z)Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 9
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "reuseAddress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v6

    .line 512
    .local v6, "socket":Ljava/nio/channels/DatagramChannel;
    new-instance v0, Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncDatagramSocket;-><init>()V

    move-object v7, v0

    .line 513
    .local v7, "handler":Lcom/koushikdutta/async/AsyncDatagramSocket;
    invoke-virtual {v7, v6}, Lcom/koushikdutta/async/AsyncDatagramSocket;->attach(Ljava/nio/channels/DatagramChannel;)V

    .line 517
    new-instance v8, Lcom/koushikdutta/async/AsyncServer$12;

    move-object v0, v8

    move-object v1, p0

    move v2, p2

    move-object v3, v6

    move-object v4, p1

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/AsyncServer$12;-><init>(Lcom/koushikdutta/async/AsyncServer;ZLjava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;Lcom/koushikdutta/async/AsyncDatagramSocket;)V

    invoke-virtual {p0, v8}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    .line 532
    return-object v7
.end method

.method public post(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 1
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 192
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer$2;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 188
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .line 150
    monitor-enter p0

    .line 160
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 161
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    .local v0, "time":J
    goto :goto_0

    .line 175
    .end local v0    # "time":J
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 162
    :cond_0
    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    .line 163
    iget v0, p0, Lcom/koushikdutta/async/AsyncServer;->postCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/koushikdutta/async/AsyncServer;->postCounter:I

    int-to-long v0, v0

    .restart local v0    # "time":J
    goto :goto_0

    .line 164
    .end local v0    # "time":J
    :cond_1
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    iget-wide v2, v2, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .restart local v0    # "time":J
    goto :goto_0

    .line 167
    .end local v0    # "time":J
    :cond_2
    const-wide/16 v0, 0x0

    .line 168
    .restart local v0    # "time":J
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    new-instance v3, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    invoke-direct {v3, p1, v0, v1}, Lcom/koushikdutta/async/AsyncServer$Scheduled;-><init>(Ljava/lang/Runnable;J)V

    move-object v4, v3

    .local v4, "s":Lcom/koushikdutta/async/AsyncServer$Scheduled;
    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    if-nez v2, :cond_3

    .line 171
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/koushikdutta/async/AsyncServer;->run(Z)V

    .line 172
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->isAffinityThread()Z

    move-result v2

    if-nez v2, :cond_4

    .line 173
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-static {v2}, Lcom/koushikdutta/async/AsyncServer;->wakeup(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 175
    .end local v0    # "time":J
    :cond_4
    monitor-exit p0

    .line 176
    return-object v4

    .line 175
    .end local v4    # "s":Lcom/koushikdutta/async/AsyncServer$Scheduled;
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public postImmediate(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 181
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeAllCallbacks(Ljava/lang/Object;)V
    .locals 1
    .param p1, "scheduled"    # Ljava/lang/Object;

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 201
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->lockAndRunQueue(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J

    .line 204
    return-void

    .line 207
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 208
    .local v0, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v1, Lcom/koushikdutta/async/AsyncServer$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/koushikdutta/async/AsyncServer$3;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 216
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "NIO"

    const-string v3, "run"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 8

    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->isAffinityThread()Z

    move-result v0

    .line 256
    .local v0, "isAffinityThread":Z
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 257
    .local v1, "currentSelector":Lcom/koushikdutta/async/SelectorWrapper;
    if-nez v1, :cond_0

    .line 258
    monitor-exit p0

    return-void

    .line 259
    :cond_0
    sget-object v2, Lcom/koushikdutta/async/AsyncServer;->mServers:Ljava/util/WeakHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 260
    :try_start_1
    sget-object v3, Lcom/koushikdutta/async/AsyncServer;->mServers:Ljava/util/WeakHashMap;

    iget-object v4, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :try_start_2
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 265
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    new-instance v4, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    new-instance v5, Lcom/koushikdutta/async/AsyncServer$4;

    invoke-direct {v5, p0, v1, v2}, Lcom/koushikdutta/async/AsyncServer$4;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/concurrent/Semaphore;)V

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/koushikdutta/async/AsyncServer$Scheduled;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v3, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {v1}, Lcom/koushikdutta/async/SelectorWrapper;->wakeupOnce()V

    .line 275
    invoke-static {v1}, Lcom/koushikdutta/async/AsyncServer;->shutdownKeys(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 277
    new-instance v3, Ljava/util/PriorityQueue;

    const/4 v4, 0x1

    sget-object v5, Lcom/koushikdutta/async/AsyncServer$Scheduler;->INSTANCE:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    invoke-direct {v3, v4, v5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    .line 278
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 279
    iput-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    .line 280
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 282
    if-nez v0, :cond_1

    .line 283
    :try_start_3
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v3

    goto :goto_1

    .line 286
    :cond_1
    :goto_0
    nop

    .line 287
    :goto_1
    return-void

    .line 261
    .end local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3

    .line 280
    .end local v0    # "isAffinityThread":Z
    .end local v1    # "currentSelector":Lcom/koushikdutta/async/SelectorWrapper;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method
