.class Lcom/google/common/collect/CompactLinkedHashMap;
.super Lcom/google/common/collect/CompactHashMap;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private final accessOrder:Z

.field private transient firstEntry:I

.field private transient lastEntry:I

.field transient links:[J
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 91
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    .line 92
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .line 95
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(IZ)V

    .line 96
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0
    .param p1, "expectedSize"    # I
    .param p2, "accessOrder"    # Z

    .line 99
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;-><init>(I)V

    .line 100
    iput-boolean p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    .line 101
    return-void
.end method

.method public static create()Lcom/google/common/collect/CompactLinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashMap;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method private getPredecessor(I)I
    .locals 3
    .param p1, "entry"    # I

    .line 131
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    const/16 v0, 0x20

    ushr-long v0, v1, v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private setPredecessor(II)V
    .locals 8
    .param p1, "entry"    # I
    .param p2, "pred"    # I

    .line 145
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const-wide v0, -0x100000000L

    .line 146
    .local v0, "predMask":J
    iget-object v2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v3, v2, p1

    not-long v5, v0

    and-long/2addr v3, v5

    add-int/lit8 v5, p2, 0x1

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 147
    return-void
.end method

.method private setSucceeds(II)V
    .locals 1
    .param p1, "pred"    # I
    .param p2, "succ"    # I

    .line 150
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 151
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSuccessor(II)V

    .line 156
    :goto_0
    if-ne p2, v0, :cond_1

    .line 157
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    goto :goto_1

    .line 159
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setPredecessor(II)V

    .line 161
    :goto_1
    return-void
.end method

.method private setSuccessor(II)V
    .locals 7
    .param p1, "entry"    # I
    .param p2, "succ"    # I

    .line 140
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const-wide v0, 0xffffffffL

    .line 141
    .local v0, "succMask":J
    iget-object v2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v3, v2, p1

    not-long v5, v0

    and-long/2addr v3, v5

    add-int/lit8 v5, p2, 0x1

    int-to-long v5, v5

    and-long/2addr v5, v0

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 142
    return-void
.end method


# virtual methods
.method accessEntry(I)V
    .locals 2
    .param p1, "index"    # I

    .line 172
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 176
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 177
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 178
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->incrementModCount()V

    .line 180
    :cond_0
    return-void
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 208
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

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

    .line 112
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->allocArrays()I

    move-result v0

    .line 113
    .local v0, "expectedSize":I
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 114
    return v0
.end method

.method public clear()V
    .locals 5

    .line 213
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 217
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 218
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    if-eqz v0, :cond_1

    .line 219
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 221
    :cond_1
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    .line 222
    return-void
.end method

.method convertToHashFloodingResistantImplementation()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->convertToHashFloodingResistantImplementation()Ljava/util/Map;

    move-result-object v0

    .line 126
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 127
    return-object v0
.end method

.method createHashFloodingResistantDelegate(I)Ljava/util/Map;
    .locals 3
    .param p1, "tableSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-boolean v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method

.method firstEntryIndex()I
    .locals 1

    .line 203
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    return v0
.end method

.method getSuccessor(I)I
    .locals 3
    .param p1, "entry"    # I

    .line 136
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    long-to-int v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method init(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .line 105
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    .line 106
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 107
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 108
    return-void
.end method

.method insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4, "hash"    # I
    .param p5, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-super/range {p0 .. p5}, Lcom/google/common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 166
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 167
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 168
    return-void
.end method

.method moveLastEntry(II)V
    .locals 4
    .param p1, "dstIndex"    # I
    .param p2, "mask"    # I

    .line 184
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 185
    .local v0, "srcIndex":I
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(II)V

    .line 187
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 188
    if-ge p1, v0, :cond_0

    .line 189
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 193
    return-void
.end method

.method resizeEntries(I)V
    .locals 1
    .param p1, "newCapacity"    # I

    .line 197
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 198
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 199
    return-void
.end method
