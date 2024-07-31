.class final Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;
.super Lio/reactivex/subscribers/DisposableSubscriber;
.source "FlowableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutInnerSubscriber"
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
        "Lio/reactivex/subscribers/DisposableSubscriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field done:Z

.field final index:J

.field final parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;J)V
    .locals 0
    .param p1, "parent"    # Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;
    .param p2, "index"    # J

    .line 183
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber<TT;TU;TV;>;"
    invoke-direct {p0}, Lio/reactivex/subscribers/DisposableSubscriber;-><init>()V

    .line 184
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;

    .line 185
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->index:J

    .line 186
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 210
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber<TT;TU;TV;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    .line 214
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->index:J

    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;->timeout(J)V

    .line 215
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 200
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber<TT;TU;TV;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 202
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    .line 205
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;->onError(Ljava/lang/Throwable;)V

    .line 206
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Object;

    .line 190
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber<TT;TU;TV;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    .line 194
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->cancel()V

    .line 195
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->index:J

    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;->timeout(J)V

    .line 196
    return-void
.end method
