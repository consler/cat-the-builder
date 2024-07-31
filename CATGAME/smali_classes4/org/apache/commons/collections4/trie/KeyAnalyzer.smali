.class public abstract Lorg/apache/commons/collections4/trie/KeyAnalyzer;
.super Ljava/lang/Object;
.source "KeyAnalyzer.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final EQUAL_BIT_KEY:I = -0x2

.field public static final NULL_BIT_KEY:I = -0x1

.field public static final OUT_OF_BOUNDS_BIT_KEY:I = -0x3

.field private static final serialVersionUID:J = -0x48d26cf450710bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    .local p0, "this":Lorg/apache/commons/collections4/trie/KeyAnalyzer;, "Lorg/apache/commons/collections4/trie/KeyAnalyzer<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isEqualBitKey(I)Z
    .locals 1
    .param p0, "bitIndex"    # I

    .line 66
    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isNullBitKey(I)Z
    .locals 1
    .param p0, "bitIndex"    # I

    .line 73
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isOutOfBoundsIndex(I)Z
    .locals 1
    .param p0, "bitIndex"    # I

    .line 59
    const/4 v0, -0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isValidBitIndex(I)Z
    .locals 1
    .param p0, "bitIndex"    # I

    .line 81
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public abstract bitIndex(Ljava/lang/Object;IILjava/lang/Object;II)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IITK;II)I"
        }
    .end annotation
.end method

.method public abstract bitsPerElement()I
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)I"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/apache/commons/collections4/trie/KeyAnalyzer;, "Lorg/apache/commons/collections4/trie/KeyAnalyzer<TK;>;"
    .local p1, "o1":Ljava/lang/Object;, "TK;"
    .local p2, "o2":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_1

    .line 142
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 143
    :cond_1
    if-nez p2, :cond_2

    .line 144
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract isBitSet(Ljava/lang/Object;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)Z"
        }
    .end annotation
.end method

.method public abstract isPrefix(Ljava/lang/Object;IILjava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IITK;)Z"
        }
    .end annotation
.end method

.method public abstract lengthInBits(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation
.end method
