.class Lcom/google/common/collect/CompactLinkedHashSet;
.super Lcom/google/common/collect/CompactHashSet;
.source "CompactLinkedHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private transient firstEntry:I

.field private transient lastEntry:I

.field private transient predecessor:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient successor:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    .line 121
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .line 124
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    .line 125
    return-void
.end method

.method public static create()Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0}, Lcom/google/common/collect/CompactLinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 63
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;

    move-result-object v0

    .line 64
    .local v0, "set":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/CompactLinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 65
    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 77
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;

    move-result-object v0

    .line 78
    .local v0, "set":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 79
    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method private getPredecessor(I)I
    .locals 1
    .param p1, "entry"    # I

    .line 143
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aget v0, v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private setPredecessor(II)V
    .locals 2
    .param p1, "entry"    # I
    .param p2, "pred"    # I

    .line 156
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    add-int/lit8 v1, p2, 0x1

    aput v1, v0, p1

    .line 157
    return-void
.end method

.method private setSucceeds(II)V
    .locals 1
    .param p1, "pred"    # I
    .param p2, "succ"    # I

    .line 160
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 161
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashSet;->setSuccessor(II)V

    .line 166
    :goto_0
    if-ne p2, v0, :cond_1

    .line 167
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    goto :goto_1

    .line 169
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->setPredecessor(II)V

    .line 171
    :goto_1
    return-void
.end method

.method private setSuccessor(II)V
    .locals 2
    .param p1, "entry"    # I
    .param p2, "succ"    # I

    .line 152
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    add-int/lit8 v1, p2, 0x1

    aput v1, v0, p1

    .line 153
    return-void
.end method


# virtual methods
.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 208
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method allocArrays()I
    .locals 2

    .line 136
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/CompactHashSet;->allocArrays()I

    move-result v0

    .line 137
    .local v0, "expectedSize":I
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 138
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    .line 139
    return v0
.end method

.method public clear()V
    .locals 3

    .line 223
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    return-void

    .line 226
    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 227
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 228
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 229
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v1

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 230
    invoke-super {p0}, Lcom/google/common/collect/CompactHashSet;->clear()V

    .line 231
    return-void
.end method

.method firstEntryIndex()I
    .locals 1

    .line 203
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    return v0
.end method

.method getSuccessor(I)I
    .locals 1
    .param p1, "entry"    # I

    .line 148
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v0, v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method init(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .line 129
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    .line 130
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 131
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 132
    return-void
.end method

.method insertEntry(ILjava/lang/Object;II)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3, "hash"    # I
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;II)V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;II)V

    .line 176
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 177
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 178
    return-void
.end method

.method moveLastEntry(II)V
    .locals 3
    .param p1, "dstIndex"    # I
    .param p2, "mask"    # I

    .line 182
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 183
    .local v0, "srcIndex":I
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/CompactHashSet;->moveLastEntry(II)V

    .line 185
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->getPredecessor(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->getSuccessor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 186
    if-ge p1, v0, :cond_0

    .line 187
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashSet;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactLinkedHashSet;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 191
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput v2, v1, v0

    .line 192
    return-void
.end method

.method resizeEntries(I)V
    .locals 1
    .param p1, "newCapacity"    # I

    .line 196
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 197
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 198
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    .line 199
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 213
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
