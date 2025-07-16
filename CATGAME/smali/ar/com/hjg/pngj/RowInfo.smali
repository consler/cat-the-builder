.class Lar/com/hjg/pngj/RowInfo;
.super Ljava/lang/Object;
.source "RowInfo.java"


# instance fields
.field buf:[B

.field buflen:I

.field bytesRow:I

.field colsSubImg:I

.field dX:I

.field dY:I

.field public final deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

.field public final imgInfo:Lar/com/hjg/pngj/ImageInfo;

.field public final imode:Z

.field oX:I

.field oY:I

.field pass:I

.field rowNreal:I

.field rowNseq:I

.field rowNsubImg:I

.field rowsSubImg:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;Lar/com/hjg/pngj/Deinterlacer;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lar/com/hjg/pngj/RowInfo;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 23
    iput-object p2, p0, Lar/com/hjg/pngj/RowInfo;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    iput-boolean p1, p0, Lar/com/hjg/pngj/RowInfo;->imode:Z

    return-void
.end method


# virtual methods
.method update(I)V
    .locals 1

    .line 28
    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->rowNseq:I

    .line 29
    iget-boolean v0, p0, Lar/com/hjg/pngj/RowInfo;->imode:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object p1, p0, Lar/com/hjg/pngj/RowInfo;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    invoke-virtual {p1}, Lar/com/hjg/pngj/Deinterlacer;->getPass()I

    move-result p1

    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->pass:I

    .line 31
    iget-object p1, p0, Lar/com/hjg/pngj/RowInfo;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    iget p1, p1, Lar/com/hjg/pngj/Deinterlacer;->dX:I

    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->dX:I

    .line 32
    iget-object p1, p0, Lar/com/hjg/pngj/RowInfo;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    iget p1, p1, Lar/com/hjg/pngj/Deinterlacer;->dY:I

    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->dY:I

    .line 33
    iget-object p1, p0, Lar/com/hjg/pngj/RowInfo;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    iget p1, p1, Lar/com/hjg/pngj/Deinterlacer;->oX:I

    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->oX:I

    .line 34
    iget-object p1, p0, Lar/com/hjg/pngj/RowInfo;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    iget p1, p1, Lar/com/hjg/pngj/Deinterlacer;->oY:I

    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->oY:I

    .line 35
    iget-object p1, p0, Lar/com/hjg/pngj/RowInfo;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    invoke-virtual {p1}, Lar/com/hjg/pngj/Deinterlacer;->getCurrRowReal()I

    move-result p1

    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->rowNreal:I

    .line 36
    iget-object p1, p0, Lar/com/hjg/pngj/RowInfo;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    invoke-virtual {p1}, Lar/com/hjg/pngj/Deinterlacer;->getCurrRowSubimg()I

    move-result p1

    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->rowNsubImg:I

    .line 37
    iget-object p1, p0, Lar/com/hjg/pngj/RowInfo;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    invoke-virtual {p1}, Lar/com/hjg/pngj/Deinterlacer;->getRows()I

    move-result p1

    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->rowsSubImg:I

    .line 38
    iget-object p1, p0, Lar/com/hjg/pngj/RowInfo;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    invoke-virtual {p1}, Lar/com/hjg/pngj/Deinterlacer;->getCols()I

    move-result p1

    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->colsSubImg:I

    .line 39
    iget-object p1, p0, Lar/com/hjg/pngj/RowInfo;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->bitspPixel:I

    iget v0, p0, Lar/com/hjg/pngj/RowInfo;->colsSubImg:I

    mul-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->bytesRow:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lar/com/hjg/pngj/RowInfo;->pass:I

    .line 42
    iput v0, p0, Lar/com/hjg/pngj/RowInfo;->dY:I

    iput v0, p0, Lar/com/hjg/pngj/RowInfo;->dX:I

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lar/com/hjg/pngj/RowInfo;->oY:I

    iput v0, p0, Lar/com/hjg/pngj/RowInfo;->oX:I

    .line 44
    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->rowNsubImg:I

    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->rowNreal:I

    .line 45
    iget-object p1, p0, Lar/com/hjg/pngj/RowInfo;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->rowsSubImg:I

    .line 46
    iget-object p1, p0, Lar/com/hjg/pngj/RowInfo;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->colsSubImg:I

    .line 47
    iget-object p1, p0, Lar/com/hjg/pngj/RowInfo;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    iput p1, p0, Lar/com/hjg/pngj/RowInfo;->bytesRow:I

    :goto_0
    return-void
.end method

.method updateBuf([BI)V
    .locals 0

    .line 52
    iput-object p1, p0, Lar/com/hjg/pngj/RowInfo;->buf:[B

    .line 53
    iput p2, p0, Lar/com/hjg/pngj/RowInfo;->buflen:I

    return-void
.end method
