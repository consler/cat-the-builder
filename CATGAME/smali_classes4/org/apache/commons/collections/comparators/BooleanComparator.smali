.class public final Lorg/apache/commons/collections/comparators/BooleanComparator;
.super Ljava/lang/Object;
.source "BooleanComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field private static final FALSE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator;

.field private static final TRUE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator;

.field private static final serialVersionUID:J = 0x19659e67a6639c01L


# instance fields
.field private trueFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lorg/apache/commons/collections/comparators/BooleanComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/comparators/BooleanComparator;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/collections/comparators/BooleanComparator;->TRUE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator;

    .line 44
    new-instance v0, Lorg/apache/commons/collections/comparators/BooleanComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/comparators/BooleanComparator;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/collections/comparators/BooleanComparator;->FALSE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/comparators/BooleanComparator;-><init>(Z)V

    .line 112
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "trueFirst"    # Z

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/BooleanComparator;->trueFirst:Z

    .line 125
    iput-boolean p1, p0, Lorg/apache/commons/collections/comparators/BooleanComparator;->trueFirst:Z

    .line 126
    return-void
.end method

.method public static getBooleanComparator(Z)Lorg/apache/commons/collections/comparators/BooleanComparator;
    .locals 1
    .param p0, "trueFirst"    # Z

    .line 98
    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/commons/collections/comparators/BooleanComparator;->TRUE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/collections/comparators/BooleanComparator;->FALSE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator;

    :goto_0
    return-object v0
.end method

.method public static getFalseFirstComparator()Lorg/apache/commons/collections/comparators/BooleanComparator;
    .locals 1

    .line 79
    sget-object v0, Lorg/apache/commons/collections/comparators/BooleanComparator;->FALSE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator;

    return-object v0
.end method

.method public static getTrueFirstComparator()Lorg/apache/commons/collections/comparators/BooleanComparator;
    .locals 1

    .line 63
    sget-object v0, Lorg/apache/commons/collections/comparators/BooleanComparator;->TRUE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)I
    .locals 3
    .param p1, "b1"    # Ljava/lang/Boolean;
    .param p2, "b2"    # Ljava/lang/Boolean;

    .line 155
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 156
    .local v0, "v1":Z
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 158
    .local v1, "v2":Z
    xor-int v2, v0, v1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/apache/commons/collections/comparators/BooleanComparator;->trueFirst:Z

    xor-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .line 142
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/comparators/BooleanComparator;->compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 186
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/apache/commons/collections/comparators/BooleanComparator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/BooleanComparator;->trueFirst:Z

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/collections/comparators/BooleanComparator;

    iget-boolean v1, v1, Lorg/apache/commons/collections/comparators/BooleanComparator;->trueFirst:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 169
    const-string v0, "BooleanComparator"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 170
    .local v0, "hash":I
    iget-boolean v1, p0, Lorg/apache/commons/collections/comparators/BooleanComparator;->trueFirst:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public sortsTrueFirst()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/BooleanComparator;->trueFirst:Z

    return v0
.end method
