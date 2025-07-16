.class public abstract Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;
.super Ljava/lang/Object;
.source "AbstractMapEntryDecorator.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections/KeyValue;


# instance fields
.field protected final entry:Ljava/util/Map$Entry;


# direct methods
.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Map Entry must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getMapEntry()Ljava/util/Map$Entry;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
