.class public Lorg/apache/commons/collections/buffer/PredicatedBuffer;
.super Lorg/apache/commons/collections/collection/PredicatedCollection;
.source "PredicatedBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;


# static fields
.field private static final serialVersionUID:J = 0x20064628e5ad729dL


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Buffer;Lorg/apache/commons/collections/Predicate;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Buffer;
    .locals 1

    .line 60
    new-instance v0, Lorg/apache/commons/collections/buffer/PredicatedBuffer;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/buffer/PredicatedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PredicatedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/Buffer;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getBuffer()Lorg/apache/commons/collections/Buffer;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PredicatedBuffer;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Buffer;

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PredicatedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/Buffer;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
