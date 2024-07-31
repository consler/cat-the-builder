.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
.super Ljava/lang/Object;
.source "PixmapPacker.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    }
.end annotation


# static fields
.field static indexPattern:Ljava/util/regex/Pattern;


# instance fields
.field alphaThreshold:I

.field private c:Lcom/badlogic/gdx/graphics/Color;

.field disposed:Z

.field duplicateBorder:Z

.field packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

.field packToTexture:Z

.field padding:I

.field pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field pageHeight:I

.field pageWidth:I

.field final pages:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;",
            ">;"
        }
    .end annotation
.end field

.field stripWhitespaceX:Z

.field stripWhitespaceY:Z

.field transparentColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    const-string v0, "(.+)_(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->indexPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZ)V
    .locals 9
    .param p1, "pageWidth"    # I
    .param p2, "pageHeight"    # I
    .param p3, "pageFormat"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p4, "padding"    # I
    .param p5, "duplicateBorder"    # Z

    .line 119
    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;

    invoke-direct {v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZZZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V

    .line 120
    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V
    .locals 9
    .param p1, "pageWidth"    # I
    .param p2, "pageHeight"    # I
    .param p3, "pageFormat"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p4, "padding"    # I
    .param p5, "duplicateBorder"    # Z
    .param p6, "packStrategy"    # Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    .line 125
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZZZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V

    .line 126
    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZZZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V
    .locals 2
    .param p1, "pageWidth"    # I
    .param p2, "pageHeight"    # I
    .param p3, "pageFormat"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p4, "padding"    # I
    .param p5, "duplicateBorder"    # Z
    .param p6, "stripWhitespaceX"    # Z
    .param p7, "stripWhitespaceY"    # Z
    .param p8, "packStrategy"    # Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->transparentColor:Lcom/badlogic/gdx/graphics/Color;

    .line 111
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    .line 819
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    .line 138
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    .line 139
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    .line 140
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 141
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    .line 142
    iput-boolean p5, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    .line 143
    iput-boolean p6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceX:Z

    .line 144
    iput-boolean p7, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceY:Z

    .line 145
    iput-object p8, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    .line 146
    return-void
.end method

.method private getPads(Lcom/badlogic/gdx/graphics/Pixmap;[I)[I
    .locals 15
    .param p1, "raster"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "splits"    # [I

    .line 763
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 764
    .local v1, "bottom":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    add-int/lit8 v10, v3, -0x1

    .line 766
    .local v10, "right":I
    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, p0

    move-object/from16 v4, p1

    move v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v11

    .line 767
    .local v11, "startX":I
    const/4 v9, 0x0

    move-object v4, p0

    move-object/from16 v5, p1

    move v6, v10

    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v12

    .line 770
    .local v12, "startY":I
    const/4 v9, 0x0

    .line 771
    .local v9, "endX":I
    const/4 v13, 0x0

    .line 772
    .local v13, "endY":I
    if-eqz v11, :cond_0

    add-int/lit8 v5, v11, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object/from16 v4, p1

    move v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v9

    :cond_0
    move v14, v9

    .line 773
    .end local v9    # "endX":I
    .local v14, "endX":I
    if-eqz v12, :cond_1

    add-int/lit8 v7, v12, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object/from16 v5, p1

    move v6, v10

    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v13

    .line 776
    :cond_1
    add-int/lit8 v5, v14, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, p0

    move-object/from16 v4, p1

    move v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    .line 777
    add-int/lit8 v7, v13, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object/from16 v5, p1

    move v6, v10

    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    .line 780
    const/4 v3, 0x0

    if-nez v11, :cond_2

    if-nez v14, :cond_2

    if-nez v12, :cond_2

    if-nez v13, :cond_2

    .line 781
    return-object v3

    .line 785
    :cond_2
    const/4 v4, 0x2

    if-nez v11, :cond_3

    if-nez v14, :cond_3

    .line 786
    const/4 v11, -0x1

    .line 787
    const/4 v5, -0x1

    .end local v14    # "endX":I
    .local v5, "endX":I
    goto :goto_0

    .line 789
    .end local v5    # "endX":I
    .restart local v14    # "endX":I
    :cond_3
    if-lez v11, :cond_4

    .line 790
    add-int/lit8 v11, v11, -0x1

    .line 791
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    add-int/lit8 v6, v14, -0x1

    sub-int/2addr v5, v6

    .end local v14    # "endX":I
    .restart local v5    # "endX":I
    goto :goto_0

    .line 794
    .end local v5    # "endX":I
    .restart local v14    # "endX":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    .line 797
    .end local v14    # "endX":I
    .restart local v5    # "endX":I
    :goto_0
    if-nez v12, :cond_5

    if-nez v13, :cond_5

    .line 798
    const/4 v12, -0x1

    .line 799
    const/4 v6, -0x1

    .end local v13    # "endY":I
    .local v6, "endY":I
    goto :goto_1

    .line 801
    .end local v6    # "endY":I
    .restart local v13    # "endY":I
    :cond_5
    if-lez v12, :cond_6

    .line 802
    add-int/lit8 v12, v12, -0x1

    .line 803
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v4

    add-int/lit8 v7, v13, -0x1

    sub-int/2addr v6, v7

    .end local v13    # "endY":I
    .restart local v6    # "endY":I
    goto :goto_1

    .line 806
    .end local v6    # "endY":I
    .restart local v13    # "endY":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v4

    .line 810
    .end local v13    # "endY":I
    .restart local v6    # "endY":I
    :goto_1
    const/4 v7, 0x4

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v11, v7, v8

    aput v5, v7, v2

    aput v12, v7, v4

    const/4 v2, 0x3

    aput v6, v7, v2

    move-object v2, v7

    .line 812
    .local v2, "pads":[I
    if-eqz v0, :cond_7

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 813
    return-object v3

    .line 816
    :cond_7
    return-object v2
.end method

.method private getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I
    .locals 15
    .param p1, "raster"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startPoint"    # Z
    .param p5, "xAxis"    # Z

    .line 821
    move-object v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 823
    .local v1, "rgba":[I
    if-eqz p5, :cond_0

    move/from16 v2, p2

    goto :goto_0

    :cond_0
    move/from16 v2, p3

    .line 824
    .local v2, "next":I
    :goto_0
    if-eqz p5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    .line 825
    .local v3, "end":I
    :goto_1
    const/16 v4, 0xff

    const/4 v5, 0x0

    if-eqz p4, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    .line 827
    .local v6, "breakA":I
    :goto_2
    move/from16 v7, p2

    .line 828
    .local v7, "x":I
    move/from16 v8, p3

    .line 829
    .local v8, "y":I
    :goto_3
    if-eq v2, v3, :cond_7

    .line 830
    if-eqz p5, :cond_3

    .line 831
    move v7, v2

    goto :goto_4

    .line 833
    :cond_3
    move v8, v2

    .line 835
    :goto_4
    move-object/from16 v9, p1

    invoke-virtual {v9, v7, v8}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v10

    .line 836
    .local v10, "colint":I
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/graphics/Color;->set(I)Lcom/badlogic/gdx/graphics/Color;

    .line 837
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    aput v11, v1, v5

    .line 838
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/4 v13, 0x1

    aput v11, v1, v13

    .line 839
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/4 v14, 0x2

    aput v11, v1, v14

    .line 840
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/4 v12, 0x3

    aput v11, v1, v12

    .line 841
    aget v11, v1, v12

    if-ne v11, v6, :cond_4

    return v2

    .line 843
    :cond_4
    if-nez p4, :cond_6

    aget v11, v1, v5

    if-nez v11, :cond_5

    aget v11, v1, v13

    if-nez v11, :cond_5

    aget v11, v1, v14

    if-nez v11, :cond_5

    aget v11, v1, v12

    if-eq v11, v4, :cond_6

    :cond_5
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 845
    :cond_6
    nop

    .end local v10    # "colint":I
    add-int/lit8 v2, v2, 0x1

    .line 846
    goto :goto_3

    .line 848
    :cond_7
    move-object/from16 v9, p1

    return v5
.end method

.method private getSplits(Lcom/badlogic/gdx/graphics/Pixmap;)[I
    .locals 16
    .param p1, "raster"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 730
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v0

    .line 731
    .local v0, "startX":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v8, v0

    invoke-direct/range {v6 .. v11}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v1

    .line 732
    .local v1, "endX":I
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v2

    .line 733
    .local v2, "startY":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v11, v2

    invoke-direct/range {v8 .. v13}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v3

    .line 736
    .local v3, "endY":I
    add-int/lit8 v6, v1, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    .line 737
    add-int/lit8 v13, v3, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v15}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    .line 740
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    const/4 v4, 0x0

    return-object v4

    .line 743
    :cond_0
    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 744
    add-int/lit8 v0, v0, -0x1

    .line 745
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v5, v6

    .end local v1    # "endX":I
    .local v5, "endX":I
    goto :goto_0

    .line 748
    .end local v5    # "endX":I
    .restart local v1    # "endX":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    .line 750
    .end local v1    # "endX":I
    .restart local v5    # "endX":I
    :goto_0
    if-eqz v2, :cond_2

    .line 751
    add-int/lit8 v2, v2, -0x1

    .line 752
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v4

    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v1, v6

    .end local v3    # "endY":I
    .local v1, "endY":I
    goto :goto_1

    .line 755
    .end local v1    # "endY":I
    .restart local v3    # "endY":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v4

    .line 758
    .end local v3    # "endY":I
    .restart local v1    # "endY":I
    :goto_1
    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v6, 0x0

    aput v0, v3, v6

    const/4 v6, 0x1

    aput v5, v3, v6

    aput v2, v3, v4

    const/4 v4, 0x3

    aput v1, v3, v4

    return-object v3
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 3

    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 332
    .local v1, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v2, :cond_0

    .line 333
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 335
    .end local v1    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .end local p0    # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_0
    goto :goto_0

    .line 336
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized generateTextureAtlas(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 1
    .param p1, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "useMipMaps"    # Z

    monitor-enter p0

    .line 342
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>()V

    .line 343
    .local v0, "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-object v0

    .line 341
    .end local v0    # "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .end local p0    # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .end local p1    # "minFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p2    # "magFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p3    # "useMipMaps":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDuplicateBorder()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    return v0
.end method

.method public getPackToTexture()Z
    .locals 1

    .line 456
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    return v0
.end method

.method public getPadding()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    return v0
.end method

.method public declared-synchronized getPage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 311
    .local v1, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .local v2, "rect":Lcom/badlogic/gdx/math/Rectangle;
    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v1

    .line 313
    .end local v1    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .end local v2    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :cond_0
    goto :goto_0

    .line 314
    .end local p0    # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 309
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPageFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getPageHeight()I
    .locals 1

    .line 424
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    return v0
.end method

.method public declared-synchronized getPageIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .local v1, "rect":Lcom/badlogic/gdx/math/Rectangle;
    if-eqz v1, :cond_0

    monitor-exit p0

    return v0

    .line 321
    .end local v1    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_1
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 320
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPageWidth()I
    .locals 1

    .line 416
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    return v0
.end method

.method public getPages()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public declared-synchronized getRect(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 301
    .local v1, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .local v2, "rect":Lcom/badlogic/gdx/math/Rectangle;
    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v2

    .line 303
    .end local v1    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .end local v2    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :cond_0
    goto :goto_0

    .line 304
    .end local p0    # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 299
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTransparentColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->transparentColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public declared-synchronized pack(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 1
    .param p1, "image"    # Lcom/badlogic/gdx/graphics/Pixmap;

    monitor-enter p0

    .line 157
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 157
    .end local p0    # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .end local p1    # "image":Lcom/badlogic/gdx/graphics/Pixmap;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 29
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Lcom/badlogic/gdx/graphics/Pixmap;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    monitor-enter p0

    .line 167
    :try_start_0
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 168
    :cond_0
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getRect(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pixmap has already been packed with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    .end local p0    # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_2
    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_3

    const-string v2, ".9"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v12

    goto :goto_1

    :cond_3
    move v2, v11

    :goto_1
    move v13, v2

    .line 174
    .local v13, "isPatch":Z
    const/4 v2, 0x0

    .line 175
    .local v2, "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    if-eqz v13, :cond_4

    .line 176
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-direct {v3, v11, v11, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;-><init>(IIII)V

    move-object v14, v3

    .line 177
    .local v14, "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v15, v3

    .line 178
    .end local v2    # "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v15, "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 179
    invoke-direct {v1, v10}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplits(Lcom/badlogic/gdx/graphics/Pixmap;)[I

    move-result-object v2

    iput-object v2, v14, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    .line 180
    iget-object v2, v14, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    invoke-direct {v1, v10, v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getPads(Lcom/badlogic/gdx/graphics/Pixmap;[I)[I

    move-result-object v2

    iput-object v2, v14, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->pads:[I

    .line 181
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    add-int/lit8 v9, v2, -0x1

    move-object v2, v15

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 182
    move-object v2, v15

    .line 183
    .end local p2    # "image":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v2, "image":Lcom/badlogic/gdx/graphics/Pixmap;
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v11

    move-object v0, v3

    move-object v11, v14

    move-object v14, v2

    .end local p1    # "name":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    goto/16 :goto_11

    .line 185
    .end local v0    # "name":Ljava/lang/String;
    .end local v14    # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .end local v15    # "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v2, "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "image":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_4
    iget-boolean v3, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceX:Z

    if-nez v3, :cond_6

    iget-boolean v3, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceY:Z

    if-eqz v3, :cond_5

    goto :goto_2

    .line 244
    :cond_5
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v11, v11, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;-><init>(IIII)V

    move-object v14, v3

    move-object v15, v2

    move-object v11, v14

    move-object v14, v10

    .restart local v14    # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    goto/16 :goto_11

    .line 186
    .end local v14    # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    :cond_6
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v22

    .line 187
    .local v22, "originalWidth":I
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v23

    .line 189
    .local v23, "originalHeight":I
    const/4 v3, 0x0

    .line 190
    .local v3, "top":I
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    .line 191
    .local v4, "bottom":I
    iget-boolean v5, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceY:Z

    if-eqz v5, :cond_d

    .line 193
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 194
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 195
    invoke-virtual {v10, v6, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    .line 196
    .local v7, "pixel":I
    and-int/lit16 v8, v7, 0xff

    .line 197
    .local v8, "alpha":I
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v8, v9, :cond_7

    goto :goto_5

    .line 194
    .end local v7    # "pixel":I
    .end local v8    # "alpha":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 199
    .end local v6    # "x":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 193
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 202
    .end local v5    # "y":I
    :cond_9
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    .restart local v5    # "y":I
    :goto_6
    add-int/lit8 v5, v5, -0x1

    if-lt v5, v3, :cond_c

    .line 203
    const/4 v6, 0x0

    .restart local v6    # "x":I
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 204
    invoke-virtual {v10, v6, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    .line 205
    .restart local v7    # "pixel":I
    and-int/lit16 v8, v7, 0xff

    .line 206
    .restart local v8    # "alpha":I
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v8, v9, :cond_a

    goto :goto_8

    .line 203
    .end local v7    # "pixel":I
    .end local v8    # "alpha":I
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 208
    .end local v6    # "x":I
    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 211
    .end local v5    # "y":I
    :cond_c
    :goto_8
    move v11, v3

    move v14, v4

    goto :goto_9

    .line 191
    :cond_d
    move v11, v3

    move v14, v4

    .line 211
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    .local v11, "top":I
    .local v14, "bottom":I
    :goto_9
    const/4 v3, 0x0

    .line 212
    .local v3, "left":I
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    .line 213
    .local v4, "right":I
    iget-boolean v5, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceX:Z

    if-eqz v5, :cond_14

    .line 215
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_a
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_10

    .line 216
    move v6, v11

    .local v6, "y":I
    :goto_b
    if-ge v6, v14, :cond_f

    .line 217
    invoke-virtual {v10, v5, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    .line 218
    .restart local v7    # "pixel":I
    and-int/lit16 v8, v7, 0xff

    .line 219
    .restart local v8    # "alpha":I
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v8, v9, :cond_e

    goto :goto_c

    .line 216
    .end local v7    # "pixel":I
    .end local v8    # "alpha":I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 221
    .end local v6    # "y":I
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 215
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 224
    .end local v5    # "x":I
    :cond_10
    :goto_c
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    .restart local v5    # "x":I
    :goto_d
    add-int/lit8 v5, v5, -0x1

    if-lt v5, v3, :cond_13

    .line 225
    move v6, v11

    .restart local v6    # "y":I
    :goto_e
    if-ge v6, v14, :cond_12

    .line 226
    invoke-virtual {v10, v5, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    .line 227
    .restart local v7    # "pixel":I
    and-int/lit16 v8, v7, 0xff

    .line 228
    .restart local v8    # "alpha":I
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v8, v9, :cond_11

    goto :goto_f

    .line 225
    .end local v7    # "pixel":I
    .end local v8    # "alpha":I
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 230
    .end local v6    # "y":I
    :cond_12
    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    .line 234
    .end local v5    # "x":I
    :cond_13
    :goto_f
    move/from16 v24, v3

    move/from16 v25, v4

    goto :goto_10

    .line 213
    :cond_14
    move/from16 v24, v3

    move/from16 v25, v4

    .line 234
    .end local v3    # "left":I
    .end local v4    # "right":I
    .local v24, "left":I
    .local v25, "right":I
    :goto_10
    sub-int v15, v25, v24

    .line 235
    .local v15, "newWidth":I
    sub-int v9, v14, v11

    .line 237
    .local v9, "newHeight":I
    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    invoke-direct {v3, v15, v9, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v8, v3

    .line 238
    .end local v2    # "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v8, "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 239
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    move-object/from16 v3, p2

    move/from16 v6, v24

    move v7, v11

    move-object/from16 v26, v8

    .end local v8    # "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v26, "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    move v8, v15

    move/from16 v27, v9

    .end local v9    # "newHeight":I
    .local v27, "newHeight":I
    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 240
    move-object/from16 v2, v26

    .line 242
    .end local p2    # "image":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v2, "image":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v4, v15

    .end local v15    # "newWidth":I
    .local v4, "newWidth":I
    move-object v15, v3

    move/from16 v18, v4

    move/from16 v19, v27

    move/from16 v20, v24

    move/from16 v21, v11

    invoke-direct/range {v15 .. v23}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;-><init>(IIIIIIII)V

    move-object v14, v3

    .line 243
    .end local v4    # "newWidth":I
    .end local v11    # "top":I
    .end local v22    # "originalWidth":I
    .end local v23    # "originalHeight":I
    .end local v24    # "left":I
    .end local v25    # "right":I
    .end local v27    # "newHeight":I
    .local v14, "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    move-object v11, v14

    move-object/from16 v15, v26

    move-object v14, v2

    .line 248
    .end local v2    # "image":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v26    # "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local p1    # "name":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    .local v11, "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .local v14, "image":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v15, "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    :goto_11
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->getWidth()F

    move-result v2

    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1a

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->getHeight()F

    move-result v2

    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_15

    move-object/from16 v20, v11

    move/from16 v22, v13

    goto/16 :goto_14

    .line 253
    :cond_15
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    invoke-interface {v2, v1, v0, v11}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;->pack(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Ljava/lang/String;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    move-result-object v2

    move-object v10, v2

    .line 254
    .local v10, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    if-eqz v0, :cond_16

    .line 255
    iget-object v2, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v2, v0, v11}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v2, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 259
    :cond_16
    iget v2, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->x:F

    float-to-int v9, v2

    .local v9, "rectX":I
    iget v2, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->y:F

    float-to-int v8, v2

    .local v8, "rectY":I
    iget v2, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->width:F

    float-to-int v7, v2

    .local v7, "rectWidth":I
    iget v2, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->height:F

    float-to-int v6, v2

    .line 261
    .local v6, "rectHeight":I
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    if-eqz v2, :cond_17

    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    if-nez v2, :cond_17

    iget-object v2, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v2, :cond_17

    iget-boolean v2, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->dirty:Z

    if-nez v2, :cond_17

    .line 262
    iget-object v2, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 263
    sget-object v16, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v2, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Texture;->glTarget:I

    const/16 v18, 0x0

    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v23

    .line 264
    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v24

    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v25

    .line 263
    move/from16 v17, v2

    move/from16 v19, v9

    move/from16 v20, v8

    move/from16 v21, v7

    move/from16 v22, v6

    invoke-interface/range {v16 .. v25}, Lcom/badlogic/gdx/graphics/GL20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_12

    .line 266
    :cond_17
    iput-boolean v12, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->dirty:Z

    .line 268
    :goto_12
    iget-object v2, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v2, v14, v9, v8}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 270
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    if-eqz v2, :cond_18

    .line 271
    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    move v12, v2

    .local v12, "imageWidth":I
    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    move/from16 v16, v2

    .line 273
    .local v16, "imageHeight":I
    iget-object v2, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    add-int/lit8 v19, v9, -0x1

    add-int/lit8 v20, v8, -0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object v3, v14

    move/from16 v23, v6

    .end local v6    # "rectHeight":I
    .local v23, "rectHeight":I
    move/from16 v6, v17

    move/from16 v17, v7

    .end local v7    # "rectWidth":I
    .local v17, "rectWidth":I
    move/from16 v7, v18

    move/from16 v18, v8

    .end local v8    # "rectY":I
    .local v18, "rectY":I
    move/from16 v8, v19

    move/from16 v19, v9

    .end local v9    # "rectX":I
    .local v19, "rectX":I
    move/from16 v9, v20

    move-object/from16 v28, v10

    .end local v10    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .local v28, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    move/from16 v10, v21

    move-object/from16 v20, v11

    .end local v11    # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .local v20, "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    move/from16 v11, v22

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 274
    move-object/from16 v11, v28

    .end local v28    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .local v11, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v2, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v4, v12, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    add-int v8, v19, v17

    add-int/lit8 v9, v18, -0x1

    const/4 v10, 0x1

    const/16 v21, 0x1

    move-object v3, v14

    move/from16 v22, v13

    move-object v13, v11

    .end local v11    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .local v13, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .local v22, "isPatch":Z
    move/from16 v11, v21

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 275
    iget-object v2, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v4, 0x0

    add-int/lit8 v5, v16, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    add-int/lit8 v8, v19, -0x1

    add-int v9, v18, v23

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v3, v14

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 276
    iget-object v2, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v4, v12, -0x1

    add-int/lit8 v5, v16, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    add-int v8, v19, v17

    add-int v9, v18, v23

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v3, v14

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 278
    iget-object v2, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    add-int/lit8 v9, v18, -0x1

    const/4 v11, 0x1

    move-object v3, v14

    move v6, v12

    move/from16 v8, v19

    move/from16 v10, v17

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 279
    iget-object v2, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v4, 0x0

    add-int/lit8 v5, v16, -0x1

    const/4 v7, 0x1

    add-int v9, v18, v23

    const/4 v11, 0x1

    move-object v3, v14

    move v6, v12

    move/from16 v8, v19

    move/from16 v10, v17

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 280
    iget-object v2, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    add-int/lit8 v8, v19, -0x1

    const/4 v10, 0x1

    move-object v3, v14

    move/from16 v7, v16

    move/from16 v9, v18

    move/from16 v11, v23

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 281
    iget-object v2, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v4, v12, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    add-int v8, v19, v17

    const/4 v10, 0x1

    move-object v3, v14

    move/from16 v7, v16

    move/from16 v9, v18

    move/from16 v11, v23

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    goto :goto_13

    .line 270
    .end local v12    # "imageWidth":I
    .end local v16    # "imageHeight":I
    .end local v17    # "rectWidth":I
    .end local v18    # "rectY":I
    .end local v19    # "rectX":I
    .end local v20    # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .end local v22    # "isPatch":Z
    .end local v23    # "rectHeight":I
    .restart local v6    # "rectHeight":I
    .restart local v7    # "rectWidth":I
    .restart local v8    # "rectY":I
    .restart local v9    # "rectX":I
    .restart local v10    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .local v11, "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .local v13, "isPatch":Z
    :cond_18
    move/from16 v23, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v11

    move/from16 v22, v13

    move-object v13, v10

    .line 284
    .end local v6    # "rectHeight":I
    .end local v7    # "rectWidth":I
    .end local v8    # "rectY":I
    .end local v9    # "rectX":I
    .end local v10    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .end local v11    # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .local v13, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .restart local v17    # "rectWidth":I
    .restart local v18    # "rectY":I
    .restart local v19    # "rectX":I
    .restart local v20    # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .restart local v22    # "isPatch":Z
    .restart local v23    # "rectHeight":I
    :goto_13
    if-eqz v15, :cond_19

    .line 285
    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :cond_19
    monitor-exit p0

    return-object v20

    .line 248
    .end local v17    # "rectWidth":I
    .end local v18    # "rectY":I
    .end local v19    # "rectX":I
    .end local v20    # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .end local v22    # "isPatch":Z
    .end local v23    # "rectHeight":I
    .restart local v11    # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .local v13, "isPatch":Z
    :cond_1a
    move-object/from16 v20, v11

    move/from16 v22, v13

    .line 249
    .end local v11    # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .end local v13    # "isPatch":Z
    .restart local v20    # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .restart local v22    # "isPatch":Z
    :goto_14
    if-nez v0, :cond_1b

    :try_start_2
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Page size too small for pixmap."

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_1b
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Page size too small for pixmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .end local v0    # "name":Ljava/lang/String;
    .end local v14    # "image":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v15    # "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v20    # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .end local v22    # "isPatch":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDuplicateBorder(Z)V
    .locals 0
    .param p1, "duplicateBorder"    # Z

    .line 452
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    .line 453
    return-void
.end method

.method public setPackToTexture(Z)V
    .locals 0
    .param p1, "packToTexture"    # Z

    .line 463
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    .line 464
    return-void
.end method

.method public setPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 444
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    .line 445
    return-void
.end method

.method public setPageFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .locals 0
    .param p1, "pageFormat"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 436
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 437
    return-void
.end method

.method public setPageHeight(I)V
    .locals 0
    .param p1, "pageHeight"    # I

    .line 428
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    .line 429
    return-void
.end method

.method public setPageWidth(I)V
    .locals 0
    .param p1, "pageWidth"    # I

    .line 420
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    .line 421
    return-void
.end method

.method public setTransparentColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 725
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->transparentColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 726
    return-void
.end method

.method public sort(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "images":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Pixmap;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;->sort(Lcom/badlogic/gdx/utils/Array;)V

    .line 152
    return-void
.end method

.method public declared-synchronized updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .locals 2
    .param p1, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "useMipMaps"    # Z

    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 412
    .local v1, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->updateTexture(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 413
    .end local v1    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .end local p0    # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_0
    monitor-exit p0

    return-void

    .line 410
    .end local p1    # "minFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p2    # "magFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p3    # "useMipMaps":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .locals 6
    .param p1, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "useMipMaps"    # Z

    monitor-enter p0

    .line 353
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 352
    .end local p0    # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .end local p1    # "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .end local p2    # "minFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p3    # "magFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p4    # "useMipMaps":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;ZZ)V
    .locals 16
    .param p1, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "useMipMaps"    # Z
    .param p5, "useIndexes"    # Z

    move-object/from16 v1, p0

    monitor-enter p0

    .line 362
    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    :try_start_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 363
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 364
    .local v5, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v6, :cond_3

    .line 365
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 366
    .local v7, "name":Ljava/lang/String;
    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    .line 367
    .local v8, "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    new-instance v15, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-object v10, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v9, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->x:F

    float-to-int v11, v9

    iget v9, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->y:F

    float-to-int v12, v9

    iget v9, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->width:F

    float-to-int v13, v9

    iget v9, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->height:F

    float-to-int v14, v9

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    move-object v9, v15

    .line 369
    .local v9, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-object v10, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    if-eqz v10, :cond_0

    .line 370
    iget-object v10, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    iput-object v10, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->splits:[I

    .line 371
    iget-object v10, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->pads:[I

    iput-object v10, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->pads:[I

    .line 374
    .end local p0    # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_0
    const/4 v10, -0x1

    .line 375
    .local v10, "imageIndex":I
    move-object v11, v7

    .line 377
    .local v11, "imageName":Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 378
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->indexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 379
    .local v12, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 380
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 381
    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v10, v13

    .line 385
    .end local v12    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    iput-object v11, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    .line 386
    iput v10, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    .line 387
    iget v12, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->offsetX:I

    int-to-float v12, v12

    iput v12, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 388
    iget v12, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalHeight:I

    int-to-float v12, v12

    iget v13, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->height:F

    sub-float/2addr v12, v13

    iget v13, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->offsetY:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    float-to-int v12, v12

    int-to-float v12, v12

    iput v12, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 389
    iget v12, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalWidth:I

    iput v12, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    .line 390
    iget v12, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalHeight:I

    iput v12, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    .line 392
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 393
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .end local v9    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .end local v10    # "imageIndex":I
    .end local v11    # "imageName":Ljava/lang/String;
    goto :goto_1

    .line 394
    :cond_2
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getTextures()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v6

    iget-object v7, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local v5    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    :cond_3
    goto/16 :goto_0

    .line 398
    :cond_4
    monitor-exit p0

    return-void

    .line 361
    .end local p1    # "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .end local p2    # "minFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p3    # "magFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p4    # "useMipMaps":Z
    .end local p5    # "useIndexes":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateTextureRegions(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .locals 3
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "useMipMaps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Z)V"
        }
    .end annotation

    .local p1, "regions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureRegion;>;"
    monitor-enter p0

    .line 404
    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 405
    :goto_0
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    .line 406
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 407
    .end local p0    # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_0
    monitor-exit p0

    return-void

    .line 403
    .end local p1    # "regions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureRegion;>;"
    .end local p2    # "minFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p3    # "magFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p4    # "useMipMaps":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
