.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$RepeatWhenOuterHandler;
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
    name = "RepeatWhenOuterHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/Observable<",
        "Lio/reactivex/Notification<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lio/reactivex/ObservableSource<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final handler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;"
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
            "-",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;)V"
        }
    .end annotation

    .line 208
    .local p1, "handler":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Observable<Ljava/lang/Object;>;+Lio/reactivex/ObservableSource<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$RepeatWhenOuterHandler;->handler:Lio/reactivex/functions/Function;

    .line 210
    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Notification<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lio/reactivex/ObservableSource<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    .local p1, "no":Lio/reactivex/Observable;, "Lio/reactivex/Observable<Lio/reactivex/Notification<Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$RepeatWhenOuterHandler;->handler:Lio/reactivex/functions/Function;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;->INSTANCE:Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

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

    .line 204
    move-object v0, p1

    check-cast v0, Lio/reactivex/Observable;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$RepeatWhenOuterHandler;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
