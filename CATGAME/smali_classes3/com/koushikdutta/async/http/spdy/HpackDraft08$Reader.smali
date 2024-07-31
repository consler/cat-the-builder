.class final Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;
.super Ljava/lang/Object;
.source "HpackDraft08.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/HpackDraft08;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final emittedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field emittedReferencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

.field headerCount:I

.field headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

.field headerTableByteCount:I

.field private maxHeaderTableByteCount:I

.field private maxHeaderTableByteCountSetting:I

.field nextHeaderIndex:I

.field referencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

.field private final source:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "maxHeaderTableByteCountSetting"    # I

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedHeaders:Ljava/util/List;

    .line 114
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->source:Lcom/koushikdutta/async/ByteBufferList;

    .line 119
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/koushikdutta/async/http/spdy/Header;

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    .line 121
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->nextHeaderIndex:I

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerCount:I

    .line 128
    new-instance v1, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->referencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    .line 133
    new-instance v1, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedReferencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    .line 134
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTableByteCount:I

    .line 137
    iput p1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->maxHeaderTableByteCountSetting:I

    .line 138
    iput p1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->maxHeaderTableByteCount:I

    .line 139
    return-void
.end method

.method private adjustHeaderTableByteCount()V
    .locals 2

    .line 163
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->maxHeaderTableByteCount:I

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTableByteCount:I

    if-ge v0, v1, :cond_1

    .line 164
    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->clearHeaderTable()V

    goto :goto_0

    .line 167
    :cond_0
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->evictToRecoverBytes(I)I

    .line 170
    :cond_1
    :goto_0
    return-void
.end method

.method private clearHeaderTable()V
    .locals 2

    .line 173
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->clearReferenceSet()V

    .line 174
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->nextHeaderIndex:I

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerCount:I

    .line 177
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTableByteCount:I

    .line 178
    return-void
.end method

