.class final Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;
.source "FlowableFromArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArraySubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;[TT;)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;-><init>([Ljava/lang/Object;)V

    .line 116
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 117
    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 7

    .line 121
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->array:[Ljava/lang/Object;

    .line 122
    .local v0, "arr":[Ljava/lang/Object;, "[TT;"
    array-length v1, v0

    .line 123
    .local v1, "f":I
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 125
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->index:I

    .local v3, "i":I
    :goto_0
    if-eq v3, v1, :cond_2

    .line 126
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->cancelled:Z

    if-eqz v4, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    aget-object v4, v0, v3

    .line 130
    .local v4, "t":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_1

    .line 131
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "array element is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 132
    return-void

    .line 134
    :cond_1
    invoke-interface {v2, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 125
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v3    # "i":I
    :cond_2
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->cancelled:Z

    if-eqz v3, :cond_3

    .line 138
    return-void

    .line 140
    :cond_3
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 141
    return-void
.end method

.method slowPath(J)V
    .locals 9
    .param p1, "r"    # J

    .line 145
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription<TT;>;"
    const-wide/16 v0, 0x0

    .line 146
    .local v0, "e":J
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->array:[Ljava/lang/Object;

    .line 147
    .local v2, "arr":[Ljava/lang/Object;, "[TT;"
    array-length v3, v2

    .line 148
    .local v3, "f":I
    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->index:I

    .line 149
    .local v4, "i":I
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 153
    .local v5, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :goto_0
    cmp-long v6, v0, p1

    if-eqz v6, :cond_2

    if-eq v4, v3, :cond_2

    .line 154
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->cancelled:Z

    if-eqz v6, :cond_0

    .line 155
    return-void

    .line 158
    :cond_0
    aget-object v6, v2, v4

    .line 160
    .local v6, "t":Ljava/lang/Object;, "TT;"
    if-nez v6, :cond_1

    .line 161
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "array element is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 162
    return-void

    .line 164
    :cond_1
    invoke-interface {v5, v6}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 167
    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    .line 168
    nop

    .end local v6    # "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v4, v4, 0x1

    .line 169
    goto :goto_0

    .line 171
    :cond_2
    if-ne v4, v3, :cond_4

    .line 172
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->cancelled:Z

    if-nez v6, :cond_3

    .line 173
    invoke-interface {v5}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 175
    :cond_3
    return-void

    .line 178
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->get()J

    move-result-wide p1

    .line 179
    cmp-long v6, v0, p1

    if-nez v6, :cond_6

    .line 180
    iput v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->index:I

    .line 181
    neg-long v6, v0

    invoke-virtual {p0, v6, v7}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->addAndGet(J)J

    move-result-wide p1

    .line 182
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_5

    .line 183
    return-void

    .line 185
    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 179
    :cond_6
    goto :goto_0
.end method
