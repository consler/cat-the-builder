.class final Lio/reactivex/internal/functions/Functions$TimestampFunction;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimestampFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/schedulers/Timed<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Ljava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p2, "scheduler"    # Lio/reactivex/Scheduler;

    .line 391
    .local p0, "this":Lio/reactivex/internal/functions/Functions$TimestampFunction;, "Lio/reactivex/internal/functions/Functions$TimestampFunction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$TimestampFunction;->unit:Ljava/util/concurrent/TimeUnit;

    .line 393
    iput-object p2, p0, Lio/reactivex/internal/functions/Functions$TimestampFunction;->scheduler:Lio/reactivex/Scheduler;

    .line 394
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lio/reactivex/schedulers/Timed;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/schedulers/Timed<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 398
    .local p0, "this":Lio/reactivex/internal/functions/Functions$TimestampFunction;, "Lio/reactivex/internal/functions/Functions$TimestampFunction<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/reactivex/schedulers/Timed;

    iget-object v1, p0, Lio/reactivex/internal/functions/Functions$TimestampFunction;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/internal/functions/Functions$TimestampFunction;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, Lio/reactivex/internal/functions/Functions$TimestampFunction;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/schedulers/Timed;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

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

    .line 386
    .local p0, "this":Lio/reactivex/internal/functions/Functions$TimestampFunction;, "Lio/reactivex/internal/functions/Functions$TimestampFunction<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/functions/Functions$TimestampFunction;->apply(Ljava/lang/Object;)Lio/reactivex/schedulers/Timed;

    move-result-object v0

    return-object v0
.end method
