.class final Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;
.super Lio/reactivex/subscribers/DisposableSubscriber;
.source "FlowableBufferBoundary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferOpenSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subscribers/DisposableSubscriber<",
        "TOpen;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final parent:Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber<",
            "TT;TU;TOpen;TClose;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber<",
            "TT;TU;TOpen;TClose;>;)V"
        }
    .end annotation

    .line 247
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber<TT;TU;TOpen;TClose;>;"
    .local p1, "parent":Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber<TT;TU;TOpen;TClose;>;"
    invoke-direct {p0}, Lio/reactivex/subscribers/DisposableSubscriber;-><init>()V

    .line 248
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;

    .line 249
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 270
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber<TT;TU;TOpen;TClose;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 271
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;->done:Z

    .line 274
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;->openFinished(Lio/reactivex/disposables/Disposable;)V

    .line 275
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 260
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber<TT;TU;TOpen;TClose;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 262
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;->done:Z

    .line 265
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;->onError(Ljava/lang/Throwable;)V

    .line 266
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOpen;)V"
        }
    .end annotation

    .line 252
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber<TT;TU;TOpen;TClose;>;"
    .local p1, "t":Ljava/lang/Object;, "TOpen;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;->open(Ljava/lang/Object;)V

    .line 256
    return-void
.end method
