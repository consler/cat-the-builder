.class final Lio/reactivex/internal/functions/Functions$JustValue;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JustValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TU;>;",
        "Lio/reactivex/functions/Function<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Lio/reactivex/internal/functions/Functions$JustValue;, "Lio/reactivex/internal/functions/Functions$JustValue<TT;TU;>;"
    .local p1, "value":Ljava/lang/Object;, "TU;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$JustValue;->value:Ljava/lang/Object;

    .line 179
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    .local p0, "this":Lio/reactivex/internal/functions/Functions$JustValue;, "Lio/reactivex/internal/functions/Functions$JustValue<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/functions/Functions$JustValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    .local p0, "this":Lio/reactivex/internal/functions/Functions$JustValue;, "Lio/reactivex/internal/functions/Functions$JustValue<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/functions/Functions$JustValue;->value:Ljava/lang/Object;

    return-object v0
.end method
