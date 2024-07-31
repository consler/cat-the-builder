.class public abstract Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;
.super Ljava/lang/Object;
.source "AbstractMapEntryDecorator.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections4/KeyValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/KeyValue<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;, "Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    .line 47
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Map Entry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 77
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;, "Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 78
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;, "Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getMapEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;, "Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;, "Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 85
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;, "Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;, "Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator<TK;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 90
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;, "Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
