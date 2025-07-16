.class final Lorg/apache/commons/collections4/CollectionUtils$3;
.super Ljava/lang/Object;
.source "CollectionUtils.java"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/CollectionUtils;->removeAll(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Equator;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "TE;",
        "Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$equator:Lorg/apache/commons/collections4/Equator;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/Equator;)V
    .locals 0

    .line 1863
    iput-object p1, p0, Lorg/apache/commons/collections4/CollectionUtils$3;->val$equator:Lorg/apache/commons/collections4/Equator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1863
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$3;->transform(Ljava/lang/Object;)Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/Object;)Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<",
            "TE;>;"
        }
    .end annotation

    .line 1866
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;

    iget-object v1, p0, Lorg/apache/commons/collections4/CollectionUtils$3;->val$equator:Lorg/apache/commons/collections4/Equator;

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;-><init>(Lorg/apache/commons/collections4/Equator;Ljava/lang/Object;)V

    return-object v0
.end method
