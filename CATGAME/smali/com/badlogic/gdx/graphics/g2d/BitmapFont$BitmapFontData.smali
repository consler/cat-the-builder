.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapFontData"
.end annotation


# instance fields
.field public ascent:F

.field public blankLineScale:F

.field public breakChars:[C

.field public capChars:[C

.field public capHeight:F

.field public cursorX:F

.field public descent:F

.field public down:F

.field public flipped:Z

.field public fontFile:Lcom/badlogic/gdx/files/FileHandle;

.field public final glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

.field public imagePaths:[Ljava/lang/String;

.field public lineHeight:F

.field public markupEnabled:Z

.field public missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

.field public name:Ljava/lang/String;

.field public padBottom:F

.field public padLeft:F

.field public padRight:F

.field public padTop:F

.field public scaleX:F

.field public scaleY:F

.field public spaceXadvance:F

.field public xChars:[C

.field public xHeight:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 455
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->blankLineScale:F

    .line 456
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    .line 462
    const/16 v1, 0x80

    new-array v1, v1, [[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 469
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    .line 473
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xChars:[C

    .line 474
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capChars:[C

    .line 480
    return-void

    :array_0
    .array-data 2
        0x78s
        0x65s
        0x61s
        0x6fs
        0x6es
        0x73s
        0x72s
        0x63s
        0x75s
        0x6ds
        0x76s
        0x77s
        0x7as
    .end array-data

    nop

    :array_1
    .array-data 2
        0x4ds
        0x4es
        0x42s
        0x44s
        0x43s
        0x45s
        0x46s
        0x4bs
        0x41s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4cs
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 2
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "flip"    # Z

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 455
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->blankLineScale:F

    .line 456
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    .line 462
    const/16 v1, 0x80

    new-array v1, v1, [[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 469
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    .line 473
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xChars:[C

    .line 474
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capChars:[C

    .line 483
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    .line 484
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    .line 485
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->load(Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 486
    return-void

    nop

    :array_0
    .array-data 2
        0x78s
        0x65s
        0x61s
        0x6fs
        0x6es
        0x73s
        0x72s
        0x63s
        0x75s
        0x6ds
        0x76s
        0x77s
        0x7as
    .end array-data

    nop

    :array_1
    .array-data 2
        0x4ds
        0x4es
        0x42s
        0x44s
        0x43s
        0x45s
        0x46s
        0x4bs
        0x41s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4cs
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method


# virtual methods
.method public getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .locals 9

    .line 800
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 801
    .local v4, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v4, :cond_0

    goto :goto_3

    .line 802
    :cond_0
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 803
    .local v7, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v7, :cond_2

    iget v8, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-eqz v8, :cond_2

    iget v8, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v8, :cond_1

    goto :goto_2

    .line 804
    :cond_1
    return-object v7

    .line 802
    .end local v7    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 800
    .end local v4    # "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 807
    :cond_4
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "No glyphs found."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontFile()Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    return-object v0
.end method

.method public getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .locals 2
    .param p1, "ch"    # C

    .line 820
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v1, p1, 0x200

    aget-object v0, v0, v1

    .line 821
    .local v0, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v0, :cond_0

    and-int/lit16 v1, p1, 0x1ff

    aget-object v1, v0, v1

    return-object v1

    .line 822
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V
    .locals 9
    .param p1, "run"    # Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "lastGlyph"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 830
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    .line 831
    .local v0, "markupEnabled":Z
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    .line 832
    .local v1, "scaleX":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 833
    .local v2, "missingGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 834
    .local v3, "glyphs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;>;"
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 837
    .local v4, "xAdvances":Lcom/badlogic/gdx/utils/FloatArray;
    sub-int v5, p4, p3

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 838
    sub-int v5, p4, p3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    .line 840
    :goto_0
    if-ge p3, p4, :cond_6

    .line 841
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "start":I
    .local v5, "start":I
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    .line 842
    .local p3, "ch":C
    const/16 v6, 0xd

    if-ne p3, v6, :cond_0

    goto :goto_1

    .line 843
    :cond_0
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v6

    .line 844
    .local v6, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v6, :cond_2

    .line 845
    if-nez v2, :cond_1

    .line 840
    .end local v6    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local p3    # "ch":C
    :goto_1
    move p3, v5

    goto :goto_0

    .line 846
    .restart local v6    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local p3    # "ch":C
    :cond_1
    move-object v6, v2

    .line 849
    :cond_2
    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 851
    if-nez p5, :cond_4

    .line 852
    iget-boolean v7, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    iget v7, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr v7, v8

    :goto_2
    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_3

    .line 854
    :cond_4
    iget v7, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    invoke-virtual {p5, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v1

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 855
    :goto_3
    move-object p5, v6

    .line 858
    if-eqz v0, :cond_5

    const/16 v7, 0x5b

    if-ne p3, v7, :cond_5

    if-ge v5, p4, :cond_5

    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    move p3, v5

    goto :goto_4

    .line 859
    .end local v6    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local p3    # "ch":C
    :cond_5
    move p3, v5

    .end local v5    # "start":I
    .local p3, "start":I
    :goto_4
    goto :goto_0

    .line 860
    :cond_6
    if-eqz p5, :cond_8

    .line 861
    iget-boolean v5, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz v5, :cond_7

    iget v5, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    goto :goto_5

    :cond_7
    iget v5, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v6, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v1

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float/2addr v5, v6

    .line 863
    .local v5, "lastGlyphWidth":F
    :goto_5
    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 865
    .end local v5    # "lastGlyphWidth":F
    :cond_8
    return-void
.end method

.method public getImagePath(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 903
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getImagePaths()[Ljava/lang/String;
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getWrapIndex(Lcom/badlogic/gdx/utils/Array;I)I
    .locals 3
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;",
            ">;I)I"
        }
    .end annotation

    .line 870
    .local p1, "glyphs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;>;"
    add-int/lit8 v0, p2, -0x1

    .line 871
    .local v0, "i":I
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v1, v1

    .line 872
    .local v1, "ch":C
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 873
    :cond_0
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isBreakChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 874
    :cond_1
    :goto_0
    if-lez v0, :cond_4

    .line 875
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v1, v2

    .line 876
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isBreakChar(C)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    return v2

    .line 877
    :cond_2
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    return v2

    .line 874
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 879
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method public hasGlyph(C)Z
    .locals 2
    .param p1, "ch"    # C

    .line 812
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 813
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBreakChar(C)Z
    .locals 5
    .param p1, "c"    # C

    .line 883
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->breakChars:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 884
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v0, v3

    .line 885
    .local v4, "br":C
    if-ne p1, v4, :cond_1

    const/4 v0, 0x1

    return v0

    .line 884
    .end local v4    # "br":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 886
    :cond_2
    return v1
.end method

.method public isWhitespace(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 890
    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    .line 897
    const/4 v0, 0x0

    return v0

    .line 895
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 29
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "flip"    # Z

    .line 489
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    if-nez v2, :cond_2b

    .line 491
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->name:Ljava/lang/String;

    .line 493
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 495
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2a

    .line 498
    const-string v4, "padding="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 499
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v7, ","

    const/4 v8, 0x4

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 500
    .local v5, "padding":[Ljava/lang/String;
    array-length v7, v5

    if-ne v7, v8, :cond_29

    .line 501
    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iput v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    .line 502
    const/4 v7, 0x1

    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    iput v8, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    .line 503
    const/4 v8, 0x2

    aget-object v9, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    iput v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    .line 504
    const/4 v9, 0x3

    aget-object v10, v5, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    iput v10, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    .line 505
    iget v10, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    iget v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    add-float/2addr v10, v11

    .line 507
    .local v10, "padY":F
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 508
    if-eqz v3, :cond_28

    .line 509
    const-string v11, " "

    const/16 v12, 0x9

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 512
    .local v11, "common":[Ljava/lang/String;
    array-length v12, v11

    if-lt v12, v9, :cond_27

    .line 514
    aget-object v9, v11, v7

    const-string v12, "lineHeight="

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 515
    aget-object v9, v11, v7

    const/16 v12, 0xb

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    iput v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    .line 517
    aget-object v9, v11, v8

    const-string v12, "base="

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 518
    aget-object v8, v11, v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    .line 520
    .local v8, "baseLine":F
    const/4 v12, 0x1

    .line 521
    .local v12, "pageCount":I
    array-length v13, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v14, 0x6

    if-lt v13, v14, :cond_0

    :try_start_1
    aget-object v13, v11, v9

    if-eqz v13, :cond_0

    aget-object v13, v11, v9

    const-string v15, "pages="

    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_0

    .line 523
    :try_start_2
    aget-object v9, v11, v9

    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v12, v9

    .line 525
    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    goto :goto_0

    .line 719
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "padding":[Ljava/lang/String;
    .end local v8    # "baseLine":F
    .end local v10    # "padY":F
    .end local v11    # "common":[Ljava/lang/String;
    .end local v12    # "pageCount":I
    :catchall_0
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v22, v2

    move-object v2, v0

    goto/16 :goto_1a

    .line 716
    :catch_1
    move-exception v0

    move-object/from16 v22, v2

    move-object v2, v0

    goto/16 :goto_19

    .line 528
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "padding":[Ljava/lang/String;
    .restart local v8    # "baseLine":F
    .restart local v10    # "padY":F
    .restart local v11    # "common":[Ljava/lang/String;
    .restart local v12    # "pageCount":I
    :cond_0
    :goto_0
    :try_start_3
    new-array v9, v12, [Ljava/lang/String;

    iput-object v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 531
    const/4 v9, 0x0

    .local v9, "p":I
    :goto_1
    if-ge v9, v12, :cond_5

    .line 533
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    .line 534
    if-eqz v3, :cond_4

    .line 537
    const-string v13, ".*id=(\\d+)"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 538
    .local v13, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 539
    invoke-virtual {v13, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 541
    .local v14, "id":Ljava/lang/String;
    :try_start_5
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 542
    .local v15, "pageID":I
    if-ne v15, v9, :cond_1

    .line 545
    .end local v15    # "pageID":I
    goto :goto_2

    .line 542
    .restart local v15    # "pageID":I
    :cond_1
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Page IDs must be indices starting at 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "padding":[Ljava/lang/String;
    .end local v8    # "baseLine":F
    .end local v9    # "p":I
    .end local v10    # "padY":F
    .end local v11    # "common":[Ljava/lang/String;
    .end local v12    # "pageCount":I
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    .end local v14    # "id":Ljava/lang/String;
    .end local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local p2    # "flip":Z
    throw v4
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 543
    .end local v15    # "pageID":I
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "padding":[Ljava/lang/String;
    .restart local v8    # "baseLine":F
    .restart local v9    # "p":I
    .restart local v10    # "padY":F
    .restart local v11    # "common":[Ljava/lang/String;
    .restart local v12    # "pageCount":I
    .restart local v13    # "matcher":Ljava/util/regex/Matcher;
    .restart local v14    # "id":Ljava/lang/String;
    .restart local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p2    # "flip":Z
    :catch_2
    move-exception v0

    move-object v4, v0

    .line 544
    .local v4, "ex":Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid page id: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local p2    # "flip":Z
    throw v6

    .line 548
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    .end local v14    # "id":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p2    # "flip":Z
    :cond_2
    :goto_2
    const-string v14, ".*file=\"?([^\"]+)\"?"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    move-object v13, v14

    .line 549
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 550
    invoke-virtual {v13, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 552
    .local v14, "fileName":Ljava/lang/String;
    iget-object v15, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\\\"

    const-string v4, "/"

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v9

    .line 531
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    .end local v14    # "fileName":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    const/16 v4, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 549
    .restart local v13    # "matcher":Ljava/util/regex/Matcher;
    :cond_3
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v6, "Missing: file"

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local p2    # "flip":Z
    throw v4

    .line 534
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p2    # "flip":Z
    :cond_4
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v6, "Missing additional page definitions."

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local p2    # "flip":Z
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 554
    .end local v9    # "p":I
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p2    # "flip":Z
    :cond_5
    const/4 v4, 0x0

    :try_start_7
    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    .line 557
    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v3, v4

    .line 558
    const-string v4, "metrics "

    const v6, 0xffff

    const-string v7, " ="

    if-nez v3, :cond_6

    goto :goto_4

    .line 559
    :cond_6
    :try_start_8
    const-string v9, "kernings "

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_4

    .line 560
    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 605
    :goto_4
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    add-float/2addr v9, v13

    iput v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    .line 608
    :goto_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 609
    if-nez v3, :cond_8

    goto :goto_6

    .line 610
    :cond_8
    const-string v9, "kerning "

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v9, :cond_1b

    .line 627
    :goto_6
    const/4 v6, 0x0

    .line 628
    .local v6, "hasMetricsOverride":Z
    const/4 v9, 0x0

    .line 629
    .local v9, "overrideAscent":F
    const/4 v13, 0x0

    .line 630
    .local v13, "overrideDescent":F
    const/4 v14, 0x0

    .line 631
    .local v14, "overrideDown":F
    const/4 v15, 0x0

    .line 632
    .local v15, "overrideCapHeight":F
    const/16 v16, 0x0

    .line 633
    .local v16, "overrideLineHeight":F
    const/16 v18, 0x0

    .line 634
    .local v18, "overrideSpaceXAdvance":F
    const/16 v19, 0x0

    .line 637
    .local v19, "overrideXHeight":F
    if-eqz v3, :cond_9

    :try_start_9
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 639
    const/4 v6, 0x1

    .line 641
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .local v4, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 643
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 644
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v9, v7

    .line 645
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 646
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v13, v7

    .line 647
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 648
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v14, v7

    .line 649
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 650
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v15, v7

    .line 651
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 652
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move/from16 v16, v7

    .line 653
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 654
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move/from16 v18, v7

    .line 655
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 656
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move/from16 v19, v7

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v16, v5

    move/from16 v5, v19

    goto :goto_7

    .line 659
    .end local v4    # "tokens":Ljava/util/StringTokenizer;
    :cond_9
    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v16, v5

    move/from16 v5, v19

    .end local v18    # "overrideSpaceXAdvance":F
    .end local v19    # "overrideXHeight":F
    .local v4, "overrideLineHeight":F
    .local v5, "overrideXHeight":F
    .local v7, "overrideSpaceXAdvance":F
    .local v16, "padding":[Ljava/lang/String;
    :goto_7
    move-object/from16 v18, v11

    const/16 v11, 0x20

    .end local v11    # "common":[Ljava/lang/String;
    .local v18, "common":[Ljava/lang/String;
    :try_start_a
    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v19
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v11, v19

    .line 660
    .local v11, "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v11, :cond_b

    .line 661
    :try_start_b
    new-instance v19, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    move-object/from16 v11, v19

    .line 662
    move/from16 v19, v12

    const/16 v12, 0x20

    .end local v12    # "pageCount":I
    .local v19, "pageCount":I
    iput v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    .line 663
    const/16 v12, 0x6c

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v12

    .line 664
    .local v12, "xadvanceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v20

    move-object/from16 v12, v20

    .line 665
    :cond_a
    move-object/from16 v20, v3

    .end local v3    # "line":Ljava/lang/String;
    .local v20, "line":Ljava/lang/String;
    iget v3, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    iput v3, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 666
    const/16 v3, 0x20

    invoke-virtual {v1, v3, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_8

    .line 660
    .end local v19    # "pageCount":I
    .end local v20    # "line":Ljava/lang/String;
    .restart local v3    # "line":Ljava/lang/String;
    .local v12, "pageCount":I
    :cond_b
    move-object/from16 v20, v3

    move/from16 v19, v12

    .line 668
    .end local v3    # "line":Ljava/lang/String;
    .end local v12    # "pageCount":I
    .restart local v19    # "pageCount":I
    .restart local v20    # "line":Ljava/lang/String;
    :goto_8
    :try_start_c
    iget v3, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-nez v3, :cond_c

    .line 669
    :try_start_d
    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    iget v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v12, v12

    add-float/2addr v3, v12

    iget v12, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    add-float/2addr v3, v12

    float-to-int v3, v3

    iput v3, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 670
    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    neg-float v3, v3

    float-to-int v3, v3

    iput v3, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 672
    :cond_c
    :try_start_e
    iget v3, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v3, v3

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    .line 674
    const/4 v3, 0x0

    .line 675
    .local v3, "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget-object v12, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xChars:[C

    move-object/from16 v17, v3

    .end local v3    # "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v17, "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    array-length v3, v12
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object/from16 v21, v11

    const/4 v11, 0x0

    .end local v11    # "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v21, "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :goto_9
    if-ge v11, v3, :cond_e

    :try_start_f
    aget-char v22, v12, v11

    move/from16 v23, v22

    .line 676
    .local v23, "xChar":C
    move/from16 v22, v3

    move/from16 v3, v23

    .end local v23    # "xChar":C
    .local v3, "xChar":C
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v23

    move-object/from16 v17, v23

    .line 677
    if-eqz v17, :cond_d

    goto :goto_a

    .line 675
    .end local v3    # "xChar":C
    :cond_d
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v22

    goto :goto_9

    .line 679
    :cond_e
    :goto_a
    if-nez v17, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object/from16 v17, v3

    goto :goto_b

    :cond_f
    move-object/from16 v3, v17

    .line 680
    .end local v17    # "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v3, "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :goto_b
    :try_start_10
    iget v11, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v11, v11

    sub-float/2addr v11, v10

    iput v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    .line 682
    const/4 v11, 0x0

    .line 683
    .local v11, "capGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget-object v12, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capChars:[C

    move-object/from16 v17, v3

    .end local v3    # "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v17    # "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    array-length v3, v12
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object/from16 v22, v11

    const/4 v11, 0x0

    .end local v11    # "capGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v22, "capGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :goto_c
    if-ge v11, v3, :cond_11

    :try_start_11
    aget-char v23, v12, v11

    move/from16 v24, v23

    .line 684
    .local v24, "capChar":C
    move/from16 v23, v3

    move/from16 v3, v24

    .end local v24    # "capChar":C
    .local v3, "capChar":C
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v24
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-object/from16 v22, v24

    .line 685
    if-eqz v22, :cond_10

    move-object/from16 v11, v22

    goto :goto_d

    .line 683
    .end local v3    # "capChar":C
    :cond_10
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v23

    goto :goto_c

    :cond_11
    move-object/from16 v11, v22

    .line 687
    .end local v22    # "capGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v11    # "capGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :goto_d
    if-nez v11, :cond_18

    .line 688
    :try_start_12
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    array-length v12, v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object/from16 v22, v2

    const/4 v2, 0x0

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v22, "reader":Ljava/io/BufferedReader;
    :goto_e
    if-ge v2, v12, :cond_17

    :try_start_13
    aget-object v23, v3, v2

    move-object/from16 v24, v23

    .line 689
    .local v24, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    move-object/from16 v23, v3

    move-object/from16 v3, v24

    .end local v24    # "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v3, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v3, :cond_12

    move/from16 v25, v5

    move/from16 v28, v7

    move/from16 v24, v12

    goto :goto_11

    .line 690
    :cond_12
    move/from16 v24, v12

    array-length v12, v3

    move/from16 v25, v5

    const/4 v5, 0x0

    .end local v5    # "overrideXHeight":F
    .local v25, "overrideXHeight":F
    :goto_f
    if-ge v5, v12, :cond_16

    aget-object v26, v3, v5

    move-object/from16 v27, v26

    .line 691
    .local v27, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    move-object/from16 v26, v3

    move-object/from16 v3, v27

    .end local v27    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v3, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v26, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v3, :cond_15

    move/from16 v27, v12

    iget v12, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-eqz v12, :cond_14

    iget v12, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v12, :cond_13

    move/from16 v28, v7

    goto :goto_10

    .line 692
    :cond_13
    iget v12, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    move/from16 v28, v7

    .end local v7    # "overrideSpaceXAdvance":F
    .local v28, "overrideSpaceXAdvance":F
    iget v7, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v7, v7

    invoke-static {v12, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    goto :goto_10

    .line 691
    .end local v28    # "overrideSpaceXAdvance":F
    .restart local v7    # "overrideSpaceXAdvance":F
    :cond_14
    move/from16 v28, v7

    goto :goto_10

    :cond_15
    move/from16 v28, v7

    move/from16 v27, v12

    .line 690
    .end local v3    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v7    # "overrideSpaceXAdvance":F
    .restart local v28    # "overrideSpaceXAdvance":F
    :goto_10
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v26

    move/from16 v12, v27

    move/from16 v7, v28

    goto :goto_f

    .end local v26    # "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v28    # "overrideSpaceXAdvance":F
    .local v3, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v7    # "overrideSpaceXAdvance":F
    :cond_16
    move-object/from16 v26, v3

    move/from16 v28, v7

    .line 688
    .end local v3    # "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v7    # "overrideSpaceXAdvance":F
    .restart local v28    # "overrideSpaceXAdvance":F
    :goto_11
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v23

    move/from16 v12, v24

    move/from16 v5, v25

    move/from16 v7, v28

    goto :goto_e

    .end local v25    # "overrideXHeight":F
    .end local v28    # "overrideSpaceXAdvance":F
    .restart local v5    # "overrideXHeight":F
    .restart local v7    # "overrideSpaceXAdvance":F
    :cond_17
    move/from16 v25, v5

    move/from16 v28, v7

    .end local v5    # "overrideXHeight":F
    .end local v7    # "overrideSpaceXAdvance":F
    .restart local v25    # "overrideXHeight":F
    .restart local v28    # "overrideSpaceXAdvance":F
    goto :goto_12

    .line 696
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .end local v25    # "overrideXHeight":F
    .end local v28    # "overrideSpaceXAdvance":F
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "overrideXHeight":F
    .restart local v7    # "overrideSpaceXAdvance":F
    :cond_18
    move-object/from16 v22, v2

    move/from16 v25, v5

    move/from16 v28, v7

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "overrideXHeight":F
    .end local v7    # "overrideSpaceXAdvance":F
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    .restart local v25    # "overrideXHeight":F
    .restart local v28    # "overrideSpaceXAdvance":F
    iget v2, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v2, v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 697
    :goto_12
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    sub-float/2addr v2, v10

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 699
    sub-float v2, v8, v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    .line 700
    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    neg-float v3, v3

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 701
    if-eqz p2, :cond_19

    .line 702
    neg-float v2, v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    .line 703
    neg-float v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 706
    :cond_19
    if-eqz v6, :cond_1a

    .line 707
    iput v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    .line 708
    iput v13, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    .line 709
    iput v14, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 710
    iput v15, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 711
    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    .line 712
    move/from16 v2, v28

    .end local v28    # "overrideSpaceXAdvance":F
    .local v2, "overrideSpaceXAdvance":F
    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    .line 713
    move/from16 v3, v25

    .end local v25    # "overrideXHeight":F
    .local v3, "overrideXHeight":F
    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_13

    .line 706
    .end local v2    # "overrideSpaceXAdvance":F
    .end local v3    # "overrideXHeight":F
    .restart local v25    # "overrideXHeight":F
    .restart local v28    # "overrideSpaceXAdvance":F
    :cond_1a
    move/from16 v3, v25

    move/from16 v2, v28

    .line 719
    .end local v4    # "overrideLineHeight":F
    .end local v6    # "hasMetricsOverride":Z
    .end local v8    # "baseLine":F
    .end local v9    # "overrideAscent":F
    .end local v10    # "padY":F
    .end local v11    # "capGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v13    # "overrideDescent":F
    .end local v14    # "overrideDown":F
    .end local v15    # "overrideCapHeight":F
    .end local v16    # "padding":[Ljava/lang/String;
    .end local v17    # "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v18    # "common":[Ljava/lang/String;
    .end local v19    # "pageCount":I
    .end local v20    # "line":Ljava/lang/String;
    .end local v21    # "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v25    # "overrideXHeight":F
    .end local v28    # "overrideSpaceXAdvance":F
    :goto_13
    invoke-static/range {v22 .. v22}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 720
    nop

    .line 721
    return-void

    .line 612
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    .local v3, "line":Ljava/lang/String;
    .local v5, "padding":[Ljava/lang/String;
    .restart local v8    # "baseLine":F
    .restart local v10    # "padY":F
    .local v11, "common":[Ljava/lang/String;
    .restart local v12    # "pageCount":I
    :cond_1b
    move-object/from16 v22, v2

    move-object/from16 v20, v3

    move-object/from16 v16, v5

    move-object/from16 v18, v11

    move/from16 v19, v12

    const/16 v3, 0x20

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "padding":[Ljava/lang/String;
    .end local v11    # "common":[Ljava/lang/String;
    .end local v12    # "pageCount":I
    .restart local v16    # "padding":[Ljava/lang/String;
    .restart local v18    # "common":[Ljava/lang/String;
    .restart local v19    # "pageCount":I
    .restart local v20    # "line":Ljava/lang/String;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    :try_start_14
    new-instance v2, Ljava/util/StringTokenizer;

    move-object/from16 v5, v20

    .end local v20    # "line":Ljava/lang/String;
    .local v5, "line":Ljava/lang/String;
    invoke-direct {v2, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .local v2, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 614
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 615
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 616
    .local v9, "first":I
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 617
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 618
    .local v11, "second":I
    if-ltz v9, :cond_1d

    if-gt v9, v6, :cond_1d

    if-ltz v11, :cond_1d

    if-le v11, v6, :cond_1c

    goto :goto_14

    .line 619
    :cond_1c
    int-to-char v12, v9

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v12

    .line 620
    .local v12, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 621
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 622
    .local v13, "amount":I
    if-eqz v12, :cond_1d

    .line 623
    invoke-virtual {v12, v11, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->setKerning(II)V

    .line 608
    .end local v2    # "tokens":Ljava/util/StringTokenizer;
    .end local v9    # "first":I
    .end local v11    # "second":I
    .end local v12    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v13    # "amount":I
    :cond_1d
    :goto_14
    move-object v3, v5

    move-object/from16 v5, v16

    move-object/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v2, v22

    goto/16 :goto_5

    .line 561
    .end local v16    # "padding":[Ljava/lang/String;
    .end local v18    # "common":[Ljava/lang/String;
    .end local v19    # "pageCount":I
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .local v5, "padding":[Ljava/lang/String;
    .local v11, "common":[Ljava/lang/String;
    .local v12, "pageCount":I
    :cond_1e
    move-object/from16 v22, v2

    move-object/from16 v16, v5

    move-object/from16 v18, v11

    move/from16 v19, v12

    const/16 v2, 0x20

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "padding":[Ljava/lang/String;
    .end local v11    # "common":[Ljava/lang/String;
    .end local v12    # "pageCount":I
    .restart local v16    # "padding":[Ljava/lang/String;
    .restart local v18    # "common":[Ljava/lang/String;
    .restart local v19    # "pageCount":I
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    const-string v4, "char "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto/16 :goto_18

    .line 563
    :cond_1f
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    .line 565
    .local v4, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .local v5, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 567
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 568
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 569
    .local v7, "ch":I
    if-gtz v7, :cond_20

    .line 570
    iput-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    goto :goto_15

    .line 571
    :cond_20
    if-gt v7, v6, :cond_24

    .line 572
    invoke-virtual {v1, v7, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 575
    :goto_15
    iput v7, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    .line 576
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 577
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    .line 578
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 579
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    .line 580
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 581
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 582
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 583
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 584
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 585
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    .line 586
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 587
    if-eqz p2, :cond_21

    .line 588
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    goto :goto_16

    .line 590
    :cond_21
    iget v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v6, v9

    neg-int v6, v6

    iput v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    .line 591
    :goto_16
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 592
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 595
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 596
    :cond_22
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-eqz v6, :cond_23

    .line 598
    :try_start_15
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 600
    goto :goto_17

    .line 599
    :catch_3
    move-exception v0

    .line 603
    :cond_23
    :goto_17
    :try_start_16
    iget v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-lez v6, :cond_24

    iget v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-lez v6, :cond_24

    iget v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v6, v6

    add-float/2addr v6, v8

    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    .line 557
    .end local v4    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v5    # "tokens":Ljava/util/StringTokenizer;
    .end local v7    # "ch":I
    :cond_24
    :goto_18
    move-object/from16 v5, v16

    move-object/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v2, v22

    goto/16 :goto_3

    .line 517
    .end local v8    # "baseLine":F
    .end local v16    # "padding":[Ljava/lang/String;
    .end local v18    # "common":[Ljava/lang/String;
    .end local v19    # "pageCount":I
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .local v5, "padding":[Ljava/lang/String;
    .restart local v11    # "common":[Ljava/lang/String;
    :cond_25
    move-object/from16 v22, v2

    move-object/from16 v16, v5

    move-object/from16 v18, v11

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "padding":[Ljava/lang/String;
    .end local v11    # "common":[Ljava/lang/String;
    .restart local v16    # "padding":[Ljava/lang/String;
    .restart local v18    # "common":[Ljava/lang/String;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Missing: base"

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v22    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local p2    # "flip":Z
    throw v2

    .line 514
    .end local v16    # "padding":[Ljava/lang/String;
    .end local v18    # "common":[Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "padding":[Ljava/lang/String;
    .restart local v11    # "common":[Ljava/lang/String;
    .restart local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p2    # "flip":Z
    :cond_26
    move-object/from16 v22, v2

    move-object/from16 v16, v5

    move-object/from16 v18, v11

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "padding":[Ljava/lang/String;
    .end local v11    # "common":[Ljava/lang/String;
    .restart local v16    # "padding":[Ljava/lang/String;
    .restart local v18    # "common":[Ljava/lang/String;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Missing: lineHeight"

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v22    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local p2    # "flip":Z
    throw v2

    .line 512
    .end local v16    # "padding":[Ljava/lang/String;
    .end local v18    # "common":[Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "padding":[Ljava/lang/String;
    .restart local v11    # "common":[Ljava/lang/String;
    .restart local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p2    # "flip":Z
    :cond_27
    move-object/from16 v22, v2

    move-object/from16 v16, v5

    move-object/from16 v18, v11

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "padding":[Ljava/lang/String;
    .end local v11    # "common":[Ljava/lang/String;
    .restart local v16    # "padding":[Ljava/lang/String;
    .restart local v18    # "common":[Ljava/lang/String;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Invalid common header."

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v22    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local p2    # "flip":Z
    throw v2

    .line 508
    .end local v16    # "padding":[Ljava/lang/String;
    .end local v18    # "common":[Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "padding":[Ljava/lang/String;
    .restart local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p2    # "flip":Z
    :cond_28
    move-object/from16 v22, v2

    move-object/from16 v16, v5

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "padding":[Ljava/lang/String;
    .restart local v16    # "padding":[Ljava/lang/String;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Missing common header."

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v22    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local p2    # "flip":Z
    throw v2

    .line 500
    .end local v10    # "padY":F
    .end local v16    # "padding":[Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "padding":[Ljava/lang/String;
    .restart local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p2    # "flip":Z
    :cond_29
    move-object/from16 v22, v2

    move-object/from16 v16, v5

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "padding":[Ljava/lang/String;
    .restart local v16    # "padding":[Ljava/lang/String;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Invalid padding."

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v22    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local p2    # "flip":Z
    throw v2

    .line 496
    .end local v16    # "padding":[Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p2    # "flip":Z
    :cond_2a
    move-object/from16 v22, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "File is empty."

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v22    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local p2    # "flip":Z
    throw v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 716
    .end local v3    # "line":Ljava/lang/String;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p2    # "flip":Z
    :catch_4
    move-exception v0

    move-object v2, v0

    goto :goto_19

    .line 719
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v5, p1

    move-object v2, v0

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    goto :goto_1a

    .line 716
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v0

    move-object/from16 v22, v2

    move-object v2, v0

    .line 717
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    :goto_19
    :try_start_17
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading font file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    move-object/from16 v5, p1

    :try_start_18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v22    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local p2    # "flip":Z
    throw v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 719
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p2    # "flip":Z
    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_1a

    :catchall_3
    move-exception v0

    move-object/from16 v5, p1

    move-object v2, v0

    :goto_1a
    invoke-static/range {v22 .. v22}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .line 489
    .end local v22    # "reader":Ljava/io/BufferedReader;
    :cond_2b
    move-object/from16 v5, p1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already loaded."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public scale(F)V
    .locals 2
    .param p1, "amount"    # F

    .line 950
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    .line 951
    return-void
.end method

.method public setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V
    .locals 4
    .param p1, "ch"    # I
    .param p2, "glyph"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 794
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v1, p1, 0x200

    aget-object v1, v0, v1

    .line 795
    .local v1, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v1, :cond_0

    div-int/lit16 v2, p1, 0x200

    const/16 v3, 0x200

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-object v1, v3

    aput-object v3, v0, v2

    .line 796
    :cond_0
    and-int/lit16 v0, p1, 0x1ff

    aput-object p2, v1, v0

    .line 797
    return-void
.end method

.method public setGlyphRegion(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 18
    .param p1, "glyph"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .param p2, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 724
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    .line 725
    .local v2, "texture":Lcom/badlogic/gdx/graphics/Texture;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 726
    .local v3, "invTexWidth":F
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 728
    .local v4, "invTexHeight":F
    const/4 v5, 0x0

    .local v5, "offsetX":F
    const/4 v6, 0x0

    .line 729
    .local v6, "offsetY":F
    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 730
    .local v7, "u":F
    iget v8, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 731
    .local v8, "v":F
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v9

    int-to-float v9, v9

    .line 732
    .local v9, "regionWidth":F
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v10

    int-to-float v10, v10

    .line 733
    .local v10, "regionHeight":F
    instance-of v11, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v11, :cond_0

    .line 735
    move-object v11, v1

    check-cast v11, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 736
    .local v11, "atlasRegion":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget v5, v11, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 737
    iget v12, v11, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    iget v13, v11, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    iget v13, v11, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float v6, v12, v13

    .line 740
    .end local v11    # "atlasRegion":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_0
    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    int-to-float v11, v11

    .line 741
    .local v11, "x":F
    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    .line 742
    .local v12, "x2":F
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    int-to-float v13, v13

    .line 743
    .local v13, "y":F
    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    .line 747
    .local v14, "y2":F
    const/4 v15, 0x0

    cmpl-float v16, v5, v15

    if-lez v16, :cond_2

    .line 748
    sub-float/2addr v11, v5

    .line 749
    cmpg-float v16, v11, v15

    if-gez v16, :cond_1

    .line 750
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v15, v15

    add-float/2addr v15, v11

    float-to-int v15, v15

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 751
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v15, v15

    sub-float/2addr v15, v11

    float-to-int v15, v15

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    .line 752
    const/4 v11, 0x0

    .line 754
    :cond_1
    sub-float/2addr v12, v5

    .line 755
    cmpl-float v15, v12, v9

    if-lez v15, :cond_2

    .line 756
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v15, v15

    sub-float v17, v12, v9

    sub-float v15, v15, v17

    float-to-int v15, v15

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 757
    move v12, v9

    .line 760
    :cond_2
    const/4 v15, 0x0

    cmpl-float v16, v6, v15

    if-lez v16, :cond_5

    .line 761
    sub-float/2addr v13, v6

    .line 762
    cmpg-float v15, v13, v15

    if-gez v15, :cond_4

    .line 763
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v15, v15

    add-float/2addr v15, v13

    float-to-int v15, v15

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 764
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-gez v15, :cond_3

    const/4 v15, 0x0

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 765
    :cond_3
    const/4 v13, 0x0

    .line 767
    :cond_4
    sub-float/2addr v14, v6

    .line 768
    cmpl-float v15, v14, v10

    if-lez v15, :cond_5

    .line 769
    sub-float v15, v14, v10

    .line 770
    .local v15, "amount":F
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, v15

    float-to-int v1, v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 771
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    add-float/2addr v1, v15

    float-to-int v1, v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    .line 772
    move v14, v10

    .line 776
    .end local v15    # "amount":F
    :cond_5
    mul-float v1, v11, v3

    add-float/2addr v1, v7

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    .line 777
    mul-float v1, v12, v3

    add-float/2addr v1, v7

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    .line 778
    move-object/from16 v1, p0

    iget-boolean v15, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    if-eqz v15, :cond_6

    .line 779
    mul-float v15, v13, v4

    add-float/2addr v15, v8

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    .line 780
    mul-float v15, v14, v4

    add-float/2addr v15, v8

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    goto :goto_0

    .line 782
    :cond_6
    mul-float v15, v13, v4

    add-float/2addr v15, v8

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    .line 783
    mul-float v15, v14, v4

    add-float/2addr v15, v8

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    .line 785
    :goto_0
    return-void
.end method

.method public setLineHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .line 789
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    .line 790
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    neg-float v0, v0

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 791
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scaleXY"    # F

    .line 943
    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    .line 944
    return-void
.end method

.method public setScale(FF)V
    .locals 3
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 920
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    .line 921
    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 922
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    div-float v0, p1, v0

    .line 923
    .local v0, "x":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float v1, p2, v1

    .line 924
    .local v1, "y":F
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    .line 925
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    .line 926
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    .line 927
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 928
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    .line 929
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    .line 930
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 931
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    .line 932
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    .line 933
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    .line 934
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    .line 935
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    .line 936
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    .line 937
    return-void

    .line 921
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scaleY cannot be 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scaleX cannot be 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
