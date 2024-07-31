.class final Lio/reactivex/internal/functions/Functions$BooleanSupplierPredicateReverse;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BooleanSupplierPredicateReverse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final supplier:Lio/reactivex/functions/BooleanSupplier;


# direct methods
.method constructor <init>(Lio/reactivex/functions/BooleanSupplier;)V
    .locals 0
    .param p1, "supplier"    # Lio/reactivex/functions/BooleanSupplier;

    .line 372
    .local p0, "this":Lio/reactivex/internal/functions/Functions$BooleanSupplierPredicateReverse;, "Lio/reactivex/internal/functions/Functions$BooleanSupplierPredicateReverse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$BooleanSupplierPredicateReverse;->supplier:Lio/reactivex/functions/BooleanSupplier;

    .line 374
    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 378
    .local p0, "this":Lio/reactivex/internal/functions/Functions$BooleanSupplierPredicateReverse;, "Lio/reactivex/internal/functions/Functions$BooleanSupplierPredicateReverse<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/functions/Functions$BooleanSupplierPredicateReverse;->supplier:Lio/reactivex/functions/BooleanSupplier;

    invoke-interface {v0}, Lio/reactivex/functions/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
