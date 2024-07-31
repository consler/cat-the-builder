.class final Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;
.super Ljava/lang/Object;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DisposeConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field private final srw:Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObserverResourceWrapper<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObserverResourceWrapper<",
            "TR;>;)V"
        }
    .end annotation

    .line 916
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer<TR;>;"
    .local p1, "srw":Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;, "Lio/reactivex/internal/operators/observable/ObserverResourceWrapper<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;->srw:Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;

    .line 918
    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "r"    # Lio/reactivex/disposables/Disposable;

    .line 922
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer<TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;->srw:Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;->setResource(Lio/reactivex/disposables/Disposable;)V

    .line 923
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 913
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer<TR;>;"
    move-object v0, p1

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
