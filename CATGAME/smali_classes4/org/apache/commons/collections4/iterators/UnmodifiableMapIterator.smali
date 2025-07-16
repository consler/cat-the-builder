.class public final Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;
.super Ljava/lang/Object;
.source "UnmodifiableMapIterator.java"

# interfaces
.implements Lorg/apache/commons/collections4/MapIterator;
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
        "Lorg/apache/commons/collections4/MapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# instance fields
.field private final iterator:Lorg/apache/commons/collections4/MapIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/MapIterator<",
            "+TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/MapIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MapIterator<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;->iterator:Lorg/apache/commons/collections4/MapIterator;

    return-void
.end method

.method public static unmodifiableMapIterator(Lorg/apache/commons/collections4/MapIterator;)Lorg/apache/commons/collections4/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MapIterator<",
            "+TK;+TV;>;)",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 52
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    return-object p0

    .line 57
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;-><init>(Lorg/apache/commons/collections4/MapIterator;)V

    return-object v0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "MapIterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;->iterator:Lorg/apache/commons/collections4/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->getKey()Ljava/lang/Object;

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

    .line 89
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;->iterator:Lorg/apache/commons/collections4/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;->iterator:Lorg/apache/commons/collections4/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

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

    .line 79
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;->iterator:Lorg/apache/commons/collections4/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 94
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setValue() is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
