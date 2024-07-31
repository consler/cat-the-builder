.class final Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;
.super Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber;
.source "ParallelFilterTry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelFilterTry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelFilterSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber<",
        "TT;>;"
    }
.end annotation


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
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    .local p3, "errorHandler":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Ljava/lang/Long;-Ljava/lang/Throwable;Lio/reactivex/parallel/ParallelFailureHandling;>;"
    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber;-><init>(Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V

    .line 111
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 112
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 185
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    .line 187
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 189
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 175
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 177
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    .line 180
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 181
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 116
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 121
    :cond_0
    return-void
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 125
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 126
    const-wide/16 v2, 0x0

    .local v2, "retries":J
    const/4 v0, 0x0

    move v4, v1

    .line 132
    :goto_0
    const/4 v5, 0x1

    :try_start_0
    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v6, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .local v0, "b":Z
    nop

    .line 163
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 165
    return v5

    .line 167
    :cond_0
    return v1

    .line 133
    .end local v0    # "b":Z
    :catchall_0
    move-exception v6

    .line 134
    .local v4, "b":Z
    .local v6, "ex":Ljava/lang/Throwable;
    invoke-static {v6}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 139
    const/4 v7, 0x2

    :try_start_1
    iget-object v8, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->errorHandler:Lio/reactivex/functions/BiFunction;

    const-wide/16 v9, 0x1

    add-long/2addr v9, v2

    move-wide v2, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "The errorHandler returned a null item"

    invoke-static {v8, v9}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/reactivex/parallel/ParallelFailureHandling;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v8

    .line 145
    .local v0, "h":Lio/reactivex/parallel/ParallelFailureHandling;
    nop

    .line 147
    sget-object v8, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$1;->$SwitchMap$io$reactivex$parallel$ParallelFailureHandling:[I

    invoke-virtual {v0}, Lio/reactivex/parallel/ParallelFailureHandling;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v5, :cond_3

    if-eq v8, v7, :cond_2

    const/4 v5, 0x3

    if-eq v8, v5, :cond_1

    .line 157
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->cancel()V

    .line 158
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 159
    return v1

    .line 153
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->cancel()V

    .line 154
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->onComplete()V

    .line 155
    return v1

    .line 151
    :cond_2
    return v1

    .line 149
    :cond_3
    goto :goto_0

    .line 140
    .end local v0    # "h":Lio/reactivex/parallel/ParallelFailureHandling;
    :catchall_1
    move-exception v8

    .line 141
    .restart local v0    # "h":Lio/reactivex/parallel/ParallelFailureHandling;
    .local v8, "exc":Ljava/lang/Throwable;
    invoke-static {v8}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 142
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->cancel()V

    .line 143
    new-instance v9, Lio/reactivex/exceptions/CompositeException;

    new-array v7, v7, [Ljava/lang/Throwable;

    aput-object v6, v7, v1

    aput-object v8, v7, v5

    invoke-direct {v9, v7}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v9}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 144
    return v1

    .line 170
    .end local v0    # "h":Lio/reactivex/parallel/ParallelFailureHandling;
    .end local v2    # "retries":J
    .end local v4    # "b":Z
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v8    # "exc":Ljava/lang/Throwable;
    :cond_4
    return v1
.end method
