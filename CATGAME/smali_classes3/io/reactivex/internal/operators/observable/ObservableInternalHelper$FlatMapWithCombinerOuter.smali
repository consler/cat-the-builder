.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableInternalHelper;
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
        "Lio/reactivex/ObservableSource<",
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
            "Lio/reactivex/ObservableSource<",
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
            "Lio/reactivex/ObservableSource<",
            "+TU;>;>;)V"
        }
    .end annotation

    .line 160
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter<TT;TR;TU;>;"
    .local p1, "combiner":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-TT;-TU;+TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lio/reactivex/ObservableSource<+TU;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;->combiner:Lio/reactivex/functions/BiFunction;

    .line 162
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;->mapper:Lio/reactivex/functions/Function;

    .line 163
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ObservableSource<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter<TT;TR;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    .line 169
    .local v0, "u":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TU;>;"
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableMap;

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerInner;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;->combiner:Lio/reactivex/functions/BiFunction;

    invoke-direct {v2, v3, p1}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerInner;-><init>(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;)V

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/ObservableMap;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter<TT;TR;TU;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;->apply(Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
