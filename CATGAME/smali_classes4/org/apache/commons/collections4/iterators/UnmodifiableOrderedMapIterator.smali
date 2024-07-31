.class public final Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;
.super Ljava/lang/Object;
.source "UnmodifiableOrderedMapIterator.java"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMapIterator;
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/OrderedMapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# instance fields
.field private final iterator:Lorg/apache/commons/collections4/OrderedMapIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "+TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/OrderedMapIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator<TK;TV;>;"
    .local p1, "iterator":Lorg/apache/commons/collections4/OrderedMapIterator;, "Lorg/apache/commons/collections4/OrderedMapIterator<TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    .line 71
    return-void
.end method

.method public static unmodifiableOrderedMapIterator(Lorg/apache/commons/collections4/OrderedMapIterator;)Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;+TV;>;)",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 51
    .local p0, "iterator":Lorg/apache/commons/collections4/OrderedMapIterator;, "Lorg/apache/commons/collections4/OrderedMapIterator<TK;+TV;>;"
    if-eqz p0, :cond_1

    .line 54
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 56
    move-object v0, p0

    .line 57
    .local v0, "tmpIterator":Lorg/apache/commons/collections4/OrderedMapIterator;, "Lorg/apache/commons/collections4/OrderedMapIterator<TK;TV;>;"
    return-object v0

    .line 59
    .end local v0    # "tmpIterator":Lorg/apache/commons/collections4/OrderedMapIterator;, "Lorg/apache/commons/collections4/OrderedMapIterator<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;-><init>(Lorg/apache/commons/collections4/OrderedMapIterator;)V

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OrderedMapIterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setValue() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
