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
    .locals 4
    .param p1, "maxSize"    # I
    .param p2, "maxAge"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lio/reactivex/Scheduler;

    .line 956
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 957
    const-string v0, "maxSize"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxSize:I

    .line 958
    const-string v0, "maxAge"

    invoke-static {p2, p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    .line 959
    const-string v0, "unit is null"

    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    .line 960
    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    .line 961
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 962
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 963
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 964
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
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1017
    .local v0, "n":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1019
    .local v1, "t":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1020
    iget v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1021
    invoke-virtual {v1, v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->set(Ljava/lang/Object;)V

    .line 1023
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trim()V

    .line 1024
    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .locals 4
    .param p1, "notificationLite"    # Ljava/lang/Object;

    .line 1028
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->lazySet(Ljava/lang/Object;)V

    .line 1029
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1030
    .local v0, "n":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1032
    .local v1, "t":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1033
    iget v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1034
    invoke-virtual {v1, v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->set(Ljava/lang/Object;)V

    .line 1035
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trimFinal()V

    .line 1037
    iput-boolean v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    .line 1038
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
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1099
    .local v0, "index":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v1, v3

    .line 1100
    .local v1, "limit":J
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1101
    .local v3, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 1102
    iget-wide v4, v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    .line 1103
    .local v4, "ts":J
    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    .line 1104
    goto :goto_1

    .line 1106
    :cond_0
    move-object v0, v3

    .line 1107
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1108
    .end local v4    # "ts":J
    goto :goto_0

    .line 1109
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1043
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    const/4 v0, 0x0

    .line 1044
    .local v0, "prev":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1047
    .local v1, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1048
    .local v2, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    if-nez v2, :cond_3

    .line 1049
    nop

    .line 1055
    .end local v2    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    iget-object v2, v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    .line 1056
    .local v2, "v":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 1057
    const/4 v3, 0x0

    return-object v3

    .line 1059
    :cond_0
    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1063
    :cond_1
    return-object v2

    .line 1060
    :cond_2
    :goto_1
    iget-object v3, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    return-object v3

    .line 1051
    .local v2, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    :cond_3
    move-object v0, v1

    .line 1052
    move-object v1, v2

    .line 1053
    .end local v2    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1069
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v0

    .line 1070
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I

    move-result v1

    .line 1072
    .local v1, "s":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1073
    array-length v3, p1

    if-eqz v3, :cond_3

    .line 1074
    const/4 v3, 0x0

    aput-object v2, p1, v3

    goto :goto_1

    .line 1077
    :cond_0
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 1078
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, [Ljava/lang/Object;

    .line 1081
    :cond_1
    const/4 v3, 0x0

    .line 1082
    .local v3, "i":I
    :goto_0
    if-eq v3, v1, :cond_2

    .line 1083
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1084
    .local v4, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    iget-object v5, v4, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    aput-object v5, p1, v3

    .line 1085
    add-int/lit8 v3, v3, 0x1

    .line 1086
    move-object v0, v4

    .line 1087
    .end local v4    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0

    .line 1088
    :cond_2
    array-length v4, p1

    if-le v4, v1, :cond_3

    .line 1089
    aput-object v2, p1, v1

    .line 1093
    .end local v3    # "i":I
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
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    return-void

    .line 1119
    :cond_0
    const/4 v0, 0x1

    .line 1120
    .local v0, "missed":I
    iget-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 1122
    .local v1, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    check-cast v2, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1123
    .local v2, "index":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 1124
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v2

    .line 1129
    :cond_1
    :goto_0
    iget-object v3, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 1130
    .local v3, "r":J
    const-wide/16 v5, 0x0

    .line 1133
    .local v5, "e":J
    :goto_1
    iget-boolean v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    .line 1134
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 1135
    return-void

    .line 1138
    :cond_2
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1140
    .local v7, "n":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    const-wide/16 v9, 0x0

    if-nez v7, :cond_3

    .line 1141
    goto :goto_3

    .line 1144
    :cond_3
    iget-object v11, v7, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    .line 1146
    .local v11, "o":Ljava/lang/Object;
    iget-boolean v12, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    if-eqz v12, :cond_5

    .line 1147
    invoke-virtual {v7}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_5

    .line 1149
    invoke-static {v11}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1150
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_2

    .line 1152
    :cond_4
    invoke-static {v11}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 1154
    :goto_2
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 1155
    const/4 v8, 0x1

    iput-boolean v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 1156
    return-void

    .line 1160
    :cond_5
    cmp-long v8, v3, v9

    if-nez v8, :cond_8

    .line 1161
    iget-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    add-long v3, v12, v5

    .line 1162
    cmp-long v8, v3, v9

    if-nez v8, :cond_8

    .line 1163
    nop

    .line 1174
    .end local v7    # "n":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    .end local v11    # "o":Ljava/lang/Object;
    :goto_3
    cmp-long v7, v5, v9

    if-eqz v7, :cond_6

    .line 1175
    iget-object v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    .line 1176
    iget-object v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1180
    :cond_6
    iput-object v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 1182
    neg-int v7, v0

    invoke-virtual {p1, v7}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    move-result v0

    .line 1183
    if-nez v0, :cond_7

    .line 1184
    nop

    .line 1187
    .end local v3    # "r":J
    .end local v5    # "e":J
    return-void

    .line 1186
    :cond_7
    goto :goto_0

    .line 1167
    .restart local v3    # "r":J
    .restart local v5    # "e":J
    .restart local v7    # "n":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    .restart local v11    # "o":Ljava/lang/Object;
    :cond_8
    invoke-interface {v1, v11}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 1168
    const-wide/16 v8, 0x1

    sub-long/2addr v3, v8

    .line 1169
    sub-long/2addr v5, v8

    .line 1171
    move-object v2, v7

    .line 1172
    .end local v7    # "n":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    .end local v11    # "o":Ljava/lang/Object;
    goto :goto_1
.end method

.method public size()I
    .locals 1

    .line 1191
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I

    move-result v0

    return v0
.end method

.method size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1195
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 1196
    .local v0, "s":I
    :goto_0
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 1197
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1198
    .local v1, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    if-nez v1, :cond_1

    .line 1199
    iget-object v2, p1, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    .line 1200
    .local v2, "o":Ljava/lang/Object;
    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1201
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1205
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1206
    move-object p1, v1

    .line 1207
    .end local v1    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0

    .line 1209
    :cond_2
    :goto_1
    return v0
.end method

.method trim()V
    .locals 6

    .line 967
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxSize:I

    if-le v0, v1, :cond_0

    .line 968
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    .line 969
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 970
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    iput-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 972
    .end local v0    # "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 974
    .local v0, "limit":J
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 977
    .local v2, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 978
    .local v3, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    if-nez v3, :cond_1

    .line 979
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 980
    goto :goto_1

    .line 983
    :cond_1
    iget-wide v4, v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_2

    .line 984
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 985
    nop

    .line 991
    .end local v3    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    :goto_1
    return-void

    .line 988
    .restart local v3    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    :cond_2
    move-object v2, v3

    .line 989
    .end local v3    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method trimFinal()V
    .locals 6

    .line 994
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 996
    .local v0, "limit":J
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 999
    .local v2, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1000
    .local v3, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1001
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1002
    goto :goto_1

    .line 1005
    :cond_0
    iget-wide v4, v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 1006
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1007
    nop

    .line 1012
    .end local v3    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    :goto_1
    return-void

    .line 1010
    .restart local v3    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    :cond_1
    move-object v2, v3

    .line 1011
    .end local v3    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0
.end method
