.class final Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;
.super Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;
.source "FlowableCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MissingEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34699b00190316f1L


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 328
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 329
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 333
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    return-void

    .line 337
    :cond_0
    if-eqz p1, :cond_3

    .line 338
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 345
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;->get()J

    move-result-wide v0

    .line 346
    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 349
    .end local v0    # "r":J
    :cond_1
    goto :goto_0

    .line 347
    .restart local v0    # "r":J
    :cond_2
    :goto_1
    return-void

    .line 340
    .end local v0    # "r":J
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;->onError(Ljava/lang/Throwable;)V

    .line 341
    return-void
.end method
