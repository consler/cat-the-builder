.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ZipIterableFunction;
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
    name = "ZipIterableFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/util/List<",
        "Lio/reactivex/ObservableSource<",
        "+TT;>;>;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field private final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 282
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ZipIterableFunction;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ZipIterableFunction<TT;TR;>;"
    .local p1, "zipper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-[Ljava/lang/Object;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ZipIterableFunction;->zipper:Lio/reactivex/functions/Function;

    .line 284
    return-void
.end method


# virtual methods
.method public apply(Ljava/util/List;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;>;)",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;"
        }
    .end annotation

    .line 288
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ZipIterableFunction;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ZipIterableFunction<TT;TR;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/ObservableSource<+TT;>;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ZipIterableFunction;->zipper:Lio/reactivex/functions/Function;

    invoke-static {}, Lio/reactivex/Observable;->bufferSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lio/reactivex/Observable;->zipIterable(Ljava/lang/Iterable;Lio/reactivex/functions/Function;ZI)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ZipIterableFunction;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ZipIterableFunction<TT;TR;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ZipIterableFunction;->apply(Ljava/util/List;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
