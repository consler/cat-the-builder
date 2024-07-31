.class final Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;
.super Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber;
.source "ParallelFilterTry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelFilterTry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelFilterConditionalSubscriber"
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
.field final actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
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

    .line 199
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber<TT;>;"
    .local p1, "actual":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TT;>;"
    .local p2, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    .local p3, "errorHandler":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Ljava/lang/Long;-Ljava/lang/Throwable;Lio/reactivex/parallel/ParallelFailureHandling;>;"
    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber;-><init>(Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V

    .line 200
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 201
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 270
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->done:Z

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->done:Z

    .line 272
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 274
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 260
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 262
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->done:Z

    .line 265
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 266
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 205
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 208
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0, p0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 210
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

    .line 214
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->done:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 215
    const-wide/16 v2, 0x0

    .local v2, "retries":J
    const/4 v0, 0x0

    move v4, v1

    .line 221
    :goto_0
    const/4 v5, 0x1

    :try_start_0
    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v6, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .local v0, "b":Z
    nop

    .line 252
    if-eqz v0, :cond_0

    iget-object v4, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v4, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v5

    :cond_0
    return v1

    .line 222
    .end local v0    # "b":Z
    :catchall_0
    move-exception v6

    .line 223
    .local v4, "b":Z
    .local v6, "ex":Ljava/lang/Throwable;
    invoke-static {v6}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 228
    const/4 v7, 0x2

    :try_start_1
    iget-object v8, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->errorHandler:Lio/reactivex/functions/BiFunction;

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

    .line 234
    .local v0, "h":Lio/reactivex/parallel/ParallelFailureHandling;
    nop

    .line 236
    sget-object v8, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$1;->$SwitchMap$io$reactivex$parallel$ParallelFailureHandling:[I

    invoke-virtual {v0}, Lio/reactivex/parallel/ParallelFailureHandling;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v5, :cond_3

    if-eq v8, v7, :cond_2

    const/4 v5, 0x3

    if-eq v8, v5, :cond_1

    .line 246
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->cancel()V

    .line 247
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 248
    return v1

    .line 242
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->cancel()V

    .line 243
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->onComplete()V

    .line 244
    return v1

    .line 240
    :cond_2
    return v1

    .line 238
    :cond_3
    goto :goto_0

    .line 229
    .end local v0    # "h":Lio/reactivex/parallel/ParallelFailureHandling;
    :catchall_1
    move-exception v8

    .line 230
    .restart local v0    # "h":Lio/reactivex/parallel/ParallelFailureHandling;
    .local v8, "exc":Ljava/lang/Throwable;
    invoke-static {v8}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 231
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->cancel()V

    .line 232
    new-instance v9, Lio/reactivex/exceptions/CompositeException;

    new-array v7, v7, [Ljava/lang/Throwable;

    aput-object v6, v7, v1

    aput-object v8, v7, v5

    invoke-direct {v9, v7}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v9}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 233
    return v1

    .line 255
    .end local v0    # "h":Lio/reactivex/parallel/ParallelFailureHandling;
    .end local v2    # "retries":J
    .end local v4    # "b":Z
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v8    # "exc":Ljava/lang/Throwable;
    :cond_4
    return v1
.end method
