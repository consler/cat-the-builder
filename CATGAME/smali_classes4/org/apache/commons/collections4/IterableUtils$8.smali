.class final Lorg/apache/commons/collections4/IterableUtils$8;
.super Lorg/apache/commons/collections4/FluentIterable;
.source "IterableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/IterableUtils;->reversedIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/FluentIterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lorg/apache/commons/collections4/IterableUtils$8;->val$iterable:Ljava/lang/Iterable;

    invoke-direct {p0}, Lorg/apache/commons/collections4/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lorg/apache/commons/collections4/IterableUtils$8;->val$iterable:Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 365
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/IteratorUtils;->toList(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object v0

    .line 366
    :goto_0
    new-instance v1, Lorg/apache/commons/collections4/iterators/ReverseListIterator;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections4/iterators/ReverseListIterator;-><init>(Ljava/util/List;)V

    return-object v1
.end method
