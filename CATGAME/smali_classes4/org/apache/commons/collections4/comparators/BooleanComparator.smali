.class public final Lorg/apache/commons/collections4/comparators/BooleanComparator;
.super Ljava/lang/Object;
.source "BooleanComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final FALSE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

.field private static final TRUE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

.field private static final serialVersionUID:J = 0x19659e67a6639c01L


# instance fields
.field private trueFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lorg/apache/commons/collections4/comparators/BooleanComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/comparators/BooleanComparator;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->TRUE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

    .line 41
    new-instance v0, Lorg/apache/commons/collections4/comparators/BooleanComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/comparators/BooleanComparator;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->FALSE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/comparators/BooleanComparator;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean p1, p0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->trueFirst:Z

    return-void
.end method

.method public static booleanComparator(Z)Lorg/apache/commons/collections4/comparators/BooleanComparator;
    .locals 0

    if-eqz p0, :cond_0

    .line 99
    sget-object p0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->TRUE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->FALSE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

    :goto_0
    return-object p0
.end method

.method public static getFalseFirstComparator()Lorg/apache/commons/collections4/comparators/BooleanComparator;
    .locals 1

    .line 78
    sget-object v0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->FALSE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

    return-object v0
.end method

.method public static getTrueFirstComparator()Lorg/apache/commons/collections4/comparators/BooleanComparator;
    .locals 1

    .line 61
    sget-object v0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->TRUE_FIRST:Lorg/apache/commons/collections4/comparators/BooleanComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)I
    .locals 0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 142
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, p1

    if-eqz p2, :cond_1

    .line 144
    iget-boolean p2, p0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->trueFirst:Z

    xor-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/comparators/BooleanComparator;->compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 174
    instance-of v0, p1, Lorg/apache/commons/collections4/comparators/BooleanComparator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->trueFirst:Z

    check-cast p1, Lorg/apache/commons/collections4/comparators/BooleanComparator;

    iget-boolean p1, p1, Lorg/apache/commons/collections4/comparators/BooleanComparator;->trueFirst:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 157
    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->trueFirst:Z

    if-eqz v0, :cond_0

    const v0, -0x1c7dc2fe

    goto :goto_0

    :cond_0
    const v0, 0x1c7dc2fe

    :goto_0
    return v0
.end method

.method public sortsTrueFirst()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/BooleanComparator;->trueFirst:Z

    return v0
.end method
