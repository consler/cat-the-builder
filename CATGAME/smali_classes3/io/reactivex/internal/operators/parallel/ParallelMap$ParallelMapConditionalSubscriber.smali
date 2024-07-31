.class final Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;
.super Ljava/lang/Object;
.source "ParallelMap.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/ConditionalSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelMapConditionalSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field done:Z

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field s:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber<TT;TR;>;"
    .local p1, "actual":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 156
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->mapper:Lio/reactivex/functions/Function;

    .line 157
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 166
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 167
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 228
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->done:Z

    .line 232
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 233
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 218
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 220
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->done:Z

    .line 223
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 224
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 180
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 181
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The mapper returned a null value"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .local v0, "v":Ljava/lang/Object;, "TR;"
    nop

    .line 194
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onNext(Ljava/lang/Object;)V

    .line 195
    return-void

    .line 187
    .end local v0    # "v":Ljava/lang/Object;, "TR;"
    :catchall_0
    move-exception v1

    .line 188
    .restart local v0    # "v":Ljava/lang/Object;, "TR;"
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 189
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->cancel()V

    .line 190
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 191
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 171
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 174
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0, p0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 176
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 161
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 162
    return-void
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 199
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 200
    return v1

    .line 205
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v2, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The mapper returned a null value"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .local v0, "v":Ljava/lang/Object;, "TR;"
    nop

    .line 213
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 206
    .end local v0    # "v":Ljava/lang/Object;, "TR;"
    :catchall_0
    move-exception v2

    .line 207
    .restart local v0    # "v":Ljava/lang/Object;, "TR;"
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 208
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->cancel()V

    .line 209
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 210
    return v1
.end method
