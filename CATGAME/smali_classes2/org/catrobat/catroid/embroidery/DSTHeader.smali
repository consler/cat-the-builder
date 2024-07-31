.class public Lorg/catrobat/catroid/embroidery/DSTHeader;
.super Ljava/lang/Object;
.source "DSTHeader.java"

# interfaces
.implements Lorg/catrobat/catroid/embroidery/EmbroideryHeader;


# instance fields
.field private colorChangeCount:I

.field private firstX:F

.field private firstY:F

.field private lastX:F

.field private lastY:F

.field private maxX:F

.field private maxY:F

.field private minX:F

.field private minY:F

.field private pointAmount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addColorChange()V
    .locals 1

    .line 83
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->colorChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->colorChangeCount:I

    .line 84
    return-void
.end method

.method public appendToStream(Ljava/io/FileOutputStream;)V
    .locals 12
    .param p1, "fileStream"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "mx":I
    const/4 v1, 0x0

    .line 90
    .local v1, "my":I
    const-string v2, "*****"

    .line 91
    .local v2, "pd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "label":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    const/4 v7, 0x0

    .line 99
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 93
    if-le v5, v6, :cond_0

    .line 94
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 96
    :cond_0
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v7

    const-string v9, "LA:%-15s\n\u001a"

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->pointAmount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    iget v10, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->colorChangeCount:I

    .line 98
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v5, 0x2

    iget v10, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->maxX:F

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v5, 0x3

    iget v10, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->minX:F

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v5, 0x4

    iget v10, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->maxY:F

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v5, 0x5

    iget v10, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->minY:F

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v5, 0x6

    iget v10, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->lastX:F

    iget v11, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->firstX:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    .line 99
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v5, 0x7

    iget v10, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->lastY:F

    iget v11, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->firstY:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const/16 v5, 0x8

    aput-object v8, v9, v5

    const/16 v5, 0x9

    aput-object v8, v9, v5

    const/16 v5, 0xa

    const-string v8, "*****"

    aput-object v8, v9, v5

    .line 97
    const-string v5, "ST:%-6d\n\u001aCO:%-2d\n\u001a+X:%-4d\n\u001a-X:%-4d\n\u001a+Y:%-4d\n\u001a-Y:%-4d\n\u001aAX:%-5d\n\u001aAY:%-5d\n\u001aMX:%-5d\n\u001aMY:%-5d\n\u001aPD:%-5s\n\u001a"

    invoke-static {v6, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    .line 99
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->HEADER_FILL:Ljava/lang/String;

    .line 101
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 104
    return-void
.end method

.method public initialize(FF)V
    .locals 1
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F

    .line 48
    invoke-static {p1}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->toEmbroideryUnit(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->minX:F

    .line 49
    invoke-static {p1}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->toEmbroideryUnit(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->maxX:F

    .line 50
    invoke-static {p2}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->toEmbroideryUnit(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->minY:F

    .line 51
    invoke-static {p2}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->toEmbroideryUnit(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->maxY:F

    .line 52
    invoke-static {p1}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->toEmbroideryUnit(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->firstX:F

    .line 53
    invoke-static {p2}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->toEmbroideryUnit(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->firstY:F

    .line 54
    invoke-static {p1}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->toEmbroideryUnit(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->lastX:F

    .line 55
    invoke-static {p2}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->toEmbroideryUnit(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->lastY:F

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->colorChangeCount:I

    .line 57
    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->pointAmount:I

    .line 58
    return-void
.end method

.method public reset()V
    .locals 1

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->colorChangeCount:I

    .line 109
    return-void
.end method

.method public update(FF)V
    .locals 3
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F

    .line 62
    invoke-static {p1}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->toEmbroideryUnit(F)I

    move-result v0

    int-to-float v0, v0

    .line 63
    .local v0, "x":F
    invoke-static {p2}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->toEmbroideryUnit(F)I

    move-result v1

    int-to-float v1, v1

    .line 64
    .local v1, "y":F
    iget v2, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->minX:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 65
    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->minX:F

    .line 67
    :cond_0
    iget v2, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->maxX:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_1

    .line 68
    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->maxX:F

    .line 70
    :cond_1
    iget v2, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->minY:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 71
    iput v1, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->minY:F

    .line 73
    :cond_2
    iget v2, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->maxY:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_3

    .line 74
    iput v1, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->maxY:F

    .line 76
    :cond_3
    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->lastX:F

    .line 77
    iput v1, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->lastY:F

    .line 78
    iget v2, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->pointAmount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/catrobat/catroid/embroidery/DSTHeader;->pointAmount:I

    .line 79
    return-void
.end method
