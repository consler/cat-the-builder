.class final Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplayProcessor.java"

# interfaces
.implements Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/ReplayProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeAndTimeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x113e76ff643634bbL


# instance fields
.field volatile done:Z

.field volatile head:Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final maxAge:J

.field final maxSize:I

.field final scheduler:Lio/reactivex/Scheduler;

.field size:I

.field tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 1

    .line 956
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-string v0, "maxSize"

    .line 957
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxSize:I

    const-string p1, "maxAge"

    .line 958
    invoke-static {p2, p3, p1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    const-string p1, "unit is null"

    .line 959
    invoke-static {p4, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    const-string p1, "scheduler is null"

    .line 960
    invoke-static {p5, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Scheduler;

    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    .line 961
    new-instance p1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 962
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 963
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1016
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1017
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1019
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1020
    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1021
    invoke-virtual {p1, v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->set(Ljava/lang/Object;)V

    .line 1023
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trim()V

    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .locals 3

    .line 1028
    invoke-virtual {p0, p1}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->lazySet(Ljava/lang/Object;)V

    .line 1029
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1030
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1032
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1033
    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1034
    invoke-virtual {p1, v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->set(Ljava/lang/Object;)V

    .line 1035
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trimFinal()V

    .line 1037
    iput-boolean v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    return-void
.end method

.method getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1097
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1099
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v1, v3

    .line 1100
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    :goto_0
    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    if-eqz v0, :cond_1

    .line 1102
    iget-wide v4, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    goto :goto_1

    .line 1107
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1044
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const/4 v1, 0x0

    move-object v2, v1

    .line 1047
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    if-nez v3, :cond_3

    .line 1055
    iget-object v0, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-object v1

    .line 1059
    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    .line 1060
    :cond_2
    :goto_1
    iget-object v0, v2, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    return-object v0

    :cond_3
    move-object v2, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1069
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v0

    .line 1070
    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1073
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 1074
    aput-object v2, p1, v3

    goto :goto_1

    .line 1077
    :cond_0
    array-length v4, p1

    if-ge v4, v1, :cond_1

    .line 1078
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    :cond_1
    :goto_0
    if-eq v3, v1, :cond_2

    .line 1083
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1084
    iget-object v4, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1088
    :cond_2
    array-length v0, p1

    if-le v0, v1, :cond_3

    .line 1089
    aput-object v2, p1, v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 1115
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1120
    :cond_0
    iget-object v0, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 1122
    iget-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1124
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v1

    :cond_1
    move v3, v2

    .line 1129
    :cond_2
    iget-object v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    .line 1133
    :goto_0
    iget-boolean v10, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    .line 1134
    iput-object v11, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    return-void

    .line 1138
    :cond_3
    invoke-virtual {v1}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    if-nez v10, :cond_4

    goto :goto_2

    .line 1144
    :cond_4
    iget-object v12, v10, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    .line 1146
    iget-boolean v13, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    if-eqz v13, :cond_6

    .line 1147
    invoke-virtual {v10}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_6

    .line 1149
    invoke-static {v12}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1150
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_1

    .line 1152
    :cond_5
    invoke-static {v12}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 1154
    :goto_1
    iput-object v11, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 1155
    iput-boolean v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    return-void

    :cond_6
    cmp-long v11, v4, v6

    if-nez v11, :cond_8

    .line 1161
    iget-object v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long/2addr v4, v8

    cmp-long v11, v4, v6

    if-nez v11, :cond_8

    :goto_2
    cmp-long v4, v8, v6

    if-eqz v4, :cond_7

    .line 1175
    iget-object v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    .line 1176
    iget-object v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1180
    :cond_7
    iput-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    neg-int v3, v3

    .line 1182
    invoke-virtual {p1, v3}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 1167
    :cond_8
    invoke-interface {v0, v12}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    sub-long/2addr v4, v11

    sub-long/2addr v8, v11

    move-object v1, v10

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .line 1191
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I

    move-result v0

    return v0
.end method

.method size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 1197
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    if-nez v1, :cond_1

    .line 1199
    iget-object p1, p1, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    .line 1200
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-object p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method trim()V
    .locals 6

    .line 967
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxSize:I

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 968
    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    .line 969
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 970
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 972
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 974
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 977
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    if-nez v3, :cond_1

    .line 979
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    goto :goto_1

    .line 983
    :cond_1
    iget-wide v4, v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_2

    .line 984
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    :goto_1
    return-void

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method trimFinal()V
    .locals 6

    .line 994
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 996
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 999
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1000
    invoke-virtual {v3}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1001
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    goto :goto_1

    .line 1005
    :cond_0
    iget-wide v4, v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 1006
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    :goto_1
    return-void

    :cond_1
    move-object v2, v3

    goto :goto_0
.end method
