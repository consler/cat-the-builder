.class public Lorg/apache/commons/collections/comparators/ReverseComparator;
.super Ljava/lang/Object;
.source "ReverseComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x27acceccb201dd81L


# instance fields
.field private comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/comparators/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 66
    iput-object p1, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lorg/apache/commons/collections/comparators/ComparableComparator;->getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    :goto_0
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 117
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    check-cast p1, Lorg/apache/commons/collections/comparators/ReverseComparator;

    .line 119
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    iget-object p1, p1, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xa730938

    xor-int/2addr v0, v1

    return v0
.end method
