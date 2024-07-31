.class public final Lcom/google/common/primitives/ImmutableDoubleArray;
.super Ljava/lang/Object;
.source "ImmutableDoubleArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/ImmutableDoubleArray$AsList;,
        Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;


# instance fields
.field private final array:[D

.field private final end:I

.field private final transient start:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x0

    new-array v1, v1, [D

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    sput-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-void
.end method

.method private constructor <init>([D)V
    .locals 2
    .param p1, "array"    # [D

    .line 321
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    .line 322
    return-void
.end method

.method private constructor <init>([DII)V
    .locals 0
    .param p1, "array"    # [D
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    .line 326
    iput p2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    .line 327
    iput p3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    .line 328
    return-void
.end method

.method synthetic constructor <init>([DIILcom/google/common/primitives/ImmutableDoubleArray$1;)V
    .locals 0
    .param p1, "x0"    # [D
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/common/primitives/ImmutableDoubleArray$1;

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/primitives/ImmutableDoubleArray;)[D
    .locals 1
    .param p0, "x0"    # Lcom/google/common/primitives/ImmutableDoubleArray;

    .line 83
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/primitives/ImmutableDoubleArray;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/primitives/ImmutableDoubleArray;

    .line 83
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    return v0
.end method

.method static synthetic access$200()Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 1

    .line 83
    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-object v0
.end method

.method static synthetic access$500(DD)Z
    .locals 1
    .param p0, "x0"    # D
    .param p2, "x1"    # D

    .line 83
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v0

    return v0
.end method

.method private static areEqual(DD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 523
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static builder()Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 2

    .line 190
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static builder(I)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 2
    .param p0, "initialCapacity"    # I

    .line 177
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid initialCapacity: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 178
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray;"
        }
    .end annotation

    .line 160
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Double;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 161
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    return-object v0

    .line 163
    :cond_0
    invoke-static {}, Lcom/google/common/primitives/ImmutableDoubleArray;->builder()Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->build()Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray;"
        }
    .end annotation

    .line 149
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {p0}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    :goto_0
    return-object v0
.end method

.method public static copyOf([D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 2
    .param p0, "values"    # [D

    .line 142
    array-length v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    array-length v1, p0

    .line 144
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    .line 142
    :goto_0
    return-object v0
.end method

.method private isPartialView()Z
    .locals 2

    .line 567
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

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

.method public static of()Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 1

    .line 88
    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-object v0
.end method

.method public static of(D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D

    .line 93
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x1

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D

    .line 98
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D

    .line 103
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D
    .param p6, "e3"    # D

    .line 108
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D
    .param p6, "e3"    # D
    .param p8, "e4"    # D

    .line 113
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x5

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    const/4 v2, 0x4

    aput-wide p8, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D
    .param p6, "e3"    # D
    .param p8, "e4"    # D
    .param p10, "e5"    # D

    .line 119
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x6

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    const/4 v2, 0x4

    aput-wide p8, v1, v2

    const/4 v2, 0x5

    aput-wide p10, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static varargs of(D[D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .param p0, "first"    # D
    .param p2, "rest"    # [D

    .line 132
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7ffffffe

    if-gt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "the total number of elements must fit in an int"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 134
    array-length v0, p2

    add-int/2addr v0, v1

    new-array v0, v0, [D

    .line 135
    .local v0, "array":[D
    aput-wide p0, v0, v2

    .line 136
    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    new-instance v1, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-direct {v1, v0}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v1
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableDoubleArray;Lcom/google/common/primitives/ImmutableDoubleArray$1;)V

    return-object v0
.end method

.method public contains(D)Z
    .locals 1
    .param p1, "target"    # D

    .line 384
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->indexOf(D)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 503
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 504
    return v0

    .line 506
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 507
    return v2

    .line 509
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/common/primitives/ImmutableDoubleArray;

    .line 510
    .local v1, "that":Lcom/google/common/primitives/ImmutableDoubleArray;
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 511
    return v2

    .line 513
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 514
    invoke-virtual {p0, v3}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v4

    invoke-virtual {v1, v3}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v4

    if-nez v4, :cond_3

    .line 515
    return v2

    .line 513
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 518
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public get(I)D
    .locals 3
    .param p1, "index"    # I

    .line 347
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 348
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int/2addr v1, p1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public hashCode()I
    .locals 5

    .line 529
    const/4 v0, 0x1

    .line 530
    .local v0, "hash":I
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v1, v2, :cond_0

    .line 531
    mul-int/lit8 v0, v0, 0x1f

    .line 532
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/google/common/primitives/Doubles;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(D)I
    .locals 4
    .param p1, "target"    # D

    .line 357
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v0, v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v2, v1, v0

    invoke-static {v2, v3, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int v1, v0, v1

    return v1

    .line 357
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 337
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(D)I
    .locals 4
    .param p1, "target"    # D

    .line 371
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    if-lt v0, v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v2, v1, v0

    invoke-static {v2, v3, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int v1, v0, v1

    return v1

    .line 371
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 376
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public length()I
    .locals 2

    .line 332
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 575
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public subArray(II)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 400
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 401
    if-ne p1, p2, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int v3, v2, p1

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    :goto_0
    return-object v0
.end method

.method public toArray()[D
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 543
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const-string v0, "[]"

    return-object v0

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 547
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 549
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v1, v2, :cond_1

    .line 550
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trimmed()Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 2

    .line 563
    invoke-direct {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->toArray()[D

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 571
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->trimmed()Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    return-object v0
.end method
