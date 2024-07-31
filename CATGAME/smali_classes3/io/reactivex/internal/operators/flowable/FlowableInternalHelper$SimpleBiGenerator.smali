.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SimpleBiGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "TS;",
        "Lio/reactivex/Emitter<",
        "TT;>;TS;>;"
    }
.end annotation


# instance fields
.field final consumer:Lio/reactivex/functions/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiConsumer<",
            "TS;",
            "Lio/reactivex/Emitter<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/functions/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiConsumer<",
            "TS;",
            "Lio/reactivex/Emitter<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;, "Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator<TT;TS;>;"
    .local p1, "consumer":Lio/reactivex/functions/BiConsumer;, "Lio/reactivex/functions/BiConsumer<TS;Lio/reactivex/Emitter<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;->consumer:Lio/reactivex/functions/BiConsumer;

    .line 58
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lio/reactivex/Emitter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lio/reactivex/Emitter<",
            "TT;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;, "Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator<TT;TS;>;"
    .local p1, "t1":Ljava/lang/Object;, "TS;"
    .local p2, "t2":Lio/reactivex/Emitter;, "Lio/reactivex/Emitter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;->consumer:Lio/reactivex/functions/BiConsumer;

    invoke-interface {v0, p1, p2}, Lio/reactivex/functions/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;, "Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator<TT;TS;>;"
    move-object v0, p2

    check-cast v0, Lio/reactivex/Emitter;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;->apply(Ljava/lang/Object;Lio/reactivex/Emitter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
