.class final Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;
.source "FlowableFromIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IteratorSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53954cbe186540ffL


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
.method constructor <init>(Lorg/reactivestreams/Subscriber;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;-><init>(Ljava/util/Iterator;)V

    .line 151
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 152
    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 5

    .line 156
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->it:Ljava/util/Iterator;

    .line 157
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .local v1, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 159
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    if-eqz v4, :cond_0

    .line 160
    return-void

    .line 166
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    .local v3, "t":Ljava/lang/Object;, "TT;"
    nop

    .line 173
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    if-eqz v4, :cond_1

    .line 174
    return-void

    .line 177
    :cond_1
    if-nez v3, :cond_2

    .line 178
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "Iterator.next() returned a null value"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 179
    return-void

    .line 181
    :cond_2
    invoke-interface {v1, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 184
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    if-eqz v4, :cond_3

    .line 185
    return-void

    .line 191
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    .local v2, "b":Z
    nop

    .line 199
    if-nez v2, :cond_5

    .line 200
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    if-nez v4, :cond_4

    .line 201
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 203
    :cond_4
    return-void

    .line 205
    .end local v2    # "b":Z
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :cond_5
    goto :goto_0

    .line 192
    .restart local v3    # "t":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v4

    .line 193
    .restart local v2    # "b":Z
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 194
    invoke-interface {v1, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 195
    return-void

    .line 167
    .end local v2    # "b":Z
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    .end local v4    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    .line 168
    .local v2, "ex":Ljava/lang/Throwable;
    .restart local v3    # "t":Ljava/lang/Object;, "TT;"
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 169
    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 170
    return-void
.end method

.method slowPath(J)V
    .locals 8
    .param p1, "r"    # J

    .line 210
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription<TT;>;"
    const-wide/16 v0, 0x0

    .line 211
    .local v0, "e":J
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->it:Ljava/util/Iterator;

    .line 212
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .local v3, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 216
    :goto_0
    cmp-long v6, v0, p1

    if-eqz v6, :cond_6

    .line 218
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    if-eqz v6, :cond_0

    .line 219
    return-void

    .line 225
    :cond_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    .local v5, "t":Ljava/lang/Object;, "TT;"
    nop

    .line 232
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    if-eqz v6, :cond_1

    .line 233
    return-void

    .line 236
    :cond_1
    if-nez v5, :cond_2

    .line 237
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v6, "Iterator.next() returned a null value"

    invoke-direct {v4, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 238
    return-void

    .line 240
    :cond_2
    invoke-interface {v3, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 243
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    if-eqz v6, :cond_3

    .line 244
    return-void

    .line 250
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .local v4, "b":Z
    nop

    .line 257
    if-nez v4, :cond_5

    .line 258
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->cancelled:Z

    if-nez v6, :cond_4

    .line 259
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 261
    :cond_4
    return-void

    .line 264
    :cond_5
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 265
    .end local v4    # "b":Z
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 251
    .restart local v5    # "t":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v6

    .line 252
    .restart local v4    # "b":Z
    .local v6, "ex":Ljava/lang/Throwable;
    invoke-static {v6}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 253
    invoke-interface {v3, v6}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 254
    return-void

    .line 226
    .end local v4    # "b":Z
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    .end local v6    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    .line 227
    .local v4, "ex":Ljava/lang/Throwable;
    .restart local v5    # "t":Ljava/lang/Object;, "TT;"
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 228
    invoke-interface {v3, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 229
    return-void

    .line 267
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->get()J

    move-result-wide p1

    .line 268
    cmp-long v6, v0, p1

    if-nez v6, :cond_8

    .line 269
    neg-long v6, v0

    invoke-virtual {p0, v6, v7}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription;->addAndGet(J)J

    move-result-wide p1

    .line 270
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_7

    .line 271
    return-void

    .line 273
    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 268
    :cond_8
    goto :goto_0
.end method
