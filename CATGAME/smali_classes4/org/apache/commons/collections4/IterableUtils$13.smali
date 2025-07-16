.class final Lorg/apache/commons/collections4/IterableUtils$13;
.super Lorg/apache/commons/collections4/FluentIterable;
.source "IterableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/IterableUtils;->zippingIterable(Ljava/lang/Iterable;[Ljava/lang/Iterable;)Ljava/lang/Iterable;
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
.field final synthetic val$first:Ljava/lang/Iterable;

.field final synthetic val$others:[Ljava/lang/Iterable;


# direct methods
.method constructor <init>([Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lorg/apache/commons/collections4/IterableUtils$13;->val$others:[Ljava/lang/Iterable;

    iput-object p2, p0, Lorg/apache/commons/collections4/IterableUtils$13;->val$first:Ljava/lang/Iterable;

    invoke-direct {p0}, Lorg/apache/commons/collections4/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lorg/apache/commons/collections4/IterableUtils$13;->val$others:[Ljava/lang/Iterable;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/Iterator;

    .line 552
    iget-object v1, p0, Lorg/apache/commons/collections4/IterableUtils$13;->val$first:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 553
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/IterableUtils$13;->val$others:[Ljava/lang/Iterable;

    array-length v3, v1

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 554
    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    aput-object v1, v0, v3

    move v2, v3

    goto :goto_0

    .line 556
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/collections4/IteratorUtils;->zippingIterator([Ljava/util/Iterator;)Lorg/apache/commons/collections4/iterators/ZippingIterator;

    move-result-object v0

    return-object v0
.end method
