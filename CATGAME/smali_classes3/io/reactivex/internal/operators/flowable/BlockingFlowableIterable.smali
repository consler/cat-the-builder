.class public final Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable;
.super Ljava/lang/Object;
.source "BlockingFlowableIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final source:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;I)V
    .locals 0
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;I)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable<TT;>;"
    .local p1, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable;->source:Lio/reactivex/Flowable;

    .line 36
    iput p2, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable;->bufferSize:I

    .line 37
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable<TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable;->bufferSize:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;-><init>(I)V

    .line 42
    .local v0, "it":Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable;->source:Lio/reactivex/Flowable;

    invoke-virtual {v1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 43
    return-object v0
.end method
