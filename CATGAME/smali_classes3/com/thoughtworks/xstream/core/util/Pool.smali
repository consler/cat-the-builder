.class public Lcom/thoughtworks/xstream/core/util/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/util/Pool$Factory;
    }
.end annotation


# instance fields
.field private final factory:Lcom/thoughtworks/xstream/core/util/Pool$Factory;

.field private final initialPoolSize:I

.field private final maxPoolSize:I

.field private transient mutex:Ljava/lang/Object;

.field private transient nextAvailable:I

.field private transient pool:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILcom/thoughtworks/xstream/core/util/Pool$Factory;)V
    .locals 1
    .param p1, "initialPoolSize"    # I
    .param p2, "maxPoolSize"    # I
    .param p3, "factory"    # Lcom/thoughtworks/xstream/core/util/Pool$Factory;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->mutex:Ljava/lang/Object;

    .line 33
    iput p1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->initialPoolSize:I

    .line 34
    iput p2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->maxPoolSize:I

    .line 35
    iput-object p3, p0, Lcom/thoughtworks/xstream/core/util/Pool;->factory:Lcom/thoughtworks/xstream/core/util/Pool$Factory;

    .line 36
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->mutex:Ljava/lang/Object;

    .line 74
    return-object p0
.end method


# virtual methods
.method public fetchFromPool()Ljava/lang/Object;
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->pool:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 42
    iget v1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->maxPoolSize:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->pool:[Ljava/lang/Object;

    .line 43
    iget v1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->initialPoolSize:I

    iput v1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    :goto_0
    iget v1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    if-lez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->factory:Lcom/thoughtworks/xstream/core/util/Pool$Factory;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/core/util/Pool$Factory;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_0
    :goto_1
    iget v1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->maxPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    .line 49
    :try_start_1
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    goto :goto_1

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Interrupted whilst waiting for a free item in the pool : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->pool:[Ljava/lang/Object;

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    aget-object v1, v1, v2

    .line 56
    .local v1, "result":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 57
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->factory:Lcom/thoughtworks/xstream/core/util/Pool$Factory;

    invoke-interface {v2}, Lcom/thoughtworks/xstream/core/util/Pool$Factory;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 58
    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    .line 59
    iget v2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    .line 61
    :cond_2
    monitor-exit v0

    .line 62
    return-object v1

    .line 61
    .end local v1    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected putInPool(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/Pool;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->pool:[Ljava/lang/Object;

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/thoughtworks/xstream/core/util/Pool;->nextAvailable:I

    aput-object p1, v1, v2

    .line 68
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/Pool;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
