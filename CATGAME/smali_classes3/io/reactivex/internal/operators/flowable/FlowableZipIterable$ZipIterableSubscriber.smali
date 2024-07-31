.class final Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;
.super Ljava/lang/Object;
.source "FlowableZipIterable.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableZipIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipIterableSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TV;>;"
        }
    .end annotation
.end field

.field done:Z

.field final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TU;>;"
        }
    .end annotation
.end field

.field s:Lorg/reactivestreams/Subscription;

.field final zipper:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Ljava/util/Iterator;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TV;>;",
            "Ljava/util/Iterator<",
            "TU;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TV;>;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber<TT;TU;TV;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TV;>;"
    .local p2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TU;>;"
    .local p3, "zipper":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-TT;-TU;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 81
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->iterator:Ljava/util/Iterator;

    .line 82
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->zipper:Lio/reactivex/functions/BiFunction;

    .line 83
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 167
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber<TT;TU;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 168
    return-void
.end method

.method error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 135
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber<TT;TU;TV;>;"
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->done:Z

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 139
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 153
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber<TT;TU;TV;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->done:Z

    .line 157
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 158
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 143
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber<TT;TU;TV;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 145
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->done:Z

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 149
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber<TT;TU;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 96
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The iterator returned a null value"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 106
    .local v1, "u":Ljava/lang/Object;, "TU;"
    nop

    .line 110
    :try_start_1
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->zipper:Lio/reactivex/functions/BiFunction;

    invoke-interface {v2, p1, v1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The zipper function returned a null value"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    .local v0, "v":Ljava/lang/Object;, "TV;"
    nop

    .line 116
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 121
    const/4 v2, 0x0

    :try_start_2
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .local v2, "b":Z
    nop

    .line 127
    if-nez v2, :cond_1

    .line 128
    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->done:Z

    .line 129
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v3}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 130
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 132
    :cond_1
    return-void

    .line 122
    .end local v2    # "b":Z
    :catchall_0
    move-exception v3

    .line 123
    .restart local v2    # "b":Z
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->error(Ljava/lang/Throwable;)V

    .line 124
    return-void

    .line 111
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    .end local v2    # "b":Z
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    .line 112
    .restart local v0    # "v":Ljava/lang/Object;, "TV;"
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->error(Ljava/lang/Throwable;)V

    .line 113
    return-void

    .line 103
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    .end local v1    # "u":Ljava/lang/Object;, "TU;"
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    .line 104
    .local v0, "u":Ljava/lang/Object;, "TU;"
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->error(Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 87
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber<TT;TU;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 91
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 162
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber<TT;TU;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 163
    return-void
.end method
