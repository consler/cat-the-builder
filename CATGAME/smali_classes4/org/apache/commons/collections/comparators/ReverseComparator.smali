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

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/comparators/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .param p1, "comparator"    # Ljava/util/Comparator;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iput-object p1, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lorg/apache/commons/collections/comparators/ComparableComparator;->getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    .line 70
    :goto_0
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 113
    if-ne p0, p1, :cond_0

    .line 114
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 116
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
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections/comparators/ReverseComparator;

    .line 119
    .local v0, "thatrc":Lorg/apache/commons/collections/comparators/ReverseComparator;
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    iget-object v2, v0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v1, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 121
    .end local v0    # "thatrc":Lorg/apache/commons/collections/comparators/ReverseComparator;
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 93
    const-string v0, "ReverseComparator"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
