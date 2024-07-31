.class public Lcom/badlogic/gdx/utils/compression/lzma/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;,
        Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;,
        Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;,
        Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;
    }
.end annotation


# static fields
.field public static final EMatchFinderTypeBT2:I = 0x0

.field public static final EMatchFinderTypeBT4:I = 0x1

.field static g_FastPos:[B = null

.field static final kDefaultDictionaryLogSize:I = 0x16

.field static final kIfinityPrice:I = 0xfffffff

.field static final kNumFastBytesDefault:I = 0x20

.field public static final kNumLenSpecSymbols:I = 0x10

.field static final kNumOpts:I = 0x1000

.field public static final kPropSize:I = 0x5


# instance fields
.field _additionalOffset:I

.field _alignPriceCount:I

.field _alignPrices:[I

.field _dictionarySize:I

.field _dictionarySizePrev:I

.field _distTableSize:I

.field _distancesPrices:[I

.field _finished:Z

.field _inStream:Ljava/io/InputStream;

.field _isMatch:[S

.field _isRep:[S

.field _isRep0Long:[S

.field _isRepG0:[S

.field _isRepG1:[S

.field _isRepG2:[S

.field _lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

.field _literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

.field _longestMatchLength:I

.field _longestMatchWasFound:Z

.field _matchDistances:[I

.field _matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

.field _matchFinderType:I

.field _matchPriceCount:I

.field _needReleaseMFStream:Z

.field _numDistancePairs:I

.field _numFastBytes:I

.field _numFastBytesPrev:I

.field _numLiteralContextBits:I

.field _numLiteralPosStateBits:I

.field _optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

.field _optimumCurrentIndex:I

.field _optimumEndIndex:I

.field _posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field _posEncoders:[S

.field _posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field _posSlotPrices:[I

.field _posStateBits:I

.field _posStateMask:I

.field _previousByte:B

.field _rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

.field _repDistances:[I

.field _repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

.field _state:I

.field _writeEndMark:Z

.field backRes:I

.field finished:[Z

.field nowPos64:J

.field processedInSize:[J

.field processedOutSize:[J

.field properties:[B

.field repLens:[I

.field reps:[I

.field tempPrices:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 30
    const/16 v0, 0x800

    new-array v0, v0, [B

    sput-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    .line 33
    const/16 v1, 0x16

    .line 34
    .local v1, "kFastSlots":I
    const/4 v2, 0x2

    .line 35
    .local v2, "c":I
    const/4 v3, 0x0

    aput-byte v3, v0, v3

    .line 36
    const/4 v3, 0x1

    aput-byte v3, v0, v3

    .line 37
    const/4 v0, 0x2

    .local v0, "slotFast":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 38
    shr-int/lit8 v4, v0, 0x1

    sub-int/2addr v4, v3

    shl-int v4, v3, v4

    .line 39
    .local v4, "k":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 40
    sget-object v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    int-to-byte v7, v0

    aput-byte v7, v6, v2

    .line 39
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    .end local v4    # "k":I
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "slotFast":I
    .end local v1    # "kFastSlots":I
    .end local v2    # "c":I
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateInit()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 58
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    .line 285
    const/16 v1, 0x1000

    new-array v2, v1, [Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    .line 286
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    .line 287
    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    .line 289
    const/16 v2, 0xc0

    new-array v3, v2, [S

    iput-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    .line 290
    const/16 v3, 0xc

    new-array v4, v3, [S

    iput-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    .line 291
    new-array v4, v3, [S

    iput-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    .line 292
    new-array v4, v3, [S

    iput-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    .line 293
    new-array v3, v3, [S

    iput-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG2:[S

    .line 294
    new-array v2, v2, [S

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    .line 296
    new-array v2, v0, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    .line 298
    const/16 v2, 0x72

    new-array v2, v2, [S

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posEncoders:[S

    .line 299
    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    .line 301
    new-instance v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    .line 302
    new-instance v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    .line 304
    new-instance v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    .line 306
    const/16 v2, 0x224

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    .line 308
    const/16 v2, 0x20

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    .line 319
    const/16 v2, 0x100

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    .line 320
    const/16 v2, 0x200

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distancesPrices:[I

    .line 321
    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPrices:[I

    .line 324
    const/16 v2, 0x2c

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distTableSize:I

    .line 326
    const/4 v2, 0x2

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    .line 327
    const/4 v2, 0x3

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    .line 328
    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralPosStateBits:I

    .line 329
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralContextBits:I

    .line 331
    const/high16 v2, 0x400000

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    .line 332
    const/4 v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySizePrev:I

    .line 333
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytesPrev:I

    .line 339
    const/4 v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinderType:I

    .line 340
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_writeEndMark:Z

    .line 342
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    .line 486
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    .line 487
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    .line 1122
    new-array v3, v2, [J

    iput-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedInSize:[J

    .line 1123
    new-array v3, v2, [J

    iput-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedOutSize:[J

    .line 1124
    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->finished:[Z

    .line 1145
    const/4 v2, 0x5

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->properties:[B

    .line 1154
    const/16 v2, 0x80

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->tempPrices:[I

    .line 361
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 362
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    new-instance v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    invoke-direct {v4, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V

    aput-object v4, v3, v2

    .line 361
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 364
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    new-instance v3, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    aput-object v3, v2, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 365
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method static GetPosSlot(I)I
    .locals 2
    .param p0, "pos"    # I

    .line 45
    const/16 v0, 0x800

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    aget-byte v0, v0, p0

    return v0

    .line 46
    :cond_0
    const/high16 v0, 0x200000

    if-ge p0, v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0xa

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x14

    return v0

    .line 47
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0x14

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x28

    return v0
.end method

.method static GetPosSlot2(I)I
    .locals 2
    .param p0, "pos"    # I

    .line 51
    const/high16 v0, 0x20000

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0x6

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0xc

    return v0

    .line 52
    :cond_0
    const/high16 v0, 0x8000000

    if-ge p0, v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0x10

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x20

    return v0

    .line 53
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0x1a

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x34

    return v0
.end method


# virtual methods
.method Backward(I)I
    .locals 6
    .param p1, "cur"    # I

    .line 458
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumEndIndex:I

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 460
    .local v0, "posMem":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 462
    .local v1, "backMem":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsChar()V

    .line 464
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v2, v2, v0

    add-int/lit8 v4, v0, -0x1

    iput v4, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 465
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    if-eqz v2, :cond_0

    .line 466
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v4, v0, -0x1

    aget-object v2, v2, v4

    iput-boolean v3, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 467
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v2, v4

    aget-object v2, v2, p1

    iget v2, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    iput v2, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 468
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v2, v4

    aget-object v2, v2, p1

    iget v2, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    iput v2, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 471
    :cond_0
    move v2, v0

    .line 472
    .local v2, "posPrev":I
    move v4, v1

    .line 474
    .local v4, "backCur":I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v5, v5, v2

    iget v1, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 475
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v5, v5, v2

    iget v0, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 477
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v5, v5, v2

    iput v4, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 478
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v5, v5, v2

    iput p1, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 479
    move p1, v2

    .line 480
    .end local v2    # "posPrev":I
    .end local v4    # "backCur":I
    if-gtz p1, :cond_1

    .line 481
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 482
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    .line 483
    return v2

    .line 480
    :cond_1
    goto :goto_0
.end method

.method BaseInit()V
    .locals 3

    .line 61
    invoke-static {}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateInit()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 62
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aput v0, v2, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method ChangePair(II)Z
    .locals 3
    .param p1, "smallDist"    # I
    .param p2, "bigDist"    # I

    .line 917
    const/4 v0, 0x7

    .line 918
    .local v0, "kDif":I
    rsub-int/lit8 v1, v0, 0x20

    const/4 v2, 0x1

    shl-int v1, v2, v1

    if-ge p1, v1, :cond_0

    shl-int v1, p1, v0

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public Code(Ljava/io/InputStream;Ljava/io/OutputStream;JJLcom/badlogic/gdx/utils/compression/ICodeProgress;)V
    .locals 6
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .param p3, "inSize"    # J
    .param p5, "outSize"    # J
    .param p7, "progress"    # Lcom/badlogic/gdx/utils/compression/ICodeProgress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    .line 1130
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetStreams(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V

    .line 1133
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedInSize:[J

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedOutSize:[J

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->finished:[Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->CodeOneBlock([J[J[Z)V

    .line 1134
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->finished:[Z

    aget-boolean v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1140
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseStreams()V

    .line 1134
    return-void

    .line 1135
    :cond_1
    if-eqz p7, :cond_0

    .line 1136
    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedInSize:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedOutSize:[J

    aget-wide v4, v1, v0

    invoke-interface {p7, v2, v3, v4, v5}, Lcom/badlogic/gdx/utils/compression/ICodeProgress;->SetProgress(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1140
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseStreams()V

    throw v0
.end method

.method public CodeOneBlock([J[J[Z)V
    .locals 17
    .param p1, "inSize"    # [J
    .param p2, "outSize"    # [J
    .param p3, "finished"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 946
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, p1, v1

    .line 947
    aput-wide v2, p2, v1

    .line 948
    const/4 v4, 0x1

    aput-boolean v4, p3, v1

    .line 950
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_inStream:Ljava/io/InputStream;

    if-eqz v5, :cond_0

    .line 951
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->SetStream(Ljava/io/InputStream;)V

    .line 952
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->Init()V

    .line 953
    iput-boolean v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    .line 954
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_inStream:Ljava/io/InputStream;

    .line 957
    :cond_0
    iget-boolean v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_finished:Z

    if-eqz v5, :cond_1

    return-void

    .line 958
    :cond_1
    iput-boolean v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_finished:Z

    .line 960
    iget-wide v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    .line 961
    .local v5, "progressPosValuePrev":J
    iget-wide v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    cmp-long v2, v7, v2

    const/4 v3, 0x4

    if-nez v2, :cond_3

    .line 962
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v2

    if-nez v2, :cond_2

    .line 963
    iget-wide v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Flush(I)V

    .line 964
    return-void

    .line 967
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReadMatchDistances()I

    .line 968
    iget-wide v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v2, v7

    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v2, v7

    .line 969
    .local v2, "posState":I
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    shl-int/2addr v9, v3

    add-int/2addr v9, v2

    invoke-virtual {v7, v8, v9, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 970
    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v7}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v7

    iput v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 971
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    rsub-int/lit8 v8, v8, 0x0

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v7

    .line 972
    .local v7, "curByte":B
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget-wide v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v9, v9

    iget-byte v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v8

    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v8, v9, v7}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;B)V

    .line 973
    iput-byte v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    .line 974
    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    sub-int/2addr v8, v4

    iput v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    .line 975
    iget-wide v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    .line 977
    .end local v2    # "posState":I
    .end local v7    # "curByte":B
    :cond_3
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v2

    if-nez v2, :cond_4

    .line 978
    iget-wide v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Flush(I)V

    .line 979
    return-void

    .line 983
    :cond_4
    :goto_0
    iget-wide v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v2, v7

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetOptimum(I)I

    move-result v2

    .line 984
    .local v2, "len":I
    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 985
    .local v7, "pos":I
    iget-wide v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v8, v8

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v8, v9

    .line 986
    .local v8, "posState":I
    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    shl-int/2addr v9, v3

    add-int/2addr v9, v8

    .line 987
    .local v9, "complexState":I
    if-ne v2, v4, :cond_6

    const/4 v10, -0x1

    if-ne v7, v10, :cond_6

    .line 988
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    invoke-virtual {v10, v11, v9, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 989
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    rsub-int/lit8 v11, v11, 0x0

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v10

    .line 990
    .local v10, "curByte":B
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget-wide v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v12, v12

    iget-byte v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    invoke-virtual {v11, v12, v13}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v11

    .line 991
    .local v11, "subCoder":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;
    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v12}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateIsCharState(I)Z

    move-result v12

    if-nez v12, :cond_5

    .line 992
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aget v13, v13, v1

    rsub-int/lit8 v13, v13, 0x0

    sub-int/2addr v13, v4

    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v12

    .line 993
    .local v12, "matchByte":B
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v11, v13, v12, v10}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->EncodeMatched(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;BB)V

    .line 994
    .end local v12    # "matchByte":B
    goto :goto_1

    .line 995
    :cond_5
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v11, v12, v10}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;B)V

    .line 996
    :goto_1
    iput-byte v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    .line 997
    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v12}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v12

    iput v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 998
    .end local v10    # "curByte":B
    .end local v11    # "subCoder":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;
    goto/16 :goto_8

    .line 999
    :cond_6
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    invoke-virtual {v10, v11, v9, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1000
    if-ge v7, v3, :cond_d

    .line 1001
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v10, v11, v12, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1002
    if-nez v7, :cond_8

    .line 1003
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v10, v11, v12, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1004
    if-ne v2, v4, :cond_7

    .line 1005
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    invoke-virtual {v10, v11, v9, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    goto :goto_2

    .line 1007
    :cond_7
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    invoke-virtual {v10, v11, v9, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    goto :goto_2

    .line 1009
    :cond_8
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v10, v11, v12, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1010
    if-ne v7, v4, :cond_9

    .line 1011
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v10, v11, v12, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    goto :goto_2

    .line 1013
    :cond_9
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v10, v11, v12, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1014
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG2:[S

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    add-int/lit8 v13, v7, -0x2

    invoke-virtual {v10, v11, v12, v13}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1017
    :goto_2
    if-ne v2, v4, :cond_a

    .line 1018
    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v10}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateShortRep(I)I

    move-result v10

    iput v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    goto :goto_3

    .line 1020
    :cond_a
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    add-int/lit8 v12, v2, -0x2

    invoke-virtual {v10, v11, v12, v8}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V

    .line 1021
    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v10}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v10

    iput v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 1023
    :goto_3
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aget v10, v10, v7

    .line 1024
    .local v10, "distance":I
    if-eqz v7, :cond_c

    .line 1025
    move v11, v7

    .local v11, "i":I
    :goto_4
    if-lt v11, v4, :cond_b

    .line 1026
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    add-int/lit8 v13, v11, -0x1

    aget v13, v12, v13

    aput v13, v12, v11

    .line 1025
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 1027
    .end local v11    # "i":I
    :cond_b
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aput v10, v11, v1

    .line 1029
    .end local v10    # "distance":I
    :cond_c
    goto/16 :goto_7

    .line 1030
    :cond_d
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v10, v11, v12, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1031
    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v10}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v10

    iput v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 1032
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    add-int/lit8 v12, v2, -0x2

    invoke-virtual {v10, v11, v12, v8}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V

    .line 1033
    add-int/lit8 v7, v7, -0x4

    .line 1034
    invoke-static {v7}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosSlot(I)I

    move-result v10

    .line 1035
    .local v10, "posSlot":I
    invoke-static {v2}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->GetLenToPosState(I)I

    move-result v11

    .line 1036
    .local v11, "lenToPosState":I
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v12, v12, v11

    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v12, v13, v10}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    .line 1038
    if-lt v10, v3, :cond_f

    .line 1039
    shr-int/lit8 v12, v10, 0x1

    sub-int/2addr v12, v4

    .line 1040
    .local v12, "footerBits":I
    and-int/lit8 v13, v10, 0x1

    or-int/lit8 v13, v13, 0x2

    shl-int/2addr v13, v12

    .line 1041
    .local v13, "baseVal":I
    sub-int v14, v7, v13

    .line 1043
    .local v14, "posReduced":I
    const/16 v15, 0xe

    if-ge v10, v15, :cond_e

    .line 1044
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posEncoders:[S

    sub-int v16, v13, v10

    add-int/lit8 v3, v16, -0x1

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-static {v15, v3, v1, v12, v14}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseEncode([SILcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V

    goto :goto_5

    .line 1046
    :cond_e
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    shr-int/lit8 v3, v14, 0x4

    add-int/lit8 v15, v12, -0x4

    invoke-virtual {v1, v3, v15}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->EncodeDirectBits(II)V

    .line 1047
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    and-int/lit8 v15, v14, 0xf

    invoke-virtual {v1, v3, v15}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseEncode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    .line 1048
    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPriceCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPriceCount:I

    .line 1051
    .end local v12    # "footerBits":I
    .end local v13    # "baseVal":I
    .end local v14    # "posReduced":I
    :cond_f
    :goto_5
    move v1, v7

    .line 1052
    .local v1, "distance":I
    const/4 v3, 0x3

    .local v3, "i":I
    :goto_6
    if-lt v3, v4, :cond_10

    .line 1053
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    add-int/lit8 v13, v3, -0x1

    aget v13, v12, v13

    aput v13, v12, v3

    .line 1052
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 1054
    .end local v3    # "i":I
    :cond_10
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    const/4 v12, 0x0

    aput v1, v3, v12

    .line 1055
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchPriceCount:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchPriceCount:I

    .line 1057
    .end local v1    # "distance":I
    .end local v10    # "posSlot":I
    .end local v11    # "lenToPosState":I
    :goto_7
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    add-int/lit8 v3, v2, -0x1

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    sub-int/2addr v3, v10

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v1

    iput-byte v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    .line 1059
    :goto_8
    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    .line 1060
    iget-wide v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    int-to-long v12, v2

    add-long/2addr v10, v12

    iput-wide v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    .line 1061
    if-nez v1, :cond_15

    .line 1063
    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchPriceCount:I

    const/16 v3, 0x80

    if-lt v1, v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->FillDistancesPrices()V

    .line 1064
    :cond_11
    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPriceCount:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->FillAlignPrices()V

    .line 1065
    :cond_12
    iget-wide v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    const/4 v1, 0x0

    aput-wide v10, p1, v1

    .line 1066
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetProcessedSizeAdd()J

    move-result-wide v10

    aput-wide v10, p2, v1

    .line 1067
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v1

    if-nez v1, :cond_13

    .line 1068
    iget-wide v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Flush(I)V

    .line 1069
    return-void

    .line 1072
    :cond_13
    iget-wide v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    sub-long/2addr v10, v5

    const-wide/16 v12, 0x1000

    cmp-long v1, v10, v12

    if-ltz v1, :cond_14

    .line 1073
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_finished:Z

    .line 1074
    aput-boolean v1, p3, v1

    .line 1075
    return-void

    .line 1072
    :cond_14
    const/4 v1, 0x0

    goto :goto_9

    .line 1061
    :cond_15
    const/4 v1, 0x0

    .line 1078
    .end local v2    # "len":I
    .end local v7    # "pos":I
    .end local v8    # "posState":I
    .end local v9    # "complexState":I
    :goto_9
    const/4 v3, 0x4

    goto/16 :goto_0
.end method

.method Create()V
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    if-nez v0, :cond_1

    .line 346
    new-instance v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;-><init>()V

    .line 347
    .local v0, "bt":Lcom/badlogic/gdx/utils/compression/lz/BinTree;
    const/4 v1, 0x4

    .line 348
    .local v1, "numHashBytes":I
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinderType:I

    if-nez v2, :cond_0

    const/4 v1, 0x2

    .line 349
    :cond_0
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->SetType(I)V

    .line 350
    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    .line 352
    .end local v0    # "bt":Lcom/badlogic/gdx/utils/compression/lz/BinTree;
    .end local v1    # "numHashBytes":I
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralPosStateBits:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralContextBits:I

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->Create(II)V

    .line 354
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySizePrev:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytesPrev:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-ne v0, v1, :cond_2

    return-void

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    const/16 v2, 0x1000

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    const/16 v4, 0x112

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->Create(IIII)Z

    .line 356
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySizePrev:I

    .line 357
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytesPrev:I

    .line 358
    return-void
.end method

.method FillAlignPrices()V
    .locals 3

    .line 1186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1187
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPrices:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseGetPrice(I)I

    move-result v2

    aput v2, v1, v0

    .line 1186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1188
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPriceCount:I

    .line 1189
    return-void
.end method

.method FillDistancesPrices()V
    .locals 12

    .line 1158
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 1159
    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosSlot(I)I

    move-result v1

    .line 1160
    .local v1, "posSlot":I
    shr-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    .line 1161
    .local v2, "footerBits":I
    and-int/lit8 v3, v1, 0x1

    or-int/lit8 v3, v3, 0x2

    shl-int/2addr v3, v2

    .line 1162
    .local v3, "baseVal":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->tempPrices:[I

    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posEncoders:[S

    sub-int v6, v3, v1

    add-int/lit8 v6, v6, -0x1

    sub-int v7, v0, v3

    invoke-static {v5, v6, v2, v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseGetPrice([SIII)I

    move-result v5

    aput v5, v4, v0

    .line 1158
    .end local v1    # "posSlot":I
    .end local v2    # "footerBits":I
    .end local v3    # "baseVal":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1165
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "lenToPosState":I
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_5

    .line 1167
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v3, v3, v0

    .line 1169
    .local v3, "encoder":Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;
    shl-int/lit8 v4, v0, 0x6

    .line 1170
    .local v4, "st":I
    const/4 v5, 0x0

    .local v5, "posSlot":I
    :goto_2
    iget v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distTableSize:I

    if-ge v5, v6, :cond_1

    .line 1171
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    add-int v7, v4, v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->GetPrice(I)I

    move-result v8

    aput v8, v6, v7

    .line 1170
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1172
    :cond_1
    const/16 v5, 0xe

    :goto_3
    iget v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distTableSize:I

    if-ge v5, v6, :cond_2

    .line 1173
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    add-int v7, v4, v5

    aget v8, v6, v7

    shr-int/lit8 v9, v5, 0x1

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v2

    shl-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    aput v8, v6, v7

    .line 1172
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1175
    :cond_2
    mul-int/lit16 v6, v0, 0x80

    .line 1177
    .local v6, "st2":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v2, :cond_3

    .line 1178
    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distancesPrices:[I

    add-int v9, v6, v7

    iget-object v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    add-int v11, v4, v7

    aget v10, v10, v11

    aput v10, v8, v9

    .line 1177
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1179
    :cond_3
    :goto_5
    if-ge v7, v1, :cond_4

    .line 1180
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distancesPrices:[I

    add-int v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    invoke-static {v7}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosSlot(I)I

    move-result v10

    add-int/2addr v10, v4

    aget v9, v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->tempPrices:[I

    aget v10, v10, v7

    add-int/2addr v9, v10

    aput v9, v2, v8

    .line 1179
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1165
    .end local v3    # "encoder":Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;
    .end local v4    # "st":I
    .end local v5    # "posSlot":I
    .end local v6    # "st2":I
    .end local v7    # "i":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1182
    .end local v0    # "lenToPosState":I
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchPriceCount:I

    .line 1183
    return-void
.end method

.method Flush(I)V
    .locals 1
    .param p1, "nowPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseMFStream()V

    .line 940
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->WriteEndMarker(I)V

    .line 941
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->FlushData()V

    .line 942
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->FlushStream()V

    .line 943
    return-void
.end method

.method GetOptimum(I)I
    .locals 45
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumEndIndex:I

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    if-eq v2, v3, :cond_0

    .line 492
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    sub-int/2addr v2, v3

    .line 493
    .local v2, "lenRes":I
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v4, v3

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    iput v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 494
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    iput v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    .line 495
    return v2

    .line 497
    .end local v2    # "lenRes":I
    :cond_0
    const/4 v2, 0x0

    iput v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumEndIndex:I

    iput v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    .line 500
    iget-boolean v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchWasFound:Z

    if-nez v3, :cond_1

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReadMatchDistances()I

    move-result v3

    .local v3, "lenMain":I
    goto :goto_0

    .line 503
    .end local v3    # "lenMain":I
    :cond_1
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchLength:I

    .line 504
    .restart local v3    # "lenMain":I
    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchWasFound:Z

    .line 506
    :goto_0
    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numDistancePairs:I

    .line 508
    .local v4, "numDistancePairs":I
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 509
    .local v5, "numAvailableBytes":I
    const/4 v7, -0x1

    const/4 v8, 0x2

    if-ge v5, v8, :cond_2

    .line 510
    iput v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 511
    return v6

    .line 513
    :cond_2
    const/16 v9, 0x111

    if-le v5, v9, :cond_3

    const/16 v5, 0x111

    .line 515
    :cond_3
    const/4 v10, 0x0

    .line 517
    .local v10, "repMaxIndex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    const/4 v12, 0x4

    if-ge v11, v12, :cond_5

    .line 518
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aget v13, v13, v11

    aput v13, v12, v11

    .line 519
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    aget v12, v12, v11

    invoke-virtual {v14, v7, v12, v9}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v12

    aput v12, v13, v11

    .line 520
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v13, v12, v11

    aget v12, v12, v10

    if-le v13, v12, :cond_4

    move v10, v11

    .line 517
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 522
    :cond_5
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v13, v9, v10

    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-lt v13, v14, :cond_6

    .line 523
    iput v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 524
    aget v2, v9, v10

    .line 525
    .restart local v2    # "lenRes":I
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->MovePos(I)V

    .line 526
    return v2

    .line 529
    .end local v2    # "lenRes":I
    :cond_6
    if-lt v3, v14, :cond_7

    .line 530
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    add-int/lit8 v6, v4, -0x1

    aget v2, v2, v6

    add-int/2addr v2, v12

    iput v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 531
    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->MovePos(I)V

    .line 532
    return v3

    .line 535
    :cond_7
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v9

    .line 536
    .local v9, "currentByte":B
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aget v14, v14, v2

    rsub-int/lit8 v14, v14, 0x0

    sub-int/2addr v14, v6

    sub-int/2addr v14, v6

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v13

    .line 538
    .local v13, "matchByte":B
    if-ge v3, v8, :cond_8

    if-eq v9, v13, :cond_8

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v14, v14, v10

    if-ge v14, v8, :cond_8

    .line 539
    iput v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 540
    return v6

    .line 543
    :cond_8
    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v14, v14, v2

    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    iput v15, v14, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    .line 545
    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v14, v1

    .line 547
    .local v14, "posState":I
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v15, v15, v6

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    shl-int/2addr v2, v12

    add-int/2addr v2, v14

    aget-short v2, v7, v2

    .line 548
    invoke-static {v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v2

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget-byte v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    .line 549
    invoke-virtual {v7, v1, v8}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v7

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v8}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateIsCharState(I)Z

    move-result v8

    xor-int/2addr v8, v6

    invoke-virtual {v7, v8, v13, v9}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v7

    add-int/2addr v2, v7

    iput v2, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 550
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsChar()V

    .line 552
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    shl-int/2addr v7, v12

    add-int/2addr v7, v14

    aget-short v2, v2, v7

    .line 553
    invoke-static {v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v2

    .line 554
    .local v2, "matchPrice":I
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    aget-short v7, v7, v8

    invoke-static {v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v7

    add-int/2addr v7, v2

    .line 556
    .local v7, "repMatchPrice":I
    if-ne v13, v9, :cond_9

    .line 557
    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v0, v8, v14}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepLen1Price(II)I

    move-result v8

    add-int/2addr v8, v7

    .line 558
    .local v8, "shortRepPrice":I
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v15, v15, v6

    iget v15, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v8, v15, :cond_9

    .line 559
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v15, v15, v6

    iput v8, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 560
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v15, v15, v6

    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsShortRep()V

    .line 564
    .end local v8    # "shortRepPrice":I
    :cond_9
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v15, v8, v10

    if-lt v3, v15, :cond_a

    move v8, v3

    goto :goto_2

    :cond_a
    aget v8, v8, v10

    .line 566
    .local v8, "lenEnd":I
    :goto_2
    const/4 v15, 0x2

    if-ge v8, v15, :cond_b

    .line 567
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v12, v12, v6

    iget v12, v12, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    iput v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 568
    return v6

    .line 571
    :cond_b
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v15, v15, v6

    const/4 v12, 0x0

    iput v12, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 573
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v15, v15, v12

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    aget v6, v6, v12

    iput v6, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    .line 574
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v6, v6, v12

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    iput v15, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    .line 575
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v6, v6, v12

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/16 v16, 0x2

    aget v15, v15, v16

    iput v15, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    .line 576
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v6, v6, v12

    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v15, 0x3

    aget v12, v12, v15

    iput v12, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    .line 578
    move v6, v8

    .line 580
    .local v6, "len":I
    :goto_3
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v15, v6, -0x1

    .end local v6    # "len":I
    .local v15, "len":I
    aget-object v6, v12, v6

    const v12, 0xfffffff

    iput v12, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 581
    const/4 v6, 0x2

    if-ge v15, v6, :cond_43

    .line 583
    const/4 v11, 0x0

    :goto_4
    const/4 v12, 0x4

    if-ge v11, v12, :cond_f

    .line 584
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v12, v12, v11

    .line 585
    .local v12, "repLen":I
    if-ge v12, v6, :cond_c

    move/from16 v21, v5

    goto :goto_6

    .line 586
    :cond_c
    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v0, v11, v6, v14}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPureRepPrice(III)I

    move-result v6

    add-int/2addr v6, v7

    .line 588
    .local v6, "price":I
    :goto_5
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    move/from16 v21, v5

    .end local v5    # "numAvailableBytes":I
    .local v21, "numAvailableBytes":I
    add-int/lit8 v5, v12, -0x2

    invoke-virtual {v1, v5, v14}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->GetPrice(II)I

    move-result v1

    add-int/2addr v1, v6

    .line 589
    .local v1, "curAndLenPrice":I
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v5, v5, v12

    .line 590
    .local v5, "optimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    move/from16 v22, v6

    .end local v6    # "price":I
    .local v22, "price":I
    iget v6, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v1, v6, :cond_d

    .line 591
    iput v1, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 592
    const/4 v6, 0x0

    iput v6, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 593
    iput v11, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 594
    iput-boolean v6, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 596
    .end local v1    # "curAndLenPrice":I
    .end local v5    # "optimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    :cond_d
    add-int/lit8 v12, v12, -0x1

    const/4 v1, 0x2

    if-ge v12, v1, :cond_e

    .line 583
    .end local v12    # "repLen":I
    .end local v22    # "price":I
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move/from16 v5, v21

    const/4 v6, 0x2

    const v12, 0xfffffff

    goto :goto_4

    .line 596
    .restart local v12    # "repLen":I
    .restart local v22    # "price":I
    :cond_e
    move/from16 v1, p1

    move/from16 v5, v21

    move/from16 v6, v22

    goto :goto_5

    .line 599
    .end local v12    # "repLen":I
    .end local v21    # "numAvailableBytes":I
    .end local v22    # "price":I
    .local v5, "numAvailableBytes":I
    :cond_f
    move/from16 v21, v5

    .end local v5    # "numAvailableBytes":I
    .restart local v21    # "numAvailableBytes":I
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    aget-short v1, v1, v5

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 601
    .local v1, "normalMatchPrice":I
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    const/4 v6, 0x0

    aget v12, v5, v6

    const/4 v6, 0x2

    if-lt v12, v6, :cond_10

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_7

    :cond_10
    const/4 v5, 0x2

    .line 602
    .end local v15    # "len":I
    .local v5, "len":I
    :goto_7
    if-gt v5, v3, :cond_14

    .line 603
    const/4 v6, 0x0

    .line 604
    .local v6, "offs":I
    :goto_8
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v12, v12, v6

    if-le v5, v12, :cond_11

    .line 605
    add-int/lit8 v6, v6, 0x2

    goto :goto_8

    .line 607
    :cond_11
    :goto_9
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    add-int/lit8 v15, v6, 0x1

    aget v12, v12, v15

    .line 608
    .local v12, "distance":I
    invoke-virtual {v0, v12, v5, v14}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosLenPrice(III)I

    move-result v15

    add-int/2addr v15, v1

    .line 609
    .local v15, "curAndLenPrice":I
    move/from16 v22, v1

    .end local v1    # "normalMatchPrice":I
    .local v22, "normalMatchPrice":I
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v1, v1, v5

    .line 610
    .local v1, "optimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    move/from16 v23, v2

    .end local v2    # "matchPrice":I
    .local v23, "matchPrice":I
    iget v2, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v15, v2, :cond_12

    .line 611
    iput v15, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 612
    const/4 v2, 0x0

    iput v2, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 613
    add-int/lit8 v2, v12, 0x4

    iput v2, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 614
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 616
    :cond_12
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v2, v2, v6

    if-ne v5, v2, :cond_13

    .line 617
    add-int/lit8 v6, v6, 0x2

    .line 618
    if-ne v6, v4, :cond_13

    goto :goto_a

    .line 606
    .end local v1    # "optimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    .end local v12    # "distance":I
    .end local v15    # "curAndLenPrice":I
    :cond_13
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v22

    move/from16 v2, v23

    goto :goto_9

    .line 602
    .end local v6    # "offs":I
    .end local v22    # "normalMatchPrice":I
    .end local v23    # "matchPrice":I
    .local v1, "normalMatchPrice":I
    .restart local v2    # "matchPrice":I
    :cond_14
    move/from16 v22, v1

    move/from16 v23, v2

    .line 623
    .end local v1    # "normalMatchPrice":I
    .end local v2    # "matchPrice":I
    .restart local v22    # "normalMatchPrice":I
    .restart local v23    # "matchPrice":I
    :goto_a
    const/4 v1, 0x0

    move v2, v1

    move/from16 v1, p1

    .line 626
    .end local p1    # "position":I
    .local v1, "position":I
    .local v2, "cur":I
    :goto_b
    const/4 v6, 0x1

    add-int/2addr v2, v6

    .line 627
    if-ne v2, v8, :cond_15

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Backward(I)I

    move-result v6

    return v6

    .line 628
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReadMatchDistances()I

    move-result v6

    .line 629
    .local v6, "newLen":I
    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numDistancePairs:I

    .line 630
    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-lt v6, v12, :cond_16

    .line 632
    iput v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchLength:I

    .line 633
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchWasFound:Z

    .line 634
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Backward(I)I

    move-result v12

    return v12

    .line 636
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 637
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v12, v12, v2

    iget v12, v12, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 639
    .local v12, "posPrev":I
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v15, v15, v2

    iget-boolean v15, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    if-eqz v15, :cond_19

    .line 640
    add-int/lit8 v12, v12, -0x1

    .line 641
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v15, v15, v2

    iget-boolean v15, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    if-eqz v15, :cond_18

    .line 642
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    move/from16 v24, v3

    .end local v3    # "lenMain":I
    .local v24, "lenMain":I
    aget-object v3, v15, v2

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    aget-object v3, v15, v3

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    .line 643
    .local v3, "state":I
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v15, v15, v2

    iget v15, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    move/from16 p1, v4

    const/4 v4, 0x4

    .end local v4    # "numDistancePairs":I
    .local p1, "numDistancePairs":I
    if-ge v15, v4, :cond_17

    .line 644
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v3

    goto :goto_c

    .line 646
    :cond_17
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v3

    goto :goto_c

    .line 648
    .end local v24    # "lenMain":I
    .end local p1    # "numDistancePairs":I
    .local v3, "lenMain":I
    .restart local v4    # "numDistancePairs":I
    :cond_18
    move/from16 v24, v3

    move/from16 p1, v4

    .end local v3    # "lenMain":I
    .end local v4    # "numDistancePairs":I
    .restart local v24    # "lenMain":I
    .restart local p1    # "numDistancePairs":I
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v12

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    .line 649
    .local v3, "state":I
    :goto_c
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v3

    goto :goto_d

    .line 651
    .end local v24    # "lenMain":I
    .end local p1    # "numDistancePairs":I
    .local v3, "lenMain":I
    .restart local v4    # "numDistancePairs":I
    :cond_19
    move/from16 v24, v3

    move/from16 p1, v4

    .end local v3    # "lenMain":I
    .end local v4    # "numDistancePairs":I
    .restart local v24    # "lenMain":I
    .restart local p1    # "numDistancePairs":I
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v12

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    .line 652
    .local v3, "state":I
    :goto_d
    add-int/lit8 v4, v2, -0x1

    if-ne v12, v4, :cond_1b

    .line 653
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->IsShortRep()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 654
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateShortRep(I)I

    move-result v3

    move/from16 v26, v5

    move/from16 v27, v7

    goto/16 :goto_10

    .line 656
    :cond_1a
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v3

    move/from16 v26, v5

    move/from16 v27, v7

    goto/16 :goto_10

    .line 659
    :cond_1b
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    if-eqz v4, :cond_1c

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    if-eqz v4, :cond_1c

    .line 660
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v2

    iget v12, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    .line 661
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    .line 662
    .local v4, "pos":I
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v3

    const/4 v15, 0x4

    goto :goto_e

    .line 664
    .end local v4    # "pos":I
    :cond_1c
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 665
    .restart local v4    # "pos":I
    const/4 v15, 0x4

    if-ge v4, v15, :cond_1d

    .line 666
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v3

    goto :goto_e

    .line 668
    :cond_1d
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v3

    .line 670
    :goto_e
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v15, v15, v12

    .line 671
    .local v15, "opt":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    move/from16 v25, v3

    const/4 v3, 0x4

    .end local v3    # "state":I
    .local v25, "state":I
    if-ge v4, v3, :cond_21

    .line 672
    if-nez v4, :cond_1e

    .line 673
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    move/from16 v26, v5

    .end local v5    # "len":I
    .local v26, "len":I
    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    const/16 v16, 0x0

    aput v5, v3, v16

    .line 674
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    move/from16 v27, v7

    const/4 v7, 0x1

    .end local v7    # "repMatchPrice":I
    .local v27, "repMatchPrice":I
    aput v5, v3, v7

    .line 675
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    const/16 v17, 0x2

    aput v5, v3, v17

    .line 676
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    const/16 v18, 0x3

    aput v5, v3, v18

    goto/16 :goto_f

    .line 677
    .end local v26    # "len":I
    .end local v27    # "repMatchPrice":I
    .restart local v5    # "len":I
    .restart local v7    # "repMatchPrice":I
    :cond_1e
    move/from16 v26, v5

    move/from16 v27, v7

    const/4 v7, 0x1

    .end local v5    # "len":I
    .end local v7    # "repMatchPrice":I
    .restart local v26    # "len":I
    .restart local v27    # "repMatchPrice":I
    if-ne v4, v7, :cond_1f

    .line 678
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    const/16 v16, 0x0

    aput v5, v3, v16

    .line 679
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    aput v5, v3, v7

    .line 680
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    const/4 v7, 0x2

    aput v5, v3, v7

    .line 681
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    const/16 v17, 0x3

    aput v5, v3, v17

    goto :goto_f

    .line 682
    :cond_1f
    const/4 v7, 0x2

    if-ne v4, v7, :cond_20

    .line 683
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    const/4 v7, 0x0

    aput v5, v3, v7

    .line 684
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    const/4 v7, 0x1

    aput v5, v3, v7

    .line 685
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    const/4 v7, 0x2

    aput v5, v3, v7

    .line 686
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    const/4 v7, 0x3

    aput v5, v3, v7

    goto :goto_f

    .line 688
    :cond_20
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    const/4 v7, 0x0

    aput v5, v3, v7

    .line 689
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    const/4 v7, 0x1

    aput v5, v3, v7

    .line 690
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    const/4 v7, 0x2

    aput v5, v3, v7

    .line 691
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    const/4 v7, 0x3

    aput v5, v3, v7

    goto :goto_f

    .line 694
    .end local v26    # "len":I
    .end local v27    # "repMatchPrice":I
    .restart local v5    # "len":I
    .restart local v7    # "repMatchPrice":I
    :cond_21
    move/from16 v26, v5

    move/from16 v27, v7

    .end local v5    # "len":I
    .end local v7    # "repMatchPrice":I
    .restart local v26    # "len":I
    .restart local v27    # "repMatchPrice":I
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    add-int/lit8 v5, v4, -0x4

    const/4 v7, 0x0

    aput v5, v3, v7

    .line 695
    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    const/4 v7, 0x1

    aput v5, v3, v7

    .line 696
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    const/4 v7, 0x2

    aput v5, v3, v7

    .line 697
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    const/4 v7, 0x3

    aput v5, v3, v7

    .line 700
    .end local v4    # "pos":I
    .end local v15    # "opt":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    :goto_f
    move/from16 v3, v25

    .end local v25    # "state":I
    .restart local v3    # "state":I
    :goto_10
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v2

    iput v3, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    .line 701
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v2

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    iput v5, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    .line 702
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v2

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    iput v5, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    .line 703
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v2

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x2

    aget v5, v5, v7

    iput v5, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    .line 704
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v2

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/16 v19, 0x3

    aget v5, v5, v19

    iput v5, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    .line 705
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 707
    .local v4, "curPrice":I
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v9

    .line 708
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v15, 0x0

    aget v7, v7, v15

    rsub-int/lit8 v7, v7, 0x0

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    sub-int/2addr v7, v15

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v13

    .line 710
    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int v14, v1, v5

    .line 712
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v14

    aget-short v5, v5, v7

    .line 713
    invoke-static {v5}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    move/from16 v25, v8

    .end local v8    # "lenEnd":I
    .local v25, "lenEnd":I
    const/4 v8, -0x2

    .line 715
    invoke-virtual {v15, v8}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v8

    invoke-virtual {v7, v1, v8}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v7

    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateIsCharState(I)Z

    move-result v8

    const/4 v15, 0x1

    xor-int/2addr v8, v15

    invoke-virtual {v7, v8, v13, v9}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v7

    add-int/2addr v5, v7

    .line 718
    .local v5, "curAnd1Price":I
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v8, v2, 0x1

    aget-object v7, v7, v8

    .line 720
    .local v7, "nextOptimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    const/4 v8, 0x0

    .line 721
    .local v8, "nextIsChar":Z
    iget v15, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v5, v15, :cond_22

    .line 722
    iput v5, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 723
    iput v2, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 724
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsChar()V

    .line 725
    const/4 v8, 0x1

    .line 728
    :cond_22
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v28, v3, 0x4

    add-int v28, v28, v14

    aget-short v15, v15, v28

    .line 729
    invoke-static {v15}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v15

    add-int v23, v4, v15

    .line 731
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    aget-short v15, v15, v3

    invoke-static {v15}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v15

    add-int v15, v23, v15

    .line 733
    .end local v27    # "repMatchPrice":I
    .local v15, "repMatchPrice":I
    if-ne v13, v9, :cond_25

    move/from16 v27, v4

    .end local v4    # "curPrice":I
    .local v27, "curPrice":I
    iget v4, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    if-ge v4, v2, :cond_24

    iget v4, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    if-eqz v4, :cond_23

    goto :goto_11

    :cond_23
    move/from16 v28, v8

    goto :goto_12

    .line 734
    :cond_24
    :goto_11
    invoke-virtual {v0, v3, v14}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepLen1Price(II)I

    move-result v4

    add-int/2addr v4, v15

    .line 735
    .local v4, "shortRepPrice":I
    move/from16 v28, v8

    .end local v8    # "nextIsChar":Z
    .local v28, "nextIsChar":Z
    iget v8, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-gt v4, v8, :cond_26

    .line 736
    iput v4, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 737
    iput v2, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 738
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsShortRep()V

    .line 739
    const/4 v8, 0x1

    .end local v28    # "nextIsChar":Z
    .restart local v8    # "nextIsChar":Z
    goto :goto_13

    .line 733
    .end local v27    # "curPrice":I
    .local v4, "curPrice":I
    :cond_25
    move/from16 v27, v4

    move/from16 v28, v8

    .line 743
    .end local v4    # "curPrice":I
    .end local v8    # "nextIsChar":Z
    .restart local v27    # "curPrice":I
    .restart local v28    # "nextIsChar":Z
    :cond_26
    :goto_12
    move/from16 v8, v28

    .end local v28    # "nextIsChar":Z
    .restart local v8    # "nextIsChar":Z
    :goto_13
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 744
    .local v4, "numAvailableBytesFull":I
    move-object/from16 v28, v7

    .end local v7    # "nextOptimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    .local v28, "nextOptimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    rsub-int v7, v2, 0xfff

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 745
    move v7, v4

    .line 747
    .end local v21    # "numAvailableBytes":I
    .local v7, "numAvailableBytes":I
    move/from16 v29, v10

    const/4 v10, 0x2

    .end local v10    # "repMaxIndex":I
    .local v29, "repMaxIndex":I
    if-ge v7, v10, :cond_27

    move/from16 v4, p1

    move/from16 v21, v7

    move v7, v15

    move/from16 v3, v24

    move/from16 v8, v25

    move/from16 v5, v26

    move/from16 v10, v29

    goto/16 :goto_b

    .line 748
    :cond_27
    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-le v7, v10, :cond_28

    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    .line 749
    :cond_28
    if-nez v8, :cond_2c

    if-eq v13, v9, :cond_2c

    .line 751
    add-int/lit8 v10, v4, -0x1

    move/from16 v21, v8

    .end local v8    # "nextIsChar":Z
    .local v21, "nextIsChar":Z
    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 752
    .local v8, "t":I
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    move/from16 v30, v9

    .end local v9    # "currentByte":B
    .local v30, "currentByte":B
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    move/from16 v31, v11

    const/4 v11, 0x0

    .end local v11    # "i":I
    .local v31, "i":I
    aget v9, v9, v11

    invoke-virtual {v10, v11, v9, v8}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v9

    .line 753
    .local v9, "lenTest2":I
    const/4 v10, 0x2

    if-lt v9, v10, :cond_2b

    .line 754
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v10

    .line 756
    .local v10, "state2":I
    add-int/lit8 v11, v1, 0x1

    move/from16 v32, v8

    .end local v8    # "t":I
    .local v32, "t":I
    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v8, v11

    .line 757
    .local v8, "posStateNext":I
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v33, v10, 0x4

    add-int v33, v33, v8

    aget-short v11, v11, v33

    .line 759
    invoke-static {v11}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v11

    add-int/2addr v11, v5

    move/from16 v33, v5

    .end local v5    # "curAnd1Price":I
    .local v33, "curAnd1Price":I
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    aget-short v5, v5, v10

    .line 760
    invoke-static {v5}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v5

    add-int/2addr v11, v5

    .line 762
    .local v11, "nextRepMatchPrice":I
    add-int/lit8 v5, v2, 0x1

    add-int/2addr v5, v9

    move/from16 v34, v12

    move/from16 v12, v25

    .line 763
    .end local v25    # "lenEnd":I
    .local v5, "offset":I
    .local v12, "lenEnd":I
    .local v34, "posPrev":I
    :goto_14
    if-ge v12, v5, :cond_29

    .line 764
    move/from16 v35, v13

    .end local v13    # "matchByte":B
    .local v35, "matchByte":B
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v12, v12, 0x1

    aget-object v13, v13, v12

    move/from16 v25, v12

    const v12, 0xfffffff

    .end local v12    # "lenEnd":I
    .restart local v25    # "lenEnd":I
    iput v12, v13, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    move/from16 v12, v25

    move/from16 v13, v35

    goto :goto_14

    .line 765
    .end local v25    # "lenEnd":I
    .end local v35    # "matchByte":B
    .restart local v12    # "lenEnd":I
    .restart local v13    # "matchByte":B
    :cond_29
    move/from16 v35, v13

    .end local v13    # "matchByte":B
    .restart local v35    # "matchByte":B
    const/4 v13, 0x0

    invoke-virtual {v0, v13, v9, v10, v8}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v25

    add-int v13, v11, v25

    .line 766
    .local v13, "curAndLenPrice":I
    move/from16 v36, v8

    .end local v8    # "posStateNext":I
    .local v36, "posStateNext":I
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v8, v8, v5

    .line 767
    .local v8, "optimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    move/from16 v37, v5

    .end local v5    # "offset":I
    .local v37, "offset":I
    iget v5, v8, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v13, v5, :cond_2a

    .line 768
    iput v13, v8, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 769
    add-int/lit8 v5, v2, 0x1

    iput v5, v8, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 770
    const/4 v5, 0x0

    iput v5, v8, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 771
    const/4 v5, 0x1

    iput-boolean v5, v8, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 772
    const/4 v5, 0x0

    iput-boolean v5, v8, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    .line 778
    .end local v8    # "optimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    .end local v9    # "lenTest2":I
    .end local v10    # "state2":I
    .end local v11    # "nextRepMatchPrice":I
    .end local v13    # "curAndLenPrice":I
    .end local v32    # "t":I
    .end local v36    # "posStateNext":I
    .end local v37    # "offset":I
    :cond_2a
    move v8, v12

    goto :goto_16

    .line 753
    .end local v33    # "curAnd1Price":I
    .end local v34    # "posPrev":I
    .end local v35    # "matchByte":B
    .local v5, "curAnd1Price":I
    .local v8, "t":I
    .restart local v9    # "lenTest2":I
    .local v12, "posPrev":I
    .local v13, "matchByte":B
    .restart local v25    # "lenEnd":I
    :cond_2b
    move/from16 v33, v5

    move/from16 v32, v8

    move/from16 v34, v12

    move/from16 v35, v13

    .end local v5    # "curAnd1Price":I
    .end local v8    # "t":I
    .end local v12    # "posPrev":I
    .end local v13    # "matchByte":B
    .restart local v32    # "t":I
    .restart local v33    # "curAnd1Price":I
    .restart local v34    # "posPrev":I
    .restart local v35    # "matchByte":B
    goto :goto_15

    .line 749
    .end local v21    # "nextIsChar":Z
    .end local v30    # "currentByte":B
    .end local v31    # "i":I
    .end local v32    # "t":I
    .end local v33    # "curAnd1Price":I
    .end local v34    # "posPrev":I
    .end local v35    # "matchByte":B
    .restart local v5    # "curAnd1Price":I
    .local v8, "nextIsChar":Z
    .local v9, "currentByte":B
    .local v11, "i":I
    .restart local v12    # "posPrev":I
    .restart local v13    # "matchByte":B
    :cond_2c
    move/from16 v33, v5

    move/from16 v21, v8

    move/from16 v30, v9

    move/from16 v31, v11

    move/from16 v34, v12

    move/from16 v35, v13

    .line 778
    .end local v5    # "curAnd1Price":I
    .end local v8    # "nextIsChar":Z
    .end local v9    # "currentByte":B
    .end local v11    # "i":I
    .end local v12    # "posPrev":I
    .end local v13    # "matchByte":B
    .restart local v21    # "nextIsChar":Z
    .restart local v30    # "currentByte":B
    .restart local v31    # "i":I
    .restart local v33    # "curAnd1Price":I
    .restart local v34    # "posPrev":I
    .restart local v35    # "matchByte":B
    :goto_15
    move/from16 v8, v25

    .end local v25    # "lenEnd":I
    .local v8, "lenEnd":I
    :goto_16
    const/4 v5, 0x2

    .line 780
    .local v5, "startLen":I
    const/4 v9, 0x0

    .local v9, "repIndex":I
    :goto_17
    const/4 v10, 0x4

    if-ge v9, v10, :cond_36

    .line 781
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    aget v12, v12, v9

    const/4 v13, -0x1

    invoke-virtual {v11, v13, v12, v7}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v11

    .line 782
    .local v11, "lenTest":I
    const/4 v12, 0x2

    if-ge v11, v12, :cond_2d

    move/from16 v42, v4

    move/from16 v41, v15

    goto/16 :goto_1c

    .line 783
    :cond_2d
    move v12, v11

    .line 785
    .local v12, "lenTestTemp":I
    :goto_18
    add-int v10, v2, v11

    if-ge v8, v10, :cond_2e

    .line 786
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v8, v8, 0x1

    aget-object v10, v10, v8

    const v13, 0xfffffff

    iput v13, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    const/4 v10, 0x4

    const/4 v13, -0x1

    goto :goto_18

    .line 787
    :cond_2e
    invoke-virtual {v0, v9, v11, v3, v14}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v10

    add-int/2addr v10, v15

    .line 788
    .local v10, "curAndLenPrice":I
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int v25, v2, v11

    aget-object v13, v13, v25

    .line 789
    .local v13, "optimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    move/from16 v25, v8

    .end local v8    # "lenEnd":I
    .restart local v25    # "lenEnd":I
    iget v8, v13, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v10, v8, :cond_2f

    .line 790
    iput v10, v13, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 791
    iput v2, v13, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 792
    iput v9, v13, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 793
    const/4 v8, 0x0

    iput-boolean v8, v13, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 795
    .end local v10    # "curAndLenPrice":I
    .end local v13    # "optimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    :cond_2f
    add-int/lit8 v11, v11, -0x1

    const/4 v8, 0x2

    if-ge v11, v8, :cond_35

    .line 796
    move v8, v12

    .line 798
    .end local v11    # "lenTest":I
    .local v8, "lenTest":I
    if-nez v9, :cond_30

    add-int/lit8 v5, v8, 0x1

    .line 801
    :cond_30
    if-ge v8, v4, :cond_34

    .line 802
    add-int/lit8 v10, v4, -0x1

    sub-int/2addr v10, v8

    iget v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 803
    .local v10, "t":I
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    aget v13, v13, v9

    invoke-virtual {v11, v8, v13, v10}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v11

    .line 804
    .local v11, "lenTest2":I
    const/4 v13, 0x2

    if-lt v11, v13, :cond_33

    .line 805
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v13

    .line 807
    .local v13, "state2":I
    add-int v32, v1, v8

    move/from16 v36, v5

    .end local v5    # "startLen":I
    .local v36, "startLen":I
    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int v5, v32, v5

    .line 808
    .local v5, "posStateNext":I
    nop

    .line 809
    invoke-virtual {v0, v9, v8, v3, v14}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v32

    add-int v32, v15, v32

    move/from16 v37, v10

    .end local v10    # "t":I
    .local v37, "t":I
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v38, v13, 0x4

    add-int v38, v38, v5

    aget-short v10, v10, v38

    .line 811
    invoke-static {v10}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v10

    add-int v32, v32, v10

    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    move/from16 v38, v5

    .end local v5    # "posStateNext":I
    .local v38, "posStateNext":I
    add-int v5, v1, v8

    move/from16 v39, v12

    .end local v12    # "lenTestTemp":I
    .local v39, "lenTestTemp":I
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    add-int/lit8 v40, v8, -0x1

    move/from16 v42, v4

    move/from16 v41, v15

    const/4 v15, 0x1

    .end local v4    # "numAvailableBytesFull":I
    .end local v15    # "repMatchPrice":I
    .local v41, "repMatchPrice":I
    .local v42, "numAvailableBytesFull":I
    add-int/lit8 v4, v40, -0x1

    .line 812
    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v4

    invoke-virtual {v10, v5, v4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v4

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    add-int/lit8 v10, v8, -0x1

    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    aget v12, v12, v9

    add-int/2addr v12, v15

    sub-int/2addr v10, v12

    .line 813
    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v5

    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v10

    .line 812
    invoke-virtual {v4, v15, v5, v10}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v4

    add-int v32, v32, v4

    .line 814
    .local v32, "curAndLenCharPrice":I
    invoke-static {v13}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v4

    .line 815
    .end local v13    # "state2":I
    .local v4, "state2":I
    add-int v5, v1, v8

    add-int/2addr v5, v15

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v5, v10

    .line 816
    .end local v38    # "posStateNext":I
    .restart local v5    # "posStateNext":I
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v12, v4, 0x4

    add-int/2addr v12, v5

    aget-short v10, v10, v12

    .line 818
    invoke-static {v10}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v10

    add-int v10, v32, v10

    .line 819
    .local v10, "nextMatchPrice":I
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    aget-short v12, v12, v4

    .line 820
    invoke-static {v12}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v12

    add-int/2addr v12, v10

    .line 824
    .local v12, "nextRepMatchPrice":I
    add-int/lit8 v13, v8, 0x1

    add-int/2addr v13, v11

    move/from16 v15, v25

    .line 825
    .end local v25    # "lenEnd":I
    .local v13, "offset":I
    .local v15, "lenEnd":I
    :goto_19
    move/from16 v38, v10

    .end local v10    # "nextMatchPrice":I
    .local v38, "nextMatchPrice":I
    add-int v10, v2, v13

    if-ge v15, v10, :cond_31

    .line 826
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v15, v15, 0x1

    aget-object v10, v10, v15

    move/from16 v25, v15

    const v15, 0xfffffff

    .end local v15    # "lenEnd":I
    .restart local v25    # "lenEnd":I
    iput v15, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    move/from16 v15, v25

    move/from16 v10, v38

    goto :goto_19

    .line 827
    .end local v25    # "lenEnd":I
    .restart local v15    # "lenEnd":I
    :cond_31
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v11, v4, v5}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v25

    add-int v10, v12, v25

    .line 828
    .local v10, "curAndLenPrice":I
    move/from16 v40, v4

    .end local v4    # "state2":I
    .local v40, "state2":I
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int v25, v2, v13

    aget-object v4, v4, v25

    .line 829
    .local v4, "optimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    move/from16 v43, v5

    .end local v5    # "posStateNext":I
    .local v43, "posStateNext":I
    iget v5, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v10, v5, :cond_32

    .line 830
    iput v10, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 831
    add-int v5, v2, v8

    move/from16 v44, v8

    const/4 v8, 0x1

    .end local v8    # "lenTest":I
    .local v44, "lenTest":I
    add-int/2addr v5, v8

    iput v5, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 832
    const/4 v5, 0x0

    iput v5, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 833
    iput-boolean v8, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 834
    iput-boolean v8, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    .line 835
    iput v2, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    .line 836
    iput v9, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    goto :goto_1a

    .line 829
    .end local v44    # "lenTest":I
    .restart local v8    # "lenTest":I
    :cond_32
    move/from16 v44, v8

    .line 780
    .end local v4    # "optimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    .end local v8    # "lenTest":I
    .end local v10    # "curAndLenPrice":I
    .end local v11    # "lenTest2":I
    .end local v12    # "nextRepMatchPrice":I
    .end local v13    # "offset":I
    .end local v32    # "curAndLenCharPrice":I
    .end local v37    # "t":I
    .end local v38    # "nextMatchPrice":I
    .end local v39    # "lenTestTemp":I
    .end local v40    # "state2":I
    .end local v43    # "posStateNext":I
    :goto_1a
    move v8, v15

    move/from16 v5, v36

    goto :goto_1c

    .line 804
    .end local v36    # "startLen":I
    .end local v41    # "repMatchPrice":I
    .end local v42    # "numAvailableBytesFull":I
    .local v4, "numAvailableBytesFull":I
    .local v5, "startLen":I
    .restart local v8    # "lenTest":I
    .local v10, "t":I
    .restart local v11    # "lenTest2":I
    .local v12, "lenTestTemp":I
    .local v15, "repMatchPrice":I
    .restart local v25    # "lenEnd":I
    :cond_33
    move/from16 v42, v4

    move/from16 v36, v5

    move/from16 v44, v8

    move/from16 v37, v10

    move/from16 v39, v12

    move/from16 v41, v15

    .end local v4    # "numAvailableBytesFull":I
    .end local v5    # "startLen":I
    .end local v8    # "lenTest":I
    .end local v10    # "t":I
    .end local v12    # "lenTestTemp":I
    .end local v15    # "repMatchPrice":I
    .restart local v36    # "startLen":I
    .restart local v37    # "t":I
    .restart local v39    # "lenTestTemp":I
    .restart local v41    # "repMatchPrice":I
    .restart local v42    # "numAvailableBytesFull":I
    .restart local v44    # "lenTest":I
    goto :goto_1b

    .line 801
    .end local v11    # "lenTest2":I
    .end local v36    # "startLen":I
    .end local v37    # "t":I
    .end local v39    # "lenTestTemp":I
    .end local v41    # "repMatchPrice":I
    .end local v42    # "numAvailableBytesFull":I
    .end local v44    # "lenTest":I
    .restart local v4    # "numAvailableBytesFull":I
    .restart local v5    # "startLen":I
    .restart local v8    # "lenTest":I
    .restart local v12    # "lenTestTemp":I
    .restart local v15    # "repMatchPrice":I
    :cond_34
    move/from16 v42, v4

    move/from16 v36, v5

    move/from16 v44, v8

    move/from16 v39, v12

    move/from16 v41, v15

    .line 780
    .end local v4    # "numAvailableBytesFull":I
    .end local v5    # "startLen":I
    .end local v8    # "lenTest":I
    .end local v12    # "lenTestTemp":I
    .end local v15    # "repMatchPrice":I
    .restart local v36    # "startLen":I
    .restart local v41    # "repMatchPrice":I
    .restart local v42    # "numAvailableBytesFull":I
    :goto_1b
    move/from16 v8, v25

    move/from16 v5, v36

    .end local v25    # "lenEnd":I
    .end local v36    # "startLen":I
    .restart local v5    # "startLen":I
    .local v8, "lenEnd":I
    :goto_1c
    add-int/lit8 v9, v9, 0x1

    move/from16 v15, v41

    move/from16 v4, v42

    goto/16 :goto_17

    .line 795
    .end local v8    # "lenEnd":I
    .end local v41    # "repMatchPrice":I
    .end local v42    # "numAvailableBytesFull":I
    .restart local v4    # "numAvailableBytesFull":I
    .local v11, "lenTest":I
    .restart local v12    # "lenTestTemp":I
    .restart local v15    # "repMatchPrice":I
    .restart local v25    # "lenEnd":I
    :cond_35
    move/from16 v42, v4

    move/from16 v39, v12

    move/from16 v41, v15

    .end local v4    # "numAvailableBytesFull":I
    .end local v12    # "lenTestTemp":I
    .end local v15    # "repMatchPrice":I
    .restart local v39    # "lenTestTemp":I
    .restart local v41    # "repMatchPrice":I
    .restart local v42    # "numAvailableBytesFull":I
    move/from16 v8, v25

    const/4 v10, 0x4

    const/4 v13, -0x1

    goto/16 :goto_18

    .line 780
    .end local v11    # "lenTest":I
    .end local v25    # "lenEnd":I
    .end local v39    # "lenTestTemp":I
    .end local v41    # "repMatchPrice":I
    .end local v42    # "numAvailableBytesFull":I
    .restart local v4    # "numAvailableBytesFull":I
    .restart local v8    # "lenEnd":I
    .restart local v15    # "repMatchPrice":I
    :cond_36
    move/from16 v42, v4

    move/from16 v41, v15

    .line 843
    .end local v4    # "numAvailableBytesFull":I
    .end local v9    # "repIndex":I
    .end local v15    # "repMatchPrice":I
    .restart local v41    # "repMatchPrice":I
    .restart local v42    # "numAvailableBytesFull":I
    if-le v6, v7, :cond_38

    .line 844
    move v6, v7

    .line 845
    const/4 v4, 0x0

    .end local p1    # "numDistancePairs":I
    .local v4, "numDistancePairs":I
    :goto_1d
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v10, v9, v4

    if-le v6, v10, :cond_37

    add-int/lit8 v4, v4, 0x2

    goto :goto_1d

    .line 847
    :cond_37
    aput v6, v9, v4

    .line 848
    add-int/lit8 v4, v4, 0x2

    goto :goto_1e

    .line 843
    .end local v4    # "numDistancePairs":I
    .restart local p1    # "numDistancePairs":I
    :cond_38
    move/from16 v4, p1

    .line 850
    .end local p1    # "numDistancePairs":I
    .restart local v4    # "numDistancePairs":I
    :goto_1e
    if-lt v6, v5, :cond_42

    .line 851
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    aget-short v9, v9, v3

    invoke-static {v9}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v9

    add-int v9, v23, v9

    .line 852
    .end local v22    # "normalMatchPrice":I
    .local v9, "normalMatchPrice":I
    :goto_1f
    add-int v10, v2, v6

    if-ge v8, v10, :cond_39

    .line 853
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v8, v8, 0x1

    aget-object v10, v10, v8

    const v11, 0xfffffff

    iput v11, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    goto :goto_1f

    .line 855
    :cond_39
    const/4 v10, 0x0

    .line 856
    .local v10, "offs":I
    :goto_20
    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v11, v11, v10

    if-le v5, v11, :cond_3a

    .line 857
    add-int/lit8 v10, v10, 0x2

    goto :goto_20

    .line 859
    :cond_3a
    move v11, v5

    .line 860
    .restart local v11    # "lenTest":I
    :goto_21
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    add-int/lit8 v13, v10, 0x1

    aget v12, v12, v13

    .line 861
    .local v12, "curBack":I
    invoke-virtual {v0, v12, v11, v14}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosLenPrice(III)I

    move-result v13

    add-int/2addr v13, v9

    .line 862
    .local v13, "curAndLenPrice":I
    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int v22, v2, v11

    aget-object v15, v15, v22

    .line 863
    .local v15, "optimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    move/from16 v25, v5

    .end local v5    # "startLen":I
    .local v25, "startLen":I
    iget v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v13, v5, :cond_3b

    .line 864
    iput v13, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 865
    iput v2, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 866
    add-int/lit8 v5, v12, 0x4

    iput v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 867
    const/4 v5, 0x0

    iput-boolean v5, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 870
    :cond_3b
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v5, v5, v10

    if-ne v11, v5, :cond_40

    .line 871
    move/from16 v5, v42

    .end local v42    # "numAvailableBytesFull":I
    .local v5, "numAvailableBytesFull":I
    if-ge v11, v5, :cond_3f

    .line 872
    add-int/lit8 v22, v5, -0x1

    move/from16 v42, v5

    .end local v5    # "numAvailableBytesFull":I
    .restart local v42    # "numAvailableBytesFull":I
    sub-int v5, v22, v11

    move/from16 v32, v6

    .end local v6    # "newLen":I
    .local v32, "newLen":I
    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 873
    .local v5, "t":I
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v6, v11, v12, v5}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v6

    .line 874
    .local v6, "lenTest2":I
    move/from16 p1, v5

    const/4 v5, 0x2

    .end local v5    # "t":I
    .local p1, "t":I
    if-lt v6, v5, :cond_3e

    .line 875
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v17

    .line 877
    .local v17, "state2":I
    add-int v22, v1, v11

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int v5, v22, v5

    .line 878
    .local v5, "posStateNext":I
    move/from16 v37, v3

    .end local v3    # "state":I
    .local v37, "state":I
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v22, v17, 0x4

    add-int v22, v22, v5

    aget-short v3, v3, v22

    .line 880
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v3

    add-int/2addr v3, v13

    move/from16 v22, v5

    .end local v5    # "posStateNext":I
    .local v22, "posStateNext":I
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    move/from16 v38, v7

    .end local v7    # "numAvailableBytes":I
    .local v38, "numAvailableBytes":I
    add-int v7, v1, v11

    move/from16 v39, v8

    .end local v8    # "lenEnd":I
    .local v39, "lenEnd":I
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    add-int/lit8 v40, v11, -0x1

    move/from16 v43, v9

    move/from16 v44, v13

    const/4 v9, 0x1

    .end local v9    # "normalMatchPrice":I
    .end local v13    # "curAndLenPrice":I
    .local v43, "normalMatchPrice":I
    .local v44, "curAndLenPrice":I
    add-int/lit8 v13, v40, -0x1

    .line 881
    invoke-virtual {v8, v13}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v5

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    add-int/lit8 v8, v12, 0x1

    sub-int v8, v11, v8

    sub-int/2addr v8, v9

    .line 882
    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v7

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    add-int/lit8 v13, v11, -0x1

    .line 883
    invoke-virtual {v8, v13}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v8

    .line 882
    invoke-virtual {v5, v9, v7, v8}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v5

    add-int/2addr v3, v5

    .line 884
    .local v3, "curAndLenCharPrice":I
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v5

    .line 885
    .end local v17    # "state2":I
    .local v5, "state2":I
    add-int v7, v1, v11

    add-int/2addr v7, v9

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v7, v8

    .line 886
    .end local v22    # "posStateNext":I
    .local v7, "posStateNext":I
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v9, v5, 0x4

    add-int/2addr v9, v7

    aget-short v8, v8, v9

    .line 888
    invoke-static {v8}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v8

    add-int/2addr v8, v3

    .line 889
    .local v8, "nextMatchPrice":I
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    aget-short v9, v9, v5

    .line 890
    invoke-static {v9}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v9

    add-int/2addr v9, v8

    .line 892
    .local v9, "nextRepMatchPrice":I
    add-int/lit8 v13, v11, 0x1

    add-int/2addr v13, v6

    move/from16 v17, v1

    move/from16 v1, v39

    .line 893
    .end local v39    # "lenEnd":I
    .local v1, "lenEnd":I
    .local v13, "offset":I
    .local v17, "position":I
    :goto_22
    move/from16 v22, v3

    .end local v3    # "curAndLenCharPrice":I
    .local v22, "curAndLenCharPrice":I
    add-int v3, v2, v13

    if-ge v1, v3, :cond_3c

    .line 894
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v1, v1, 0x1

    aget-object v3, v3, v1

    move/from16 v39, v1

    const v1, 0xfffffff

    .end local v1    # "lenEnd":I
    .restart local v39    # "lenEnd":I
    iput v1, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    move/from16 v3, v22

    move/from16 v1, v39

    goto :goto_22

    .line 895
    .end local v39    # "lenEnd":I
    .restart local v1    # "lenEnd":I
    :cond_3c
    move/from16 v39, v1

    const v1, 0xfffffff

    .end local v1    # "lenEnd":I
    .restart local v39    # "lenEnd":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v6, v5, v7}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v20

    add-int v3, v9, v20

    .line 896
    .end local v44    # "curAndLenPrice":I
    .local v3, "curAndLenPrice":I
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int v40, v2, v13

    aget-object v15, v1, v40

    .line 897
    iget v1, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v3, v1, :cond_3d

    .line 898
    iput v3, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 899
    add-int v1, v2, v11

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 900
    const/4 v1, 0x0

    iput v1, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 901
    iput-boolean v0, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 902
    iput-boolean v0, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    .line 903
    iput v2, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    .line 904
    add-int/lit8 v0, v12, 0x4

    iput v0, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    goto :goto_23

    .line 897
    :cond_3d
    const/4 v1, 0x0

    .line 908
    .end local v5    # "state2":I
    .end local v6    # "lenTest2":I
    .end local v7    # "posStateNext":I
    .end local v8    # "nextMatchPrice":I
    .end local v9    # "nextRepMatchPrice":I
    .end local v13    # "offset":I
    .end local v22    # "curAndLenCharPrice":I
    .end local p1    # "t":I
    :goto_23
    move v13, v3

    move/from16 v8, v39

    goto :goto_25

    .line 874
    .end local v17    # "position":I
    .end local v37    # "state":I
    .end local v38    # "numAvailableBytes":I
    .end local v39    # "lenEnd":I
    .end local v43    # "normalMatchPrice":I
    .local v1, "position":I
    .local v3, "state":I
    .restart local v6    # "lenTest2":I
    .local v7, "numAvailableBytes":I
    .local v8, "lenEnd":I
    .local v9, "normalMatchPrice":I
    .local v13, "curAndLenPrice":I
    .restart local p1    # "t":I
    :cond_3e
    move/from16 v17, v1

    move/from16 v37, v3

    move/from16 v38, v7

    move/from16 v39, v8

    move/from16 v43, v9

    move/from16 v44, v13

    const/4 v1, 0x0

    .end local v1    # "position":I
    .end local v3    # "state":I
    .end local v7    # "numAvailableBytes":I
    .end local v8    # "lenEnd":I
    .end local v9    # "normalMatchPrice":I
    .end local v13    # "curAndLenPrice":I
    .restart local v17    # "position":I
    .restart local v37    # "state":I
    .restart local v38    # "numAvailableBytes":I
    .restart local v39    # "lenEnd":I
    .restart local v43    # "normalMatchPrice":I
    .restart local v44    # "curAndLenPrice":I
    goto :goto_24

    .line 871
    .end local v17    # "position":I
    .end local v32    # "newLen":I
    .end local v37    # "state":I
    .end local v38    # "numAvailableBytes":I
    .end local v39    # "lenEnd":I
    .end local v42    # "numAvailableBytesFull":I
    .end local v43    # "normalMatchPrice":I
    .end local v44    # "curAndLenPrice":I
    .end local p1    # "t":I
    .restart local v1    # "position":I
    .restart local v3    # "state":I
    .local v5, "numAvailableBytesFull":I
    .local v6, "newLen":I
    .restart local v7    # "numAvailableBytes":I
    .restart local v8    # "lenEnd":I
    .restart local v9    # "normalMatchPrice":I
    .restart local v13    # "curAndLenPrice":I
    :cond_3f
    move/from16 v17, v1

    move/from16 v37, v3

    move/from16 v42, v5

    move/from16 v32, v6

    move/from16 v38, v7

    move/from16 v39, v8

    move/from16 v43, v9

    move/from16 v44, v13

    const/4 v1, 0x0

    .line 908
    .end local v1    # "position":I
    .end local v3    # "state":I
    .end local v5    # "numAvailableBytesFull":I
    .end local v6    # "newLen":I
    .end local v7    # "numAvailableBytes":I
    .end local v8    # "lenEnd":I
    .end local v9    # "normalMatchPrice":I
    .end local v13    # "curAndLenPrice":I
    .restart local v17    # "position":I
    .restart local v32    # "newLen":I
    .restart local v37    # "state":I
    .restart local v38    # "numAvailableBytes":I
    .restart local v39    # "lenEnd":I
    .restart local v42    # "numAvailableBytesFull":I
    .restart local v43    # "normalMatchPrice":I
    .restart local v44    # "curAndLenPrice":I
    :goto_24
    move/from16 v8, v39

    move/from16 v13, v44

    .end local v39    # "lenEnd":I
    .end local v44    # "curAndLenPrice":I
    .restart local v8    # "lenEnd":I
    .restart local v13    # "curAndLenPrice":I
    :goto_25
    add-int/lit8 v10, v10, 0x2

    .line 909
    if-ne v10, v4, :cond_41

    move/from16 v22, v43

    goto :goto_26

    .line 870
    .end local v17    # "position":I
    .end local v32    # "newLen":I
    .end local v37    # "state":I
    .end local v38    # "numAvailableBytes":I
    .end local v43    # "normalMatchPrice":I
    .restart local v1    # "position":I
    .restart local v3    # "state":I
    .restart local v6    # "newLen":I
    .restart local v7    # "numAvailableBytes":I
    .restart local v9    # "normalMatchPrice":I
    :cond_40
    move/from16 v17, v1

    move/from16 v37, v3

    move/from16 v32, v6

    move/from16 v38, v7

    move/from16 v39, v8

    move/from16 v43, v9

    move/from16 v44, v13

    const/4 v1, 0x0

    .line 859
    .end local v1    # "position":I
    .end local v3    # "state":I
    .end local v6    # "newLen":I
    .end local v7    # "numAvailableBytes":I
    .end local v9    # "normalMatchPrice":I
    .end local v12    # "curBack":I
    .end local v13    # "curAndLenPrice":I
    .end local v15    # "optimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    .restart local v17    # "position":I
    .restart local v32    # "newLen":I
    .restart local v37    # "state":I
    .restart local v38    # "numAvailableBytes":I
    .restart local v43    # "normalMatchPrice":I
    :cond_41
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v5, v25

    move/from16 v6, v32

    move/from16 v3, v37

    move/from16 v7, v38

    move/from16 v9, v43

    goto/16 :goto_21

    .line 850
    .end local v10    # "offs":I
    .end local v11    # "lenTest":I
    .end local v17    # "position":I
    .end local v25    # "startLen":I
    .end local v32    # "newLen":I
    .end local v37    # "state":I
    .end local v38    # "numAvailableBytes":I
    .end local v43    # "normalMatchPrice":I
    .restart local v1    # "position":I
    .restart local v3    # "state":I
    .local v5, "startLen":I
    .restart local v6    # "newLen":I
    .restart local v7    # "numAvailableBytes":I
    .local v22, "normalMatchPrice":I
    :cond_42
    move/from16 v17, v1

    move/from16 v37, v3

    move/from16 v25, v5

    move/from16 v32, v6

    move/from16 v38, v7

    const/4 v1, 0x0

    .line 913
    .end local v1    # "position":I
    .end local v3    # "state":I
    .end local v5    # "startLen":I
    .end local v6    # "newLen":I
    .end local v7    # "numAvailableBytes":I
    .end local v21    # "nextIsChar":Z
    .end local v27    # "curPrice":I
    .end local v28    # "nextOptimum":Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;
    .end local v33    # "curAnd1Price":I
    .end local v34    # "posPrev":I
    .end local v42    # "numAvailableBytesFull":I
    .restart local v17    # "position":I
    .restart local v38    # "numAvailableBytes":I
    :goto_26
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v3, v24

    move/from16 v5, v26

    move/from16 v10, v29

    move/from16 v9, v30

    move/from16 v11, v31

    move/from16 v13, v35

    move/from16 v21, v38

    move/from16 v7, v41

    goto/16 :goto_b

    .line 581
    .end local v17    # "position":I
    .end local v22    # "normalMatchPrice":I
    .end local v23    # "matchPrice":I
    .end local v24    # "lenMain":I
    .end local v26    # "len":I
    .end local v29    # "repMaxIndex":I
    .end local v30    # "currentByte":B
    .end local v31    # "i":I
    .end local v35    # "matchByte":B
    .end local v38    # "numAvailableBytes":I
    .end local v41    # "repMatchPrice":I
    .local v2, "matchPrice":I
    .local v3, "lenMain":I
    .local v5, "numAvailableBytes":I
    .local v7, "repMatchPrice":I
    .local v9, "currentByte":B
    .local v10, "repMaxIndex":I
    .local v11, "i":I
    .local v13, "matchByte":B
    .local v15, "len":I
    .local p1, "position":I
    :cond_43
    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v21, v5

    move/from16 v29, v10

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v19, 0x3

    .end local v2    # "matchPrice":I
    .end local v3    # "lenMain":I
    .end local v5    # "numAvailableBytes":I
    .end local v10    # "repMaxIndex":I
    .local v21, "numAvailableBytes":I
    .restart local v23    # "matchPrice":I
    .restart local v24    # "lenMain":I
    .restart local v29    # "repMaxIndex":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v6, v15

    move/from16 v15, v19

    move/from16 v2, v23

    goto/16 :goto_3
.end method

.method GetPosLenPrice(III)I
    .locals 4
    .param p1, "pos"    # I
    .param p2, "len"    # I
    .param p3, "posState"    # I

    .line 449
    invoke-static {p2}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->GetLenToPosState(I)I

    move-result v0

    .line 450
    .local v0, "lenToPosState":I
    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distancesPrices:[I

    mul-int/lit16 v2, v0, 0x80

    add-int/2addr v2, p1

    aget v1, v1, v2

    .local v1, "price":I
    goto :goto_0

    .line 453
    .end local v1    # "price":I
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    shl-int/lit8 v2, v0, 0x6

    invoke-static {p1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosSlot2(I)I

    move-result v3

    add-int/2addr v2, v3

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPrices:[I

    and-int/lit8 v3, p1, 0xf

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 454
    .restart local v1    # "price":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    add-int/lit8 v3, p2, -0x2

    invoke-virtual {v2, v3, p3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->GetPrice(II)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method GetPureRepPrice(III)I
    .locals 3
    .param p1, "repIndex"    # I
    .param p2, "state"    # I
    .param p3, "posState"    # I

    .line 426
    if-nez p1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    aget-short v0, v0, p2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v0

    .line 428
    .local v0, "price":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    shl-int/lit8 v2, p2, 0x4

    add-int/2addr v2, p3

    aget-short v1, v1, v2

    .line 429
    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 431
    .end local v0    # "price":I
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    aget-short v0, v0, p2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v0

    .line 432
    .restart local v0    # "price":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    aget-short v1, v1, p2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    aget-short v1, v1, p2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG2:[S

    aget-short v1, v1, p2

    add-int/lit8 v2, p1, -0x2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 439
    :goto_0
    return v0
.end method

.method GetRepLen1Price(II)I
    .locals 3
    .param p1, "state"    # I
    .param p2, "posState"    # I

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    aget-short v0, v0, p1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    shl-int/lit8 v2, p1, 0x4

    add-int/2addr v2, p2

    aget-short v1, v1, v2

    .line 420
    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    return v0
.end method

.method GetRepPrice(IIII)I
    .locals 2
    .param p1, "repIndex"    # I
    .param p2, "len"    # I
    .param p3, "state"    # I
    .param p4, "posState"    # I

    .line 443
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    add-int/lit8 v1, p2, -0x2

    invoke-virtual {v0, v1, p4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->GetPrice(II)I

    move-result v0

    .line 444
    .local v0, "price":I
    invoke-virtual {p0, p1, p3, p4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPureRepPrice(III)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method Init()V
    .locals 3

    .line 372
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->BaseInit()V

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Init()V

    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 378
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 379
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 380
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG2:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posEncoders:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->Init()V

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Init(I)V

    .line 388
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    shl-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Init(I)V

    .line 390
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchWasFound:Z

    .line 393
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumEndIndex:I

    .line 394
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    .line 395
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    .line 396
    return-void
.end method

.method MovePos(I)V
    .locals 1
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    if-lez p1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->Skip(I)V

    .line 414
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    .line 416
    :cond_0
    return-void
.end method

.method ReadMatchDistances()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "lenRes":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatches([I)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numDistancePairs:I

    .line 401
    if-lez v1, :cond_0

    .line 402
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    add-int/lit8 v3, v1, -0x2

    aget v0, v2, v3

    .line 403
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-ne v0, v3, :cond_0

    .line 404
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    rsub-int v2, v0, 0x111

    invoke-virtual {v3, v4, v1, v2}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v1

    add-int/2addr v0, v1

    .line 407
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    .line 408
    return v0
.end method

.method ReleaseMFStream()V
    .locals 2

    .line 1082
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    if-eqz v1, :cond_0

    .line 1083
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->ReleaseStream()V

    .line 1084
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    .line 1086
    :cond_0
    return-void
.end method

.method ReleaseOutStream()V
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->ReleaseStream()V

    .line 1094
    return-void
.end method

.method ReleaseStreams()V
    .locals 0

    .line 1097
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseMFStream()V

    .line 1098
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseOutStream()V

    .line 1099
    return-void
.end method

.method public SetAlgorithm(I)Z
    .locals 1
    .param p1, "algorithm"    # I

    .line 1195
    const/4 v0, 0x1

    return v0
.end method

.method public SetDictionarySize(I)Z
    .locals 4
    .param p1, "dictionarySize"    # I

    .line 1199
    const/16 v0, 0x1d

    .line 1200
    .local v0, "kDicLogSizeMaxCompress":I
    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    shl-int v2, v1, v0

    if-le p1, v2, :cond_0

    goto :goto_1

    .line 1201
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    .line 1203
    const/4 v2, 0x0

    .local v2, "dicLogSize":I
    :goto_0
    shl-int v3, v1, v2

    if-le p1, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1205
    :cond_1
    mul-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distTableSize:I

    .line 1206
    return v1

    .line 1200
    .end local v2    # "dicLogSize":I
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public SetEndMarkerMode(Z)V
    .locals 0
    .param p1, "endMarkerMode"    # Z

    .line 1237
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_writeEndMark:Z

    .line 1238
    return-void
.end method

.method public SetLcLpPb(III)Z
    .locals 2
    .param p1, "lc"    # I
    .param p2, "lp"    # I
    .param p3, "pb"    # I

    .line 1227
    if-ltz p2, :cond_1

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1

    if-ltz p1, :cond_1

    const/16 v1, 0x8

    if-gt p1, v1, :cond_1

    if-ltz p3, :cond_1

    if-le p3, v0, :cond_0

    goto :goto_0

    .line 1229
    :cond_0
    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralPosStateBits:I

    .line 1230
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralContextBits:I

    .line 1231
    iput p3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    .line 1232
    const/4 v0, 0x1

    shl-int v1, v0, p3

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    .line 1233
    return v0

    .line 1228
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public SetMatchFinder(I)Z
    .locals 2
    .param p1, "matchFinderIndex"    # I

    .line 1216
    if-ltz p1, :cond_2

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1217
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinderType:I

    .line 1218
    .local v0, "matchFinderIndexPrev":I
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinderType:I

    .line 1219
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    if-eqz v1, :cond_1

    if-eq v0, p1, :cond_1

    .line 1220
    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySizePrev:I

    .line 1221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    .line 1223
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 1216
    .end local v0    # "matchFinderIndexPrev":I
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public SetNumFastBytes(I)Z
    .locals 1
    .param p1, "numFastBytes"    # I

    .line 1210
    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    const/16 v0, 0x111

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1211
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    .line 1212
    const/4 v0, 0x1

    return v0

    .line 1210
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method SetOutStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .line 1089
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->SetStream(Ljava/io/OutputStream;)V

    .line 1090
    return-void
.end method

.method SetStreams(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V
    .locals 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .param p3, "inSize"    # J
    .param p5, "outSize"    # J

    .line 1102
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_inStream:Ljava/io/InputStream;

    .line 1103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_finished:Z

    .line 1104
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Create()V

    .line 1105
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetOutStream(Ljava/io/OutputStream;)V

    .line 1106
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Init()V

    .line 1110
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->FillDistancesPrices()V

    .line 1111
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->FillAlignPrices()V

    .line 1114
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->SetTableSize(I)V

    .line 1115
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    shl-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->UpdateTables(I)V

    .line 1116
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->SetTableSize(I)V

    .line 1117
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    shl-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->UpdateTables(I)V

    .line 1119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    .line 1120
    return-void
.end method

.method SetWriteEndMarkerMode(Z)V
    .locals 0
    .param p1, "writeEndMarker"    # Z

    .line 368
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_writeEndMark:Z

    .line 369
    return-void
.end method

.method public WriteCoderProperties(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->properties:[B

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralPosStateBits:I

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x9

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralContextBits:I

    add-int/2addr v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x0

    aput-byte v1, v0, v3

    .line 1149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->properties:[B

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    mul-int/lit8 v6, v0, 0x8

    shr-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 1149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1151
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->properties:[B

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1152
    return-void
.end method

.method WriteEndMarker(I)V
    .locals 8
    .param p1, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 922
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_writeEndMark:Z

    if-nez v0, :cond_0

    return-void

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 925
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 926
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 927
    const/4 v0, 0x2

    .line 928
    .local v0, "len":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v1, v2, v4, p1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V

    .line 929
    const/16 v1, 0x3f

    .line 930
    .local v1, "posSlot":I
    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->GetLenToPosState(I)I

    move-result v2

    .line 931
    .local v2, "lenToPosState":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v4, v5, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    .line 932
    const/16 v4, 0x1e

    .line 933
    .local v4, "footerBits":I
    shl-int v5, v3, v4

    sub-int/2addr v5, v3

    .line 934
    .local v5, "posReduced":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    shr-int/lit8 v6, v5, 0x4

    add-int/lit8 v7, v4, -0x4

    invoke-virtual {v3, v6, v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->EncodeDirectBits(II)V

    .line 935
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    and-int/lit8 v7, v5, 0xf

    invoke-virtual {v3, v6, v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseEncode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    .line 936
    return-void
.end method
