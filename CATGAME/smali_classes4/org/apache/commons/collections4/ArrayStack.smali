.class public Lorg/apache/commons/collections4/ArrayStack;
.super Ljava/util/ArrayList;
.source "ArrayStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TE;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1d8f8fb5d72f1947L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    .local p0, "this":Lorg/apache/commons/collections4/ArrayStack;, "Lorg/apache/commons/collections4/ArrayStack<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialSize"    # I

    .line 68
    .local p0, "this":Lorg/apache/commons/collections4/ArrayStack;, "Lorg/apache/commons/collections4/ArrayStack<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public empty()Z
    .locals 1

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/ArrayStack;, "Lorg/apache/commons/collections4/ArrayStack<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/ArrayStack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/apache/commons/collections4/ArrayStack;, "Lorg/apache/commons/collections4/ArrayStack<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/ArrayStack;->size()I

    move-result v0

    .line 91
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 94
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 92
    :cond_0
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1
.end method

.method public peek(I)Ljava/lang/Object;
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/ArrayStack;, "Lorg/apache/commons/collections4/ArrayStack<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/ArrayStack;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 108
    .local v0, "m":I
    if-ltz v0, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 109
    :cond_0
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1
.end method

.method public pop()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/apache/commons/collections4/ArrayStack;, "Lorg/apache/commons/collections4/ArrayStack<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/ArrayStack;->size()I

    move-result v0

    .line 122
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 125
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 123
    :cond_0
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/apache/commons/collections4/ArrayStack;, "Lorg/apache/commons/collections4/ArrayStack<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/ArrayStack;->add(Ljava/lang/Object;)Z

    .line 137
    return-object p1
.end method

.method public search(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 152
    .local p0, "this":Lorg/apache/commons/collections4/ArrayStack;, "Lorg/apache/commons/collections4/ArrayStack<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/ArrayStack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 153
    .local v0, "i":I
    const/4 v1, 0x1

    .line 154
    .local v1, "n":I
    :goto_0
    if-ltz v0, :cond_3

    .line 155
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 156
    .local v2, "current":Ljava/lang/Object;
    if-nez p1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    :cond_1
    return v1

    .line 160
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 161
    nop

    .end local v2    # "current":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    .line 162
    goto :goto_0

    .line 163
    :cond_3
    const/4 v2, -0x1

    return v2
.end method
