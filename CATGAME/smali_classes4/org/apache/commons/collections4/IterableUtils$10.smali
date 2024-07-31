.class final Lorg/apache/commons/collections4/IterableUtils$10;
.super Lorg/apache/commons/collections4/FluentIterable;
.source "IterableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/IterableUtils;->transformedIterable(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/FluentIterable<",
        "TO;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$transformer:Lorg/apache/commons/collections4/Transformer;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lorg/apache/commons/collections4/IterableUtils$10;->val$iterable:Ljava/lang/Iterable;

    iput-object p2, p0, Lorg/apache/commons/collections4/IterableUtils$10;->val$transformer:Lorg/apache/commons/collections4/Transformer;

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
            "TO;>;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lorg/apache/commons/collections4/IterableUtils$10;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/IterableUtils$10;->val$transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/IteratorUtils;->transformedIterator(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
