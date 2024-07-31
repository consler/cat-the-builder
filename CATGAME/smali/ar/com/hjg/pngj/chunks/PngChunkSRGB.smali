.class public Lar/com/hjg/pngj/chunks/PngChunkSRGB;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkSRGB.java"


# static fields
.field public static final ID:Ljava/lang/String; = "sRGB"

.field public static final RENDER_INTENT_Absolute_colorimetric:I = 0x3

.field public static final RENDER_INTENT_Perceptual:I = 0x0

.field public static final RENDER_INTENT_Relative_colorimetric:I = 0x1

.field public static final RENDER_INTENT_Saturation:I = 0x2


# instance fields
.field private intent:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/ImageInfo;

    .line 25
    const-string v0, "sRGB"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 26
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 4

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "c":Lar/com/hjg/pngj/chunks/ChunkRaw;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1}, Lar/com/hjg/pngj/chunks/PngChunkSRGB;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 44
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSRGB;->intent:I

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 45
    return-object v0
.end method

.method public getIntent()I
    .locals 1

    .line 49
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSRGB;->intent:I

    return v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 30
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 3
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 35
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 37
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSRGB;->intent:I

    .line 38
    return-void

    .line 36
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad chunk length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIntent(I)V
    .locals 0
    .param p1, "intent"    # I

    .line 53
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSRGB;->intent:I

    .line 54
    return-void
.end method
