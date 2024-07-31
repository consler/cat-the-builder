.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapWithCombinerOuter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lorg/reactivestreams/Publisher<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final combiner:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field private final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TU;>;>;)V"
        }
    .end annotation

    .line 159
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;, "Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter<TT;TR;TU;>;"
    .local p1, "combiner":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-TT;-TU;+TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lorg/reactivestreams/Publisher<+TU;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->combiner:Lio/reactivex/functions/BiFunction;

    .line 161
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->mapper:Lio/reactivex/functions/Function;

    .line 162
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;, "Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter<TT;TR;TU;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->apply(Ljava/lang/Object;)Lorg/reactivestreams/Publisher;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Lorg/reactivestreams/Publisher;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/reactivestreams/Publisher<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;, "Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter<TT;TR;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Publisher;

    .line 168
    .local v0, "u":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<TU;>;"
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableMapPublisher;

    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerInner;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->combiner:Lio/reactivex/functions/BiFunction;

    invoke-direct {v2, v3, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerInner;-><init>(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;)V

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableMapPublisher;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;)V

    return-object v1
.end method
