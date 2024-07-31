.class public Lorg/apache/commons/collections4/comparators/ReverseComparator;
.super Ljava/lang/Object;
.source "ReverseComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x27acceccb201dd81L


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ReverseComparator;, "Lorg/apache/commons/collections4/comparators/ReverseComparator<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/comparators/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ReverseComparator;, "Lorg/apache/commons/collections4/comparators/ReverseComparator<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    .line 64
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)I"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ReverseComparator;, "Lorg/apache/commons/collections4/comparators/ReverseComparator<TE;>;"
    .local p1, "obj1":Ljava/lang/Object;, "TE;"
    .local p2, "obj2":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ReverseComparator;, "Lorg/apache/commons/collections4/comparators/ReverseComparator<TE;>;"
    if-ne p0, p1, :cond_0

    .line 111
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 114
    return v0

    .line 116
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections4/comparators/ReverseComparator;

    .line 118
    .local v0, "thatrc":Lorg/apache/commons/collections4/comparators/ReverseComparator;, "Lorg/apache/commons/collections4/comparators/ReverseComparator<*>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    iget-object v2, v0, Lorg/apache/commons/collections4/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v1, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 120
    .end local v0    # "thatrc":Lorg/apache/commons/collections4/comparators/ReverseComparator;, "Lorg/apache/commons/collections4/comparators/ReverseComparator<*>;"
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ReverseComparator;, "Lorg/apache/commons/collections4/comparators/ReverseComparator<TE;>;"
    const-string v0, "ReverseComparator"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections4/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
