.class final Lcom/google/common/collect/ImmutableTable$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cellColumnIndices:[I

.field private final cellRowIndices:[I

.field private final cellValues:[Ljava/lang/Object;

.field private final columnKeys:[Ljava/lang/Object;

.field private final rowKeys:[Ljava/lang/Object;


# direct methods
.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[I[I)V
    .locals 0
    .param p1, "rowKeys"    # [Ljava/lang/Object;
    .param p2, "columnKeys"    # [Ljava/lang/Object;
    .param p3, "cellValues"    # [Ljava/lang/Object;
    .param p4, "cellRowIndices"    # [I
    .param p5, "cellColumnIndices"    # [I

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->rowKeys:[Ljava/lang/Object;

    .line 384
    iput-object p2, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->columnKeys:[Ljava/lang/Object;

    .line 385
    iput-object p3, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellValues:[Ljava/lang/Object;

    .line 386
    iput-object p4, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellRowIndices:[I

    .line 387
    iput-object p5, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellColumnIndices:[I

    .line 388
    return-void
.end method

.method static create(Lcom/google/common/collect/ImmutableTable;[I[I)Lcom/google/common/collect/ImmutableTable$SerializedForm;
    .locals 7
    .param p1, "cellRowIndices"    # [I
    .param p2, "cellColumnIndices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableTable<",
            "***>;[I[I)",
            "Lcom/google/common/collect/ImmutableTable$SerializedForm;"
        }
    .end annotation

    .line 392
    .local p0, "table":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<***>;"
    new-instance v6, Lcom/google/common/collect/ImmutableTable$SerializedForm;

    .line 393
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 394
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 395
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/ImmutableTable$SerializedForm;-><init>([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[I[I)V

    .line 392
    return-object v6
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 6

    .line 401
    iget-object v0, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellValues:[Ljava/lang/Object;

    array-length v1, v0

    if-nez v1, :cond_0

    .line 402
    invoke-static {}, Lcom/google/common/collect/ImmutableTable;->of()Lcom/google/common/collect/ImmutableTable;

    move-result-object v0

    return-object v0

    .line 404
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 405
    iget-object v1, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->rowKeys:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->columnKeys:[Ljava/lang/Object;

    aget-object v3, v3, v2

    aget-object v0, v0, v2

    invoke-static {v1, v3, v0}, Lcom/google/common/collect/ImmutableTable;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableTable;

    move-result-object v0

    return-object v0

    .line 407
    :cond_1
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v0, v0

    invoke-direct {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    move-object v0, v1

    .line 409
    .local v0, "cellListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/collect/Table$Cell<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellValues:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 410
    iget-object v3, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->rowKeys:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellRowIndices:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->columnKeys:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellColumnIndices:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    aget-object v2, v2, v1

    .line 411
    invoke-static {v3, v4, v2}, Lcom/google/common/collect/ImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v2

    .line 410
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    .end local v1    # "i":I
    :cond_2
    nop

    .line 414
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->rowKeys:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->columnKeys:[Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    .line 413
    invoke-static {v1, v2, v3}, Lcom/google/common/collect/RegularImmutableTable;->forOrderedComponents(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/RegularImmutableTable;

    move-result-object v1

    return-object v1
.end method
