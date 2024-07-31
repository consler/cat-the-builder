.class public final Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;
.super Ljava/lang/Object;
.source "UnmodifiableIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableIterator<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->iterator:Ljava/util/Iterator;

    .line 68
    return-void
.end method

.method public static unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 48
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    if-eqz p0, :cond_1

    .line 51
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p0

    .line 54
    .local v0, "tmpIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    return-object v0

    .line 56
    .end local v0    # "tmpIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 83
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
