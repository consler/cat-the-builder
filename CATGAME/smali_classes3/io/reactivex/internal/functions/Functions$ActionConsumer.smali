.class final Lio/reactivex/internal/functions/Functions$ActionConsumer;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final action:Lio/reactivex/functions/Action;


# direct methods
.method constructor <init>(Lio/reactivex/functions/Action;)V
    .locals 0
    .param p1, "action"    # Lio/reactivex/functions/Action;

    .line 338
    .local p0, "this":Lio/reactivex/internal/functions/Functions$ActionConsumer;, "Lio/reactivex/internal/functions/Functions$ActionConsumer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$ActionConsumer;->action:Lio/reactivex/functions/Action;

    .line 340
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 344
    .local p0, "this":Lio/reactivex/internal/functions/Functions$ActionConsumer;, "Lio/reactivex/internal/functions/Functions$ActionConsumer<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/functions/Functions$ActionConsumer;->action:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V

    .line 345
    return-void
.end method
