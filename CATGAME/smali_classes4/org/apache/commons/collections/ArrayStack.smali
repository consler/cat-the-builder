.class public Lorg/apache/commons/collections/ArrayStack;
.super Ljava/util/ArrayList;
.source "ArrayStack.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;


# static fields
.field private static final serialVersionUID:J = 0x1d8f8fb5d72f1947L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public empty()Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/collections/ArrayStack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 174
    invoke-virtual {p0}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 178
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 176
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v0}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 92
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public peek(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 108
    :cond_0
    new-instance p1, Ljava/util/EmptyStackException;

    invoke-direct {p1}, Ljava/util/EmptyStackException;-><init>()V

    throw p1
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 125
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ArrayStack;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public remove()Ljava/lang/Object;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 192
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 190
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v0}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public search(Ljava/lang/Object;)I
    .locals 3

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 156
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez p1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method
