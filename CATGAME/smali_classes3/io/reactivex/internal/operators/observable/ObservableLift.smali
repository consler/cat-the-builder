.class public final Lio/reactivex/internal/operators/observable/ObservableLift;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableLift.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final operator:Lio/reactivex/ObservableOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableOperator<",
            "+TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/ObservableOperator<",
            "+TR;-TT;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLift;, "Lio/reactivex/internal/operators/observable/ObservableLift<TR;TT;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    .local p2, "operator":Lio/reactivex/ObservableOperator;, "Lio/reactivex/ObservableOperator<+TR;-TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 36
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableLift;->operator:Lio/reactivex/ObservableOperator;

    .line 37
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLift;, "Lio/reactivex/internal/operators/observable/ObservableLift<TR;TT;>;"
    .local p1, "s":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLift;->operator:Lio/reactivex/ObservableOperator;

    invoke-interface {v1, p1}, Lio/reactivex/ObservableOperator;->apply(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableLift;->operator:Lio/reactivex/ObservableOperator;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " returned a null Observer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Observer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 55
    .local v0, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    nop

    .line 57
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLift;->source:Lio/reactivex/ObservableSource;

    invoke-interface {v1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 58
    return-void

    .line 46
    .end local v0    # "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    :catchall_0
    move-exception v1

    .line 47
    .restart local v0    # "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 50
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 52
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 53
    .local v2, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v2, v1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 54
    throw v2

    .line 44
    .end local v0    # "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catch_0
    move-exception v1

    .line 45
    .restart local v0    # "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local v1, "e":Ljava/lang/NullPointerException;
    throw v1
.end method
