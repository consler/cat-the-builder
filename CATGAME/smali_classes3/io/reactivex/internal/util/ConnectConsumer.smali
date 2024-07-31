.class public final Lio/reactivex/internal/util/ConnectConsumer;
.super Ljava/lang/Object;
.source "ConnectConsumer.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field public disposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "t"    # Lio/reactivex/disposables/Disposable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lio/reactivex/internal/util/ConnectConsumer;->disposable:Lio/reactivex/disposables/Disposable;

    .line 28
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

    .line 22
    move-object v0, p1

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/util/ConnectConsumer;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
