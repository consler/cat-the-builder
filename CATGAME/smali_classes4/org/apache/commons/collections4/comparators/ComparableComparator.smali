.class public Lorg/apache/commons/collections4/comparators/ComparableComparator;
.super Ljava/lang/Object;
.source "ComparableComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ljava/lang/Comparable<",
        "-TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/comparators/ComparableComparator;

.field private static final serialVersionUID:J = -0x40b66da47914ec9L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lorg/apache/commons/collections4/comparators/ComparableComparator;

    invoke-direct {v0}, Lorg/apache/commons/collections4/comparators/ComparableComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/comparators/ComparableComparator;->INSTANCE:Lorg/apache/commons/collections4/comparators/ComparableComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparableComparator;, "Lorg/apache/commons/collections4/comparators/ComparableComparator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static comparableComparator()Lorg/apache/commons/collections4/comparators/ComparableComparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>()",
            "Lorg/apache/commons/collections4/comparators/ComparableComparator<",
            "TE;>;"
        }
    .end annotation

    .line 67
    sget-object v0, Lorg/apache/commons/collections4/comparators/ComparableComparator;->INSTANCE:Lorg/apache/commons/collections4/comparators/ComparableComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)I"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparableComparator;, "Lorg/apache/commons/collections4/comparators/ComparableComparator<TE;>;"
    .local p1, "obj1":Ljava/lang/Comparable;, "TE;"
    .local p2, "obj2":Ljava/lang/Comparable;, "TE;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 45
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparableComparator;, "Lorg/apache/commons/collections4/comparators/ComparableComparator<TE;>;"
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/comparators/ComparableComparator;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 127
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparableComparator;, "Lorg/apache/commons/collections4/comparators/ComparableComparator<TE;>;"
    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 127
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 109
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparableComparator;, "Lorg/apache/commons/collections4/comparators/ComparableComparator<TE;>;"
    const-string v0, "ComparableComparator"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
