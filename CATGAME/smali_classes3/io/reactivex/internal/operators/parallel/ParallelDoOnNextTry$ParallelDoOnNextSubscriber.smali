.class final Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;
.super Ljava/lang/Object;
.source "ParallelDoOnNextTry.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/ConditionalSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelDoOnNextSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
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

.field done:Z

.field final errorHandler:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field s:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
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

    .line 88
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "onNext":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TT;>;"
    .local p3, "errorHandler":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Ljava/lang/Long;-Ljava/lang/Throwable;Lio/reactivex/parallel/ParallelFailureHandling;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 90
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    .line 91
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->errorHandler:Lio/reactivex/functions/BiFunction;

    .line 92
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 101
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 102
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 177
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->done:Z

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 182
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 167
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 169
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->done:Z

    .line 172
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 173
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->s:Lorg/reactivestreams/Subscription;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 118
    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 106
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 111
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 96
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 97
    return-void
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 122
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    return v1

    .line 125
    :cond_0
    const-wide/16 v2, 0x0

    .local v2, "retries":J
    const/4 v0, 0x0

    .line 129
    :goto_0
    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    invoke-interface {v5, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    nop

    .line 160
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 161
    return v4

    .line 130
    :catchall_0
    move-exception v5

    .line 131
    .local v5, "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 136
    const/4 v6, 0x2

    :try_start_1
    iget-object v7, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->errorHandler:Lio/reactivex/functions/BiFunction;

    const-wide/16 v8, 0x1

    add-long/2addr v8, v2

    move-wide v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The errorHandler returned a null item"

    invoke-static {v7, v8}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/parallel/ParallelFailureHandling;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v7

    .line 142
    .local v0, "h":Lio/reactivex/parallel/ParallelFailureHandling;
    nop

    .line 144
    sget-object v7, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$1;->$SwitchMap$io$reactivex$parallel$ParallelFailureHandling:[I

    invoke-virtual {v0}, Lio/reactivex/parallel/ParallelFailureHandling;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v4, :cond_3

    if-eq v7, v6, :cond_2

    const/4 v4, 0x3

    if-eq v7, v4, :cond_1

    .line 154
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->cancel()V

    .line 155
    invoke-virtual {p0, v5}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 156
    return v1

    .line 150
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->cancel()V

    .line 151
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->onComplete()V

    .line 152
    return v1

    .line 148
    :cond_2
    return v1

    .line 146
    :cond_3
    goto :goto_0

    .line 137
    .end local v0    # "h":Lio/reactivex/parallel/ParallelFailureHandling;
    :catchall_1
    move-exception v7

    .line 138
    .restart local v0    # "h":Lio/reactivex/parallel/ParallelFailureHandling;
    .local v7, "exc":Ljava/lang/Throwable;
    invoke-static {v7}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 139
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->cancel()V

    .line 140
    new-instance v8, Lio/reactivex/exceptions/CompositeException;

    new-array v6, v6, [Ljava/lang/Throwable;

    aput-object v5, v6, v1

    aput-object v7, v6, v4

    invoke-direct {v8, v6}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v8}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 141
    return v1
.end method
