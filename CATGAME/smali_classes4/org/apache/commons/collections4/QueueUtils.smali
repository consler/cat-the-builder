.class public Lorg/apache/commons/collections4/QueueUtils;
.super Ljava/lang/Object;
.source "QueueUtils.java"


# static fields
.field public static final EMPTY_QUEUE:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections4/queue/UnmodifiableQueue;->unmodifiableQueue(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/QueueUtils;->EMPTY_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 137
    sget-object v0, Lorg/apache/commons/collections4/QueueUtils;->EMPTY_QUEUE:Ljava/util/Queue;

    return-object v0
.end method

.method public static predicatedQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 105
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/queue/PredicatedQueue;->predicatedQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/queue/PredicatedQueue;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedQueue(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;)",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 75
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->synchronizedQueue(Ljava/util/Queue;)Lorg/apache/commons/collections4/queue/SynchronizedQueue;

    move-result-object v0

    return-object v0
.end method

.method public static transformingQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 126
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/queue/TransformedQueue;->transformingQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/queue/TransformedQueue;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableQueue(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "+TE;>;)",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 87
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<+TE;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/queue/UnmodifiableQueue;->unmodifiableQueue(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method