.method private clearReferenceSet()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->referencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->clear()V

    .line 244
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedReferencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->clear()V

    .line 245
    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 5
    .param p1, "bytesToRecover"    # I

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 188
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 189
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTableByteCount:I

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTableByteCount:I

    .line 190
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerCount:I

    .line 191
    add-int/lit8 v0, v0, 0x1

    .line 187
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 193
    .end local v1    # "j":I
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->referencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->shiftLeft(I)V

    .line 194
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedReferencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->shiftLeft(I)V

    .line 195
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    iget v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->nextHeaderIndex:I

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v4, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerCount:I

    invoke-static {v1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->nextHeaderIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->nextHeaderIndex:I

    .line 199
    :cond_1
    return v0
.end method

.method private getName(I)Lcom/koushikdutta/async/http/spdy/ByteString;
    .locals 2
    .param p1, "index"    # I

    .line 319
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/HpackDraft08;->access$000()[Lcom/koushikdutta/async/http/spdy/Header;

    move-result-object v0

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerCount:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/Header;->name:Lcom/koushikdutta/async/http/spdy/ByteString;

    return-object v0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTableIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/Header;->name:Lcom/koushikdutta/async/http/spdy/ByteString;

    return-object v0
.end method

.method private headerTableIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 290
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private insertIntoHeaderTable(ILcom/koushikdutta/async/http/spdy/Header;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "entry"    # Lcom/koushikdutta/async/http/spdy/Header;

    .line 334
    iget v0, p2, Lcom/koushikdutta/async/http/spdy/Header;->hpackSize:I

    .line 335
    .local v0, "delta":I
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 336
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTableIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Header;->hpackSize:I

    sub-int/2addr v0, v2

    .line 340
    :cond_0
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->maxHeaderTableByteCount:I

    if-le v0, v2, :cond_1

    .line 341
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->clearHeaderTable()V

    .line 343
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    return-void

    .line 348
    :cond_1
    iget v3, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTableByteCount:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 349
    .local v3, "bytesToRecover":I
    invoke-direct {p0, v3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->evictToRecoverBytes(I)I

    move-result v2

    .line 351
    .local v2, "entriesEvicted":I
    if-ne p1, v1, :cond_4

    .line 352
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v5, v4

    if-le v1, v5, :cond_3

    .line 353
    array-length v1, v4

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/koushikdutta/async/http/spdy/Header;

    .line 354
    .local v1, "doubled":[Lcom/koushikdutta/async/http/spdy/Header;
    const/4 v5, 0x0

    array-length v6, v4

    array-length v7, v4

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    array-length v4, v1

    const/16 v5, 0x40

    if-ne v4, v5, :cond_2

    .line 356
    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->referencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    check-cast v4, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->toVariableCapacity()Lcom/koushikdutta/async/http/spdy/BitArray;

    move-result-object v4

    iput-object v4, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->referencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    .line 357
    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedReferencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    check-cast v4, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;

    .line 358
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->toVariableCapacity()Lcom/koushikdutta/async/http/spdy/BitArray;

    move-result-object v4

    iput-object v4, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedReferencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    .line 360
    :cond_2
    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->referencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v5, v5

    invoke-interface {v4, v5}, Lcom/koushikdutta/async/http/spdy/BitArray;->shiftLeft(I)V

    .line 361
    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedReferencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v5, v5

    invoke-interface {v4, v5}, Lcom/koushikdutta/async/http/spdy/BitArray;->shiftLeft(I)V

    .line 362
    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->nextHeaderIndex:I

    .line 363
    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    .line 365
    .end local v1    # "doubled":[Lcom/koushikdutta/async/http/spdy/Header;
    :cond_3
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->nextHeaderIndex:I

    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->nextHeaderIndex:I

    move p1, v1

    .line 366
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->referencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1, p1}, Lcom/koushikdutta/async/http/spdy/BitArray;->set(I)V

    .line 367
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    aput-object p2, v1, p1

    .line 368
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerCount:I

    goto :goto_0

    .line 370
    :cond_4
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTableIndex(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 371
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->referencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1, p1}, Lcom/koushikdutta/async/http/spdy/BitArray;->set(I)V

    .line 372
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    aput-object p2, v1, p1

    .line 374
    :goto_0
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTableByteCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTableByteCount:I

    .line 375
    return-void
.end method

.method private isStaticHeader(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 327
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerCount:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->source:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerCount:I

    sub-int/2addr p1, v0

    .line 269
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/HpackDraft08;->access$000()[Lcom/koushikdutta/async/http/spdy/Header;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    .line 272
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/HpackDraft08;->access$000()[Lcom/koushikdutta/async/http/spdy/Header;

    move-result-object v0

    aget-object v0, v0, p1

    .line 273
    .local v0, "staticEntry":Lcom/koushikdutta/async/http/spdy/Header;
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->maxHeaderTableByteCount:I

    if-nez v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->insertIntoHeaderTable(ILcom/koushikdutta/async/http/spdy/Header;)V

    .line 278
    .end local v0    # "staticEntry":Lcom/koushikdutta/async/http/spdy/Header;
    :goto_0
    goto :goto_1

    .line 270
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_2
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTableIndex(I)I

    move-result v0

    .line 280
    .local v0, "headerTableIndex":I
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->referencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 281
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedHeaders:Ljava/util/List;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedReferencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->set(I)V

    .line 284
    :cond_3
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->referencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->toggle(I)V

    .line 286
    .end local v0    # "headerTableIndex":I
    :goto_1
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .locals 4
    .param p1, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->getName(I)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    .line 308
    .local v0, "name":Lcom/koushikdutta/async/http/spdy/ByteString;
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readByteString()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v1

    .line 309
    .local v1, "value":Lcom/koushikdutta/async/http/spdy/ByteString;
    new-instance v2, Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {v2, v0, v1}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    const/4 v3, -0x1

    invoke-direct {p0, v3, v2}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->insertIntoHeaderTable(ILcom/koushikdutta/async/http/spdy/Header;)V

    .line 310
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readByteString()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08;->access$100(Lcom/koushikdutta/async/http/spdy/ByteString;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    .line 314
    .local v0, "name":Lcom/koushikdutta/async/http/spdy/ByteString;
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readByteString()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v1

    .line 315
    .local v1, "value":Lcom/koushikdutta/async/http/spdy/ByteString;
    new-instance v2, Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {v2, v0, v1}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    const/4 v3, -0x1

    invoke-direct {p0, v3, v2}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->insertIntoHeaderTable(ILcom/koushikdutta/async/http/spdy/Header;)V

    .line 316
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->getName(I)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    .line 295
    .local v0, "name":Lcom/koushikdutta/async/http/spdy/ByteString;
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readByteString()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v1

    .line 296
    .local v1, "value":Lcom/koushikdutta/async/http/spdy/ByteString;
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedHeaders:Ljava/util/List;

    new-instance v3, Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readByteString()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08;->access$100(Lcom/koushikdutta/async/http/spdy/ByteString;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    .line 301
    .local v0, "name":Lcom/koushikdutta/async/http/spdy/ByteString;
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readByteString()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v1

    .line 302
    .local v1, "value":Lcom/koushikdutta/async/http/spdy/ByteString;
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedHeaders:Ljava/util/List;

    new-instance v3, Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method


# virtual methods
.method emitReferenceSet()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->nextHeaderIndex:I

    if-eq v0, v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->referencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedReferencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedHeaders:Ljava/util/List;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->headerTable:[Lcom/koushikdutta/async/http/spdy/Header;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 253
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method getAndReset()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedHeaders:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 261
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 262
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->emittedReferencedHeaders:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1}, Lcom/koushikdutta/async/http/spdy/BitArray;->clear()V

    .line 263
    return-object v0
.end method

.method maxHeaderTableByteCount()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->maxHeaderTableByteCount:I

    return v0
.end method

.method maxHeaderTableByteCountSetting(I)V
    .locals 0
    .param p1, "newMaxHeaderTableByteCountSetting"    # I

    .line 157
    iput p1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->maxHeaderTableByteCountSetting:I

    .line 158
    iput p1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->maxHeaderTableByteCount:I

    .line 159
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->adjustHeaderTableByteCount()V

    .line 160
    return-void
.end method

.method readByteString()Lcom/koushikdutta/async/http/spdy/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readByte()I

    move-result v0

    .line 408
    .local v0, "firstByte":I
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 409
    .local v1, "huffmanDecode":Z
    :goto_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readInt(II)I

    move-result v2

    .line 411
    .local v2, "length":I
    if-eqz v1, :cond_1

    .line 412
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Huffman;->get()Lcom/koushikdutta/async/http/spdy/Huffman;

    move-result-object v3

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->source:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4, v2}, Lcom/koushikdutta/async/ByteBufferList;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/spdy/Huffman;->decode([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/koushikdutta/async/http/spdy/ByteString;->of([B)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v3

    return-object v3

    .line 414
    :cond_1
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->source:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v3, v2}, Lcom/koushikdutta/async/ByteBufferList;->getBytes(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/koushikdutta/async/http/spdy/ByteString;->of([B)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v3

    return-object v3
.end method

.method readHeaders()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->source:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 209
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->source:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 210
    .local v0, "b":I
    const/16 v1, 0x80

    if-eq v0, v1, :cond_9

    .line 212
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_0

    .line 213
    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readInt(II)I

    move-result v1

    .line 214
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readIndexedHeader(I)V

    .line 215
    .end local v1    # "index":I
    goto/16 :goto_2

    :cond_0
    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto/16 :goto_2

    .line 217
    :cond_1
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_2

    .line 218
    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readInt(II)I

    move-result v1

    .line 219
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    .line 220
    .end local v1    # "index":I
    goto :goto_2

    :cond_2
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    const/16 v3, 0xf

    const/16 v4, 0x10

    if-ne v1, v2, :cond_6

    .line 221
    and-int/lit8 v1, v0, 0x10

    if-ne v1, v4, :cond_4

    .line 222
    and-int/lit8 v1, v0, 0xf

    if-nez v1, :cond_3

    .line 224
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->clearReferenceSet()V

    goto :goto_2

    .line 223
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid header table state change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_4
    invoke-virtual {p0, v0, v3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readInt(II)I

    move-result v1

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->maxHeaderTableByteCount:I

    .line 227
    if-ltz v1, :cond_5

    iget v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->maxHeaderTableByteCountSetting:I

    if-gt v1, v2, :cond_5

    .line 231
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->adjustHeaderTableByteCount()V

    goto :goto_2

    .line 229
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid header table byte count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->maxHeaderTableByteCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_6
    if-eq v0, v4, :cond_8

    if-nez v0, :cond_7

    goto :goto_1

    .line 236
    :cond_7
    invoke-virtual {p0, v0, v3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readInt(II)I

    move-result v1

    .line 237
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto :goto_2

    .line 234
    .end local v1    # "index":I
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    .line 239
    .end local v0    # "b":I
    :goto_2
    goto/16 :goto_0

    .line 211
    .restart local v0    # "b":I
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "index == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    .end local v0    # "b":I
    :cond_a
    return-void
.end method

.method readInt(II)I
    .locals 5
    .param p1, "firstByte"    # I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    and-int v0, p1, p2

    .line 383
    .local v0, "prefix":I
    if-ge v0, p2, :cond_0

    .line 384
    return v0

    .line 388
    :cond_0
    move v1, p2

    .line 389
    .local v1, "result":I
    const/4 v2, 0x0

    .line 391
    .local v2, "shift":I
    :goto_0
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->readByte()I

    move-result v3

    .line 392
    .local v3, "b":I
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_1

    .line 393
    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v2

    add-int/2addr v1, v4

    .line 394
    add-int/lit8 v2, v2, 0x7

    .line 399
    .end local v3    # "b":I
    goto :goto_0

    .line 396
    .restart local v3    # "b":I
    :cond_1
    shl-int v4, v3, v2

    add-int/2addr v1, v4

    .line 397
    nop

    .line 400
    .end local v3    # "b":I
    return v1
.end method

.method public refill(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 142
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->source:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 143
    return-void
.end method
