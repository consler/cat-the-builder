.class final Lorg/apache/commons/collections4/IterableUtils$9;
.super Lorg/apache/commons/collections4/FluentIterable;
.source "IterableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/IterableUtils;->skippingIterable(Ljava/lang/Iterable;J)Ljava/lang/Iterable;
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
.field final synthetic val$elementsToSkip:J

.field final synthetic val$iterable:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;J)V
    .locals 0

    .line 393
    iput-object p1, p0, Lorg/apache/commons/collections4/IterableUtils$9;->val$iterable:Ljava/lang/Iterable;

    iput-wide p2, p0, Lorg/apache/commons/collections4/IterableUtils$9;->val$elementsToSkip:J

    invoke-direct {p0}, Lorg/apache/commons/collections4/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lorg/apache/commons/collections4/IterableUtils$9;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/collections4/IterableUtils$9;->val$elementsToSkip:J

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections4/IteratorUtils;->skippingIterator(Ljava/util/Iterator;J)Lorg/apache/commons/collections4/iterators/SkippingIterator;

    move-result-object v0

    return-object v0
.end method
