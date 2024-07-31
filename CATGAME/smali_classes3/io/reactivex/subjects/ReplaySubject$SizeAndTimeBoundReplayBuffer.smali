.class final Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplaySubject.java"

# interfaces
.implements Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/ReplaySubject;
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
        "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6fcd9699e42b76b5L


# instance fields
.field volatile done:Z

.field volatile head:Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final maxAge:J

.field final maxSize:I

.field final scheduler:Lio/reactivex/Scheduler;

.field size:I

.field tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
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

    .line 923
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 924
    const-string v0, "maxSize"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxSize:I

    .line 925
    const-string v0, "maxAge"

    invoke-static {p2, p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    .line 926
    const-string v0, "unit is null"

    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    .line 927
    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    .line 928
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 929
    .local v0, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 930
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 931
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

    .line 983
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 984
    .local v0, "n":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 986
    .local v1, "t":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 987
    iget v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    .line 988
    invoke-virtual {v1, v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->set(Ljava/lang/Object;)V

    .line 990
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->trim()V

    .line 991
    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .locals 4
    .param p1, "notificationLite"    # Ljava/lang/Object;

    .line 995
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 996
    .local v0, "n":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 998
    .local v1, "t":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 999
    iget v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1000
    invoke-virtual {v1, v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->lazySet(Ljava/lang/Object;)V

    .line 1001
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->trimFinal()V

    .line 1003
    iput-boolean v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->done:Z

    .line 1004
    return-void
.end method

.method getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1033
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1035
    .local v0, "index":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v1, v3

    .line 1036
    .local v1, "limit":J
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1037
    .local v3, "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 1038
    iget-wide v4, v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    .line 1039
    .local v4, "ts":J
    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    .line 1040
    goto :goto_1

    .line 1042
    :cond_0
    move-object v0, v3

    .line 1043
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1044
    .end local v4    # "ts":J
    goto :goto_0

    .line 1045
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

    .line 1009
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    const/4 v0, 0x0

    .line 1010
    .local v0, "prev":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1013
    .local v1, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1014
    .local v2, "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    if-nez v2, :cond_3

    .line 1015
    nop

    .line 1021
    .end local v2    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iget-object v2, v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    .line 1022
    .local v2, "v":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 1023
    const/4 v3, 0x0

    return-object v3

    .line 1025
    :cond_0
    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1029
    :cond_1
    return-object v2

    .line 1026
    :cond_2
    :goto_1
    iget-object v3, v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    return-object v3

    .line 1017
    .local v2, "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :cond_3
    move-object v0, v1

    .line 1018
    move-object v1, v2

    .line 1019
    .end local v2    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1051
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    move-result-object v0

    .line 1052
    .local v0, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I

    move-result v1

    .line 1054
    .local v1, "s":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1055
    array-length v3, p1

    if-eqz v3, :cond_3

    .line 1056
    const/4 v3, 0x0

    aput-object v2, p1, v3

    goto :goto_1

    .line 1059
    :cond_0
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 1060
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, [Ljava/lang/Object;

    .line 1063
    :cond_1
    const/4 v3, 0x0

    .line 1064
    .local v3, "i":I
    :goto_0
    if-eq v3, v1, :cond_2

    .line 1065
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1066
    .local v4, "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iget-object v5, v4, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    aput-object v5, p1, v3

    .line 1067
    add-int/lit8 v3, v3, 0x1

    .line 1068
    move-object v0, v4

    .line 1069
    .end local v4    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0

    .line 1070
    :cond_2
    array-length v4, p1

    if-le v4, v1, :cond_3

    .line 1071
    aput-object v2, p1, v1

    .line 1075
    .end local v3    # "i":I
    :cond_3
    :goto_1
    return-object p1
.end method

.method public replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 1081
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "rs":Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    return-void

    .line 1085
    :cond_0
    const/4 v0, 0x1

    .line 1086
    .local v0, "missed":I
    iget-object v1, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->actual:Lio/reactivex/Observer;

    .line 1088
    .local v1, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    iget-object v2, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    check-cast v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1089
    .local v2, "index":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 1090
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    move-result-object v2

    .line 1095
    :cond_1
    :goto_0
    iget-boolean v3, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1096
    iput-object v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 1097
    return-void

    .line 1101
    :cond_2
    :goto_1
    iget-boolean v3, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    if-eqz v3, :cond_3

    .line 1102
    iput-object v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 1103
    return-void

    .line 1106
    :cond_3
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1108
    .local v3, "n":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    if-nez v3, :cond_5

    .line 1109
    nop

    .line 1133
    .end local v3    # "n":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1134
    goto :goto_0

    .line 1137
    :cond_4
    iput-object v2, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 1139
    neg-int v3, v0

    invoke-virtual {p1, v3}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->addAndGet(I)I

    move-result v0

    .line 1140
    if-nez v0, :cond_1

    .line 1141
    nop

    .line 1144
    return-void

    .line 1112
    .restart local v3    # "n":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :cond_5
    iget-object v5, v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    .line 1114
    .local v5, "o":Ljava/lang/Object;
    iget-boolean v6, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->done:Z

    if-eqz v6, :cond_7

    .line 1115
    invoke-virtual {v3}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    .line 1117
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1118
    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_2

    .line 1120
    :cond_6
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-interface {v1, v6}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 1122
    :goto_2
    iput-object v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 1123
    const/4 v4, 0x1

    iput-boolean v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    .line 1124
    return-void

    .line 1128
    :cond_7
    invoke-interface {v1, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 1130
    move-object v2, v3

    .line 1131
    .end local v3    # "n":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    .end local v5    # "o":Ljava/lang/Object;
    goto :goto_1
.end method

.method public size()I
    .locals 1

    .line 1148
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I

    move-result v0

    return v0
.end method

.method size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1152
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 1153
    .local v0, "s":I
    :goto_0
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 1154
    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1155
    .local v1, "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    if-nez v1, :cond_1

    .line 1156
    iget-object v2, p1, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    .line 1157
    .local v2, "o":Ljava/lang/Object;
    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1158
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1162
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1163
    move-object p1, v1

    .line 1164
    .end local v1    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0

    .line 1166
    :cond_2
    :goto_1
    return v0
.end method

.method trim()V
    .locals 6

    .line 934
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    iget v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxSize:I

    if-le v0, v1, :cond_0

    .line 935
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    .line 936
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 937
    .local v0, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iput-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 939
    .end local v0    # "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 941
    .local v0, "limit":J
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 944
    .local v2, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 945
    .local v3, "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    if-nez v3, :cond_1

    .line 946
    iput-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 947
    goto :goto_1

    .line 950
    :cond_1
    iget-wide v4, v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_2

    .line 951
    iput-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 952
    nop

    .line 958
    .end local v3    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :goto_1
    return-void

    .line 955
    .restart local v3    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :cond_2
    move-object v2, v3

    .line 956
    .end local v3    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method trimFinal()V
    .locals 6

    .line 961
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 963
    .local v0, "limit":J
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 966
    .local v2, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 967
    .local v3, "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 968
    iput-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 969
    goto :goto_1

    .line 972
    :cond_0
    iget-wide v4, v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 973
    iput-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 974
    nop

    .line 979
    .end local v3    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :goto_1
    return-void

    .line 977
    .restart local v3    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :cond_1
    move-object v2, v3

    .line 978
    .end local v3    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0
.end method
