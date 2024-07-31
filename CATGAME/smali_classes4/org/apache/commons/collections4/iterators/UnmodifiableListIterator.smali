.class public final Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;
.super Ljava/lang/Object;
.source "UnmodifiableListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ListIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator<TE;>;"
    .local p1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;->iterator:Ljava/util/ListIterator;

    .line 66
    return-void
.end method

.method public static umodifiableListIterator(Ljava/util/ListIterator;)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator<",
            "+TE;>;)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 46
    .local p0, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TE;>;"
    if-eqz p0, :cond_1

    .line 49
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 51
    move-object v0, p0

    .line 52
    .local v0, "tmpIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    return-object v0

    .line 54
    .end local v0    # "tmpIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;-><init>(Ljava/util/ListIterator;)V

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ListIterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 71
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

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

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 96
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;, "Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
