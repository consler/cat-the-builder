.class public Lorg/apache/commons/collections/set/TransformedSet;
.super Lorg/apache/commons/collections/collection/TransformedCollection;
.source "TransformedSet.java"

# interfaces
.implements Ljava/util/Set;


# static fields
.field private static final serialVersionUID:J = 0x43f953bbd8fce12L


# direct methods
.method protected constructor <init>(Ljava/util/Set;Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .param p1, "set"    # Ljava/util/Set;
    .param p2, "transformer"    # Lorg/apache/commons/collections/Transformer;

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V

    .line 71
    return-void
.end method

.method public static decorate(Ljava/util/Set;Lorg/apache/commons/collections/Transformer;)Ljava/util/Set;
    .locals 1
    .param p0, "set"    # Ljava/util/Set;
    .param p1, "transformer"    # Lorg/apache/commons/collections/Transformer;

    .line 55
    new-instance v0, Lorg/apache/commons/collections/set/TransformedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/set/TransformedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method
