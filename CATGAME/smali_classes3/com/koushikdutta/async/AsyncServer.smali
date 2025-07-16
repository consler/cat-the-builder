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
    .locals 1

    .line 97
    new-instance v0, Lcom/koushikdutta/async/AsyncServer;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncServer;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->mInstance:Lcom/koushikdutta/async/AsyncServer;

    const-string v0, "AsyncServer-worker-"

    .line 132
    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->newSynchronousWorkers(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->synchronousWorkers:Ljava/util/concurrent/ExecutorService;

    .line 429
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$8;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncServer$8;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->ipSorter:Ljava/util/Comparator;

    const-string v0, "AsyncServer-resolver-"

    .line 442
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

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/AsyncServer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/koushikdutta/async/AsyncServer;->postCounter:I

    .line 231
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    sget-object v2, Lcom/koushikdutta/async/AsyncServer$Scheduler;->INSTANCE:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    if-nez p1, :cond_0

    const-string p1, "AsyncServer"

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/koushikdutta/async/AsyncServer;->shutdownEverything(Lcom/koushikdutta/async/SelectorWrapper;)V

    return-void
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/AsyncServer;)Lcom/koushikdutta/async/SelectorWrapper;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->connectResolvedInetSocketAddress(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/Comparator;
    .locals 1

    .line 44
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->ipSorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    .locals 0
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

    .line 44
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->run(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V

    return-void
.end method

.method private addMe()Z
    .locals 2

    .line 560
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->mServers:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/AsyncServer;

    if-eqz v1, :cond_0

    .line 564
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    invoke-virtual {v0, v1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private connectResolvedInetSocketAddress(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
    .locals 2

    .line 363
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$1;)V

    .line 366
    new-instance v1, Lcom/koushikdutta/async/AsyncServer$6;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/koushikdutta/async/AsyncServer$6;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$ConnectFuture;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/net/InetSocketAddress;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->getChannel()Lcom/koushikdutta/async/ChannelWrapper;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-virtual {v1}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ChannelWrapper;->register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p1, p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->setup(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    return-void
.end method

.method private static lockAndRunQueue(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;)J"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 722
    :goto_0
    monitor-enter p0

    .line 723
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 725
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    .line 726
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    .line 727
    iget-wide v6, v4, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    cmp-long v6, v6, v2

    if-gtz v6, :cond_0

    move-object v5, v4

    goto :goto_1

    .line 731
    :cond_0
    iget-wide v0, v4, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    sub-long/2addr v0, v2

    .line 732
    invoke-virtual {p1, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 735
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    const/4 p1, 0x0

    .line 743
    iput p1, p0, Lcom/koushikdutta/async/AsyncServer;->postCounter:I

    return-wide v0

    .line 740
    :cond_2
    iget-object v2, v5, Lcom/koushikdutta/async/AsyncServer$Scheduled;->runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 735
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static newSynchronousWorkers(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 423
    new-instance v7, Lcom/koushikdutta/async/AsyncServer$NamedThreadFactory;

    invoke-direct {v7, p0}, Lcom/koushikdutta/async/AsyncServer$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 424
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object p0
.end method

.method public static post(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 73
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;-><init>(Lcom/koushikdutta/async/AsyncServer$1;)V

    .line 74
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/async/ThreadQueue;->getOrCreateThreadQueue(Ljava/lang/Thread;)Lcom/koushikdutta/async/ThreadQueue;

    move-result-object v1

    .line 75
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
    iget-object p0, v1, Lcom/koushikdutta/async/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method private static run(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .locals 3
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
    :goto_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->runLoop(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catch Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "NIO"

    const-string v2, "Selector exception, shutting down"

    .line 661
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    :try_start_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 670
    :catch_1
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
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    if-ne p2, p1, :cond_2

    .line 676
    new-instance p1, Ljava/util/PriorityQueue;

    sget-object p2, Lcom/koushikdutta/async/AsyncServer$Scheduler;->INSTANCE:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    const/4 p1, 0x0

    .line 677
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 678
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    .line 680
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 683
    sget-object p1, Lcom/koushikdutta/async/AsyncServer;->mServers:Ljava/util/WeakHashMap;

    monitor-enter p1

    .line 684
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    .line 681
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private run(Z)V
    .locals 5

    .line 580
    monitor-enter p0

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    if-eqz v0, :cond_0

    const-string p1, "NIO"

    const-string v0, "Reentrant call"

    .line 582
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 587
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_1

    .line 591
    :cond_0
    :try_start_1
    new-instance v0, Lcom/koushikdutta/async/SelectorWrapper;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/SelectorWrapper;-><init>(Ljava/nio/channels/Selector;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 592
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 598
    :try_start_2
    new-instance v2, Lcom/koushikdutta/async/AsyncServer$14;

    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mName:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/koushikdutta/async/AsyncServer$14;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V

    iput-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    goto :goto_0

    .line 605
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    .line 607
    :goto_0
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncServer;->addMe()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    .line 609
    :try_start_3
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    const/4 p1, 0x0

    .line 613
    :try_start_4
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 614
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    .line 615
    monitor-exit p0

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 618
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 620
    monitor-exit p0

    return-void

    :cond_3
    const/4 p1, 0x0

    move-object v4, v1

    move v1, p1

    move-object p1, v0

    move-object v0, v4

    .line 626
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_4

    .line 630
    :try_start_5
    invoke-static {p0, p1, v0}, Lcom/koushikdutta/async/AsyncServer;->runLoop(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    :try_end_5
    .catch Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "NIO"

    const-string v2, "Selector closed"

    .line 633
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    :try_start_6
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :goto_2
    return-void

    .line 644
    :cond_4
    invoke-static {p0, p1, v0}, Lcom/koushikdutta/async/AsyncServer;->run(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V

    return-void

    .line 595
    :catch_3
    :try_start_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 626
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method private static runLoop(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .locals 9
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

    .line 758
    invoke-static {p0, p2}, Lcom/koushikdutta/async/AsyncServer;->lockAndRunQueue(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J

    move-result-wide v0

    .line 760
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 763
    :try_start_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->selectNow()I

    move-result p2

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p2, :cond_1

    .line 767
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->keys()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 769
    monitor-exit p0

    return-void

    :cond_0
    move p2, v5

    goto :goto_0

    :cond_1
    move p2, v4

    .line 775
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    .line 780
    :try_start_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->select()V

    goto :goto_1

    .line 784
    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/koushikdutta/async/SelectorWrapper;->select(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 793
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->selectedKeys()Ljava/util/Set;

    move-result-object p2

    .line 794
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 796
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 797
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/ServerSocketChannel;
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_0

    .line 801
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v2, :cond_5

    goto :goto_2

    .line 804
    :cond_5
    :try_start_5
    invoke-virtual {v2, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 805
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 806
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/callback/ListenCallback;

    .line 807
    new-instance v6, Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-direct {v6}, Lcom/koushikdutta/async/AsyncNetworkSocket;-><init>()V

    .line 808
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    check-cast v7, Ljava/net/InetSocketAddress;

    invoke-virtual {v6, v2, v7}, Lcom/koushikdutta/async/AsyncNetworkSocket;->attach(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 809
    invoke-virtual {v6, p0, v3}, Lcom/koushikdutta/async/AsyncNetworkSocket;->setup(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    .line 810
    invoke-virtual {v3, v6}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    invoke-interface {v1, v6}, Lcom/koushikdutta/async/callback/ListenCallback;->onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_1
    move-object v1, v3

    move-object v3, v2

    goto :goto_3

    :catch_2
    move-object v1, v3

    :goto_3
    :try_start_6
    new-array v2, v5, [Ljava/io/Closeable;

    aput-object v3, v2, v4

    .line 814
    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    if-eqz v1, :cond_4

    .line 816
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_2

    .line 819
    :cond_6
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 820
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/AsyncNetworkSocket;

    .line 821
    invoke-virtual {v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->onReadable()I

    move-result v1

    .line 822
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->onDataReceived(I)V

    goto :goto_2

    .line 824
    :cond_7
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 825
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/AsyncNetworkSocket;

    .line 826
    invoke-virtual {v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->onDataWritable()V

    goto/16 :goto_2

    .line 828
    :cond_8
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 829
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    .line 830
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/SocketChannel;

    .line 831
    invoke-virtual {v1, v5}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_0

    .line 834
    :try_start_7
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 835
    new-instance v7, Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-direct {v7}, Lcom/koushikdutta/async/AsyncNetworkSocket;-><init>()V

    .line 836
    invoke-virtual {v7, p0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->setup(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    .line 837
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v6, v8}, Lcom/koushikdutta/async/AsyncNetworkSocket;->attach(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 838
    invoke-virtual {v1, v7}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_0

    .line 848
    :try_start_8
    invoke-virtual {v2, v7}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->setComplete(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 849
    iget-object v1, v2, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v1, v3, v7}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    :catch_3
    move-exception v1

    .line 852
    :try_start_9
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v7

    .line 841
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v6, v1, v4

    .line 842
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 843
    invoke-virtual {v2, v7}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->setComplete(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 844
    iget-object v1, v2, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v1, v7, v3}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto/16 :goto_2

    :cond_9
    const-string v1, "NIO"

    const-string v2, "wtf"

    .line 856
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown key state."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_0

    .line 863
    :cond_a
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    return-void

    :catchall_0
    move-exception p1

    .line 775
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :catch_5
    move-exception p0

    .line 789
    new-instance p1, Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method private static shutdownEverything(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 0

    .line 705
    invoke-static {p0}, Lcom/koushikdutta/async/AsyncServer;->shutdownKeys(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 708
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static shutdownKeys(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 4

    .line 691
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->keys()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    .line 692
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 694
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    :cond_0
    return-void
.end method

.method private static wakeup(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 2

    .line 134
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->synchronousWorkers:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/koushikdutta/async/AsyncServer$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncServer$1;-><init>(Lcom/koushikdutta/async/SelectorWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public connectDatagram(Ljava/lang/String;I)Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v5

    .line 484
    new-instance v6, Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {v6}, Lcom/koushikdutta/async/AsyncDatagramSocket;-><init>()V

    .line 485
    invoke-virtual {v6, v5}, Lcom/koushikdutta/async/AsyncDatagramSocket;->attach(Ljava/nio/channels/DatagramChannel;)V

    .line 489
    new-instance v7, Lcom/koushikdutta/async/AsyncServer$11;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/AsyncServer$11;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ILcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public connectDatagram(Ljava/net/SocketAddress;)Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 537
    new-instance v1, Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {v1}, Lcom/koushikdutta/async/AsyncDatagramSocket;-><init>()V

    .line 538
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/AsyncDatagramSocket;->attach(Ljava/nio/channels/DatagramChannel;)V

    .line 542
    new-instance v2, Lcom/koushikdutta/async/AsyncServer$13;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/koushikdutta/async/AsyncServer$13;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V

    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public connectSocket(Ljava/lang/String;ILcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 0

    .line 419
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/koushikdutta/async/AsyncServer;->connectSocket(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public connectSocket(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 3

    .line 395
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->connectResolvedInetSocketAddress(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    move-result-object p1

    return-object p1

    .line 398
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 400
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->getByName(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    .line 401
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 402
    new-instance v2, Lcom/koushikdutta/async/AsyncServer$7;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/koushikdutta/async/AsyncServer$7;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/net/InetSocketAddress;)V

    .line 403
    invoke-interface {v1, v2}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    return-object v0
.end method

.method public dump()V
    .locals 1

    .line 867
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$15;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/AsyncServer$15;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

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
    sget-object v1, Lcom/koushikdutta/async/AsyncServer;->synchronousResolverWorkers:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/koushikdutta/async/AsyncServer$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/AsyncServer$9;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public getByName(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 1
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

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/AsyncServer$10;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/AsyncServer$10;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    .line 474
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->then(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/future/Future;

    return-object p1
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

    if-eqz v0, :cond_1

    .line 893
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
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

    .line 299
    new-instance v6, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;-><init>(Lcom/koushikdutta/async/AsyncServer$1;)V

    .line 300
    new-instance v7, Lcom/koushikdutta/async/AsyncServer$5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/AsyncServer$5;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncServer$ObjectHolder;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    .line 343
    iget-object p1, v6, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;->held:Ljava/lang/Object;

    check-cast p1, Lcom/koushikdutta/async/AsyncServerSocket;

    return-object p1
.end method

.method protected onDataReceived(I)V
    .locals 0

    return-void
.end method

.method protected onDataSent(I)V
    .locals 0

    return-void
.end method

.method public openDatagram()Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 507
    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/AsyncServer;->openDatagram(Ljava/net/SocketAddress;Z)Lcom/koushikdutta/async/AsyncDatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method public openDatagram(Ljava/net/SocketAddress;Z)Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v3

    .line 512
    new-instance v6, Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {v6}, Lcom/koushikdutta/async/AsyncDatagramSocket;-><init>()V

    .line 513
    invoke-virtual {v6, v3}, Lcom/koushikdutta/async/AsyncDatagramSocket;->attach(Ljava/nio/channels/DatagramChannel;)V

    .line 517
    new-instance v7, Lcom/koushikdutta/async/AsyncServer$12;

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/AsyncServer$12;-><init>(Lcom/koushikdutta/async/AsyncServer;ZLjava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;Lcom/koushikdutta/async/AsyncDatagramSocket;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public post(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 1

    .line 192
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer$2;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    .line 188
    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;
    .locals 4

    .line 150
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 161
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    .line 163
    iget p2, p0, Lcom/koushikdutta/async/AsyncServer;->postCounter:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/koushikdutta/async/AsyncServer;->postCounter:I

    int-to-long v0, p2

    goto :goto_0

    .line 164
    :cond_1
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 165
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    iget-wide p2, p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    const-wide/16 v2, 0x1

    sub-long/2addr p2, v2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 168
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    new-instance p3, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    invoke-direct {p3, p1, v0, v1}, Lcom/koushikdutta/async/AsyncServer$Scheduled;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {p2, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 171
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->run(Z)V

    .line 172
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->isAffinityThread()Z

    move-result p1

    if-nez p1, :cond_4

    .line 173
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-static {p1}, Lcom/koushikdutta/async/AsyncServer;->wakeup(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 175
    :cond_4
    monitor-exit p0

    return-object p3

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public postImmediate(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2

    .line 180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 181
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    .line 184
    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeAllCallbacks(Ljava/lang/Object;)V
    .locals 1

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 2

    .line 201
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 203
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    invoke-static {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->lockAndRunQueue(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J

    return-void

    .line 207
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 208
    new-instance v1, Lcom/koushikdutta/async/AsyncServer$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/koushikdutta/async/AsyncServer$3;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 216
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NIO"

    const-string v1, "run"

    .line 219
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

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
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v1, Ljava/util/PriorityQueue;

    sget-object v3, Lcom/koushikdutta/async/AsyncServer$Scheduler;->INSTANCE:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    const/4 v1, 0x0

    .line 278
    iput-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 279
    iput-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    .line 280
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_1

    .line 283
    :try_start_3
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 261
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    .line 280
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method
