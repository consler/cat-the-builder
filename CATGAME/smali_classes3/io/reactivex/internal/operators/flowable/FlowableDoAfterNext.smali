.class public final Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableDoAfterNext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext$DoAfterConditionalSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext$DoAfterSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final onAfterNext:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Lio/reactivex/functions/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext;, "Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext<TT;>;"
    .local p1, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    .local p2, "onAfterNext":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    .line 36
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext;->onAfterNext:Lio/reactivex/functions/Consumer;

    .line 37
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext;, "Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    instance-of v0, p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext;->source:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext$DoAfterConditionalSubscriber;

    move-object v2, p1

    check-cast v2, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext;->onAfterNext:Lio/reactivex/functions/Consumer;

    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext$DoAfterConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Consumer;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext;->source:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext$DoAfterSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext;->onAfterNext:Lio/reactivex/functions/Consumer;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableDoAfterNext$DoAfterSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Consumer;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 46
    :goto_0
    return-void
.end method
