.class public Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
.super Ljava/lang/Object;
.source "GlyphLayout.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    }
.end annotation


# instance fields
.field private final colorStack:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field public height:F

.field public final runs:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            ">;"
        }
    .end annotation
.end field

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "str"    # Ljava/lang/CharSequence;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V
    .locals 2
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "targetWidth"    # F
    .param p7, "halign"    # I
    .param p8, "wrap"    # Z
    .param p9, "truncate"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    .line 57
    invoke-virtual/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V
    .locals 2
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "targetWidth"    # F
    .param p5, "halign"    # I
    .param p6, "wrap"    # Z

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    .line 51
    invoke-virtual/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V

    .line 52
    return-void
.end method

.method private adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V
    .locals 4
    .param p1, "fontData"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .param p2, "run"    # Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 420
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 421
    .local v0, "last":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz v1, :cond_0

    return-void

    .line 422
    :cond_0
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float/2addr v1, v2

    .line 423
    .local v1, "width":F
    iget v2, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    iget-object v3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/FloatArray;->peek()F

    move-result v3

    sub-float v3, v1, v3

    add-float/2addr v2, v3

    iput v2, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    .line 424
    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/utils/FloatArray;->set(IF)V

    .line 425
    return-void
.end method

.method private parseColorMarkup(Ljava/lang/CharSequence;IILcom/badlogic/gdx/utils/Pool;)I
    .locals 7
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;)I"
        }
    .end annotation

    .line 428
    .local p4, "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    const/4 v0, -0x1

    if-ne p2, p3, :cond_0

    return v0

    .line 429
    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    const/16 v3, 0x5d

    if-eq v1, v2, :cond_7

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_6

    if-eq v1, v3, :cond_4

    .line 464
    move v1, p2

    .line 465
    .local v1, "colorStart":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_3

    .line 466
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 467
    .local v4, "ch":C
    if-eq v4, v3, :cond_1

    .line 465
    .end local v4    # "ch":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    .restart local v4    # "ch":C
    :cond_1
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/Colors;->get(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    .line 469
    .local v3, "namedColor":Lcom/badlogic/gdx/graphics/Color;
    if-nez v3, :cond_2

    return v0

    .line 470
    :cond_2
    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    .line 471
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 472
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 473
    sub-int v5, v2, p2

    return v5

    .line 475
    .end local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local v2    # "i":I
    .end local v3    # "namedColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v4    # "ch":C
    :cond_3
    return v0

    .line 460
    .end local v1    # "colorStart":I
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 461
    :cond_5
    const/4 v0, 0x0

    return v0

    .line 458
    :cond_6
    const/4 v0, -0x2

    return v0

    .line 432
    :cond_7
    const/4 v1, 0x0

    .line 433
    .local v1, "colorInt":I
    add-int/lit8 v2, p2, 0x1

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, p3, :cond_e

    .line 434
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 435
    .restart local v4    # "ch":C
    if-ne v4, v3, :cond_b

    .line 436
    add-int/lit8 v3, p2, 0x2

    if-lt v2, v3, :cond_e

    add-int/lit8 v3, p2, 0x9

    if-le v2, v3, :cond_8

    goto :goto_4

    .line 437
    :cond_8
    sub-int v0, v2, p2

    const/4 v3, 0x7

    if-gt v0, v3, :cond_a

    .line 438
    const/4 v0, 0x0

    .local v0, "ii":I
    sub-int v3, v2, p2

    rsub-int/lit8 v3, v3, 0x9

    .local v3, "nn":I
    :goto_2
    if-ge v0, v3, :cond_9

    .line 439
    shl-int/lit8 v1, v1, 0x4

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 440
    .end local v0    # "ii":I
    .end local v3    # "nn":I
    :cond_9
    or-int/lit16 v1, v1, 0xff

    .line 442
    :cond_a
    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    .line 443
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 444
    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->rgba8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    .line 445
    sub-int v3, v2, p2

    return v3

    .line 447
    .end local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_b
    const/16 v5, 0x30

    if-lt v4, v5, :cond_c

    const/16 v5, 0x39

    if-gt v4, v5, :cond_c

    .line 448
    mul-int/lit8 v5, v1, 0x10

    add-int/lit8 v6, v4, -0x30

    add-int/2addr v5, v6

    move v1, v5

    .end local v1    # "colorInt":I
    .local v5, "colorInt":I
    goto :goto_3

    .line 449
    .end local v5    # "colorInt":I
    .restart local v1    # "colorInt":I
    :cond_c
    const/16 v5, 0x61

    if-lt v4, v5, :cond_d

    const/16 v5, 0x66

    if-gt v4, v5, :cond_d

    .line 450
    mul-int/lit8 v5, v1, 0x10

    add-int/lit8 v6, v4, -0x57

    add-int/2addr v5, v6

    move v1, v5

    .end local v1    # "colorInt":I
    .restart local v5    # "colorInt":I
    goto :goto_3

    .line 451
    .end local v5    # "colorInt":I
    .restart local v1    # "colorInt":I
    :cond_d
    const/16 v5, 0x41

    if-lt v4, v5, :cond_e

    const/16 v5, 0x46

    if-gt v4, v5, :cond_e

    .line 452
    mul-int/lit8 v5, v1, 0x10

    add-int/lit8 v6, v4, -0x37

    add-int/2addr v5, v6

    move v1, v5

    .line 433
    .end local v4    # "ch":C
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 456
    .end local v2    # "i":I
    :cond_e
    :goto_4
    return v0
.end method

.method private truncate(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;FLjava/lang/String;ILcom/badlogic/gdx/utils/Pool;)V
    .locals 8
    .param p1, "fontData"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .param p2, "run"    # Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .param p3, "targetWidth"    # F
    .param p4, "truncate"    # Ljava/lang/String;
    .param p5, "widthIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            "F",
            "Ljava/lang/String;",
            "I",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            ">;)V"
        }
    .end annotation

    .line 316
    .local p6, "glyphRunPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    invoke-virtual {p6}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 317
    .local v0, "truncateRun":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v0

    move-object v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, "truncateWidth":F
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lez v2, :cond_0

    .line 320
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    .line 321
    const/4 v2, 0x1

    .local v2, "i":I
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 322
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v4

    add-float/2addr v1, v4

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_0
    sub-float/2addr p3, v1

    .line 327
    const/4 v2, 0x0

    .line 328
    .local v2, "count":I
    iget v3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    .line 329
    .local v3, "width":F
    :goto_1
    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v2, v4, :cond_2

    .line 330
    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v4

    .line 331
    .local v4, "xAdvance":F
    add-float/2addr v3, v4

    .line 332
    cmpl-float v5, v3, p3

    if-lez v5, :cond_1

    .line 333
    iget v5, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    sub-float v5, v3, v5

    sub-float/2addr v5, v4

    iput v5, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    .line 334
    goto :goto_2

    .line 336
    :cond_1
    nop

    .end local v4    # "xAdvance":F
    add-int/lit8 v2, v2, 0x1

    .line 337
    goto :goto_1

    .line 339
    :cond_2
    :goto_2
    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    .line 341
    iget-object v5, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    .line 342
    iget-object v5, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/FloatArray;->truncate(I)V

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    .line 344
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v5, v5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lez v5, :cond_4

    iget-object v5, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v7, v7, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v7, v4

    invoke-virtual {v5, v6, v4, v7}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;II)V

    goto :goto_3

    .line 347
    :cond_3
    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 348
    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 349
    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 350
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lez v4, :cond_4

    iget v4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    .line 352
    :cond_4
    :goto_3
    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 353
    iget v4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-float/2addr v4, v1

    iput v4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    .line 355
    invoke-virtual {p6, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 356
    return-void
.end method

.method private wrap(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;Lcom/badlogic/gdx/utils/Pool;II)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .locals 14
    .param p1, "fontData"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .param p2, "first"    # Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .param p4, "wrapIndex"    # I
    .param p5, "widthIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            ">;II)",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;"
        }
    .end annotation

    .line 361
    .local p3, "glyphRunPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    move-object v0, p1

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 362
    .local v2, "glyphs2":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;>;"
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 363
    .local v3, "glyphCount":I
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 366
    .local v4, "xAdvances2":Lcom/badlogic/gdx/utils/FloatArray;
    move/from16 v5, p4

    .line 367
    .local v5, "firstEnd":I
    :goto_0
    if-lez v5, :cond_1

    .line 368
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 367
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 371
    :cond_1
    :goto_1
    move/from16 v6, p4

    .line 372
    .local v6, "secondStart":I
    :goto_2
    if-ge v6, v3, :cond_3

    .line 373
    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_3

    .line 372
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 376
    :cond_3
    :goto_3
    move/from16 v7, p5

    .end local p5    # "widthIndex":I
    .local v7, "widthIndex":I
    :goto_4
    if-ge v7, v5, :cond_4

    .line 377
    iget v8, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "widthIndex":I
    .local v9, "widthIndex":I
    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v7

    add-float/2addr v8, v7

    iput v8, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    move v7, v9

    goto :goto_4

    .line 380
    .end local v9    # "widthIndex":I
    .restart local v7    # "widthIndex":I
    :cond_4
    add-int/lit8 v8, v5, 0x1

    .local v8, "n":I
    :goto_5
    if-le v7, v8, :cond_5

    .line 381
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    goto :goto_5

    .line 385
    .end local v8    # "n":I
    :cond_5
    const/4 v8, 0x0

    .line 386
    .local v8, "second":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    if-ge v6, v3, :cond_6

    .line 387
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 388
    iget-object v9, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v10, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 390
    iget-object v9, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 391
    .local v9, "glyphs1":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;>;"
    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10, v5}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;II)V

    .line 392
    add-int/lit8 v11, v6, -0x1

    invoke-virtual {v2, v10, v11}, Lcom/badlogic/gdx/utils/Array;->removeRange(II)V

    .line 393
    iput-object v9, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 394
    iput-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 396
    iget-object v11, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 397
    .local v11, "xAdvances1":Lcom/badlogic/gdx/utils/FloatArray;
    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v11, v4, v10, v12}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;II)V

    .line 398
    const/4 v12, 0x1

    invoke-virtual {v4, v12, v6}, Lcom/badlogic/gdx/utils/FloatArray;->removeRange(II)V

    .line 399
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v12, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int v12, v12

    int-to-float v12, v12

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v12, v13

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr v12, v13

    invoke-virtual {v4, v10, v12}, Lcom/badlogic/gdx/utils/FloatArray;->set(IF)V

    .line 400
    iput-object v11, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 401
    iput-object v4, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 402
    .end local v9    # "glyphs1":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;>;"
    .end local v11    # "xAdvances1":Lcom/badlogic/gdx/utils/FloatArray;
    goto :goto_6

    .line 404
    :cond_6
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    .line 405
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/FloatArray;->truncate(I)V

    .line 408
    :goto_6
    if-nez v5, :cond_7

    .line 410
    move-object/from16 v9, p3

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 411
    move-object v10, p0

    iget-object v11, v10, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    goto :goto_7

    .line 413
    :cond_7
    move-object v10, p0

    move-object/from16 v9, p3

    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    .line 415
    :goto_7
    return-object v8
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 479
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 480
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 482
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    .line 483
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    .line 484
    return-void
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V
    .locals 10
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "str"    # Ljava/lang/CharSequence;

    .line 63
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    .line 64
    return-void
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V
    .locals 35
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "targetWidth"    # F
    .param p7, "halign"    # I
    .param p8, "wrap"    # Z
    .param p9, "truncate"    # Ljava/lang/String;

    .line 83
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v10, p1

    iget-object v11, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 85
    .local v11, "fontData":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    if-eqz p9, :cond_0

    .line 86
    const/4 v0, 0x1

    move v12, v0

    .end local p8    # "wrap":Z
    .local v0, "wrap":Z
    goto :goto_0

    .line 87
    .end local v0    # "wrap":Z
    .restart local p8    # "wrap":Z
    :cond_0
    iget v0, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_1

    .line 88
    const/4 v0, 0x0

    move v12, v0

    .end local p8    # "wrap":Z
    .restart local v0    # "wrap":Z
    goto :goto_0

    .line 87
    .end local v0    # "wrap":Z
    .restart local p8    # "wrap":Z
    :cond_1
    move/from16 v12, p8

    .line 90
    .end local p8    # "wrap":Z
    .local v12, "wrap":Z
    :goto_0
    iget-boolean v13, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    .line 92
    .local v13, "markupEnabled":Z
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v14

    .line 93
    .local v14, "glyphRunPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    iget-object v15, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    .line 94
    .local v15, "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 95
    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 97
    const/4 v0, 0x0

    .local v0, "x":F
    const/4 v1, 0x0

    .local v1, "y":F
    const/4 v2, 0x0

    .line 98
    .local v2, "width":F
    const/4 v3, 0x0

    .local v3, "lines":I
    const/4 v4, 0x0

    .line 99
    .local v4, "blankLines":I
    const/4 v5, 0x0

    .line 101
    .local v5, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget-object v6, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    .line 102
    .local v6, "colorStack":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Color;>;"
    move-object/from16 v16, p5

    .line 103
    .local v16, "nextColor":Lcom/badlogic/gdx/graphics/Color;
    move/from16 p8, v0

    move-object/from16 v0, p5

    .end local v0    # "x":F
    .local p8, "x":F
    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 104
    const-class v17, Lcom/badlogic/gdx/graphics/Color;

    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v10

    .line 106
    .local v10, "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    move/from16 v17, p3

    move/from16 v18, v3

    move v3, v4

    move v4, v1

    move-object/from16 v1, v16

    move/from16 v16, p8

    move/from16 p8, v12

    move/from16 v12, v17

    move/from16 v17, v2

    move-object v2, v5

    move-object v5, v0

    move/from16 v0, p3

    .line 110
    .end local p3    # "start":I
    .end local p5    # "color":Lcom/badlogic/gdx/graphics/Color;
    .local v0, "start":I
    .local v1, "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .local v2, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v3, "blankLines":I
    .local v4, "y":F
    .local v5, "color":Lcom/badlogic/gdx/graphics/Color;
    .local v12, "runStart":I
    .local v16, "x":F
    .local v17, "width":F
    .local v18, "lines":I
    .local p8, "wrap":Z
    :goto_1
    const/16 v19, -0x1

    .line 111
    .local v19, "runEnd":I
    const/16 v20, 0x0

    .line 112
    .local v20, "newline":Z
    move-object/from16 v21, v15

    .end local v15    # "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .local v21, "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    if-ne v0, v9, :cond_3

    .line 113
    if-ne v12, v9, :cond_2

    move v8, v3

    move-object/from16 v26, v5

    move/from16 v31, v12

    move/from16 v29, v13

    move/from16 v3, v16

    move/from16 v9, v17

    move/from16 v5, v18

    move-object/from16 v13, v21

    move-object v12, v6

    goto/16 :goto_9

    .line 114
    :cond_2
    move/from16 v19, p4

    move v15, v0

    move-object/from16 v22, v1

    move/from16 v1, v19

    goto :goto_3

    .line 116
    :cond_3
    add-int/lit8 v15, v0, 0x1

    .end local v0    # "start":I
    .local v15, "start":I
    invoke-interface {v8, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move-object/from16 v22, v1

    .end local v1    # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .local v22, "nextColor":Lcom/badlogic/gdx/graphics/Color;
    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 124
    :cond_4
    if-eqz v13, :cond_6

    .line 125
    invoke-direct {v7, v8, v15, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->parseColorMarkup(Ljava/lang/CharSequence;IILcom/badlogic/gdx/utils/Pool;)I

    move-result v0

    .line 126
    .local v0, "length":I
    if-ltz v0, :cond_5

    .line 127
    add-int/lit8 v19, v15, -0x1

    .line 128
    add-int/lit8 v1, v0, 0x1

    add-int/2addr v15, v1

    .line 129
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v22, v1

    move/from16 v1, v19

    .end local v22    # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v1    # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_3

    .line 130
    .end local v1    # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v22    # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_5
    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    .line 131
    add-int/lit8 v1, v15, 0x1

    .line 132
    .end local v15    # "start":I
    .local v1, "start":I
    move v0, v1

    move-object/from16 v15, v21

    move-object/from16 v1, v22

    goto :goto_1

    .line 139
    .end local v0    # "length":I
    .end local v1    # "start":I
    .restart local v15    # "start":I
    :cond_6
    :goto_2
    move/from16 v1, v19

    goto :goto_3

    .line 119
    :cond_7
    add-int/lit8 v19, v15, -0x1

    .line 120
    const/16 v20, 0x1

    .line 121
    move/from16 v1, v19

    .line 139
    .end local v19    # "runEnd":I
    .local v1, "runEnd":I
    :goto_3
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2c

    .line 141
    if-eq v1, v12, :cond_29

    .line 143
    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 144
    .local v0, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    move/from16 v19, v1

    .end local v1    # "runEnd":I
    .restart local v19    # "runEnd":I
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 145
    move-object v1, v0

    .end local v0    # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v1, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    move-object v0, v11

    move/from16 v23, v19

    move-object/from16 v19, v1

    .end local v1    # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v19, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v23, "runEnd":I
    move-object/from16 v24, v2

    .end local v2    # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v24, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    move-object/from16 v2, p2

    move v8, v3

    .end local v3    # "blankLines":I
    .local v8, "blankLines":I
    move v3, v12

    move-object/from16 v25, v6

    move v6, v4

    .end local v4    # "y":F
    .local v6, "y":F
    .local v25, "colorStack":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Color;>;"
    move/from16 v4, v23

    move-object/from16 v26, v5

    .end local v5    # "color":Lcom/badlogic/gdx/graphics/Color;
    .local v26, "color":Lcom/badlogic/gdx/graphics/Color;
    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 146
    move-object/from16 v0, v19

    .end local v19    # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .restart local v0    # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_8

    .line 147
    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 148
    move-object/from16 v32, v10

    move/from16 v31, v12

    move/from16 v29, v13

    move/from16 v30, v15

    move-object/from16 v13, v21

    move-object/from16 v2, v24

    move-object/from16 v12, v25

    move/from16 v25, v23

    goto/16 :goto_18

    .line 150
    :cond_8
    move-object/from16 v2, v24

    .end local v24    # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v2    # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v2, :cond_a

    .line 151
    iget-boolean v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz v1, :cond_9

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    iget v3, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v1, v3

    goto :goto_4

    :cond_9
    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v1, v3

    iget v3, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float/2addr v1, v3

    :goto_4
    sub-float v16, v16, v1

    move/from16 v1, v16

    goto :goto_5

    .line 150
    :cond_a
    move/from16 v1, v16

    .line 154
    .end local v16    # "x":F
    .local v1, "x":F
    :goto_5
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 155
    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    .line 156
    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    .line 157
    if-nez v20, :cond_b

    move/from16 v5, v23

    .end local v23    # "runEnd":I
    .local v5, "runEnd":I
    if-ne v5, v9, :cond_c

    goto :goto_6

    .end local v5    # "runEnd":I
    .restart local v23    # "runEnd":I
    :cond_b
    move/from16 v5, v23

    .end local v23    # "runEnd":I
    .restart local v5    # "runEnd":I
    :goto_6
    invoke-direct {v7, v11, v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    .line 158
    :cond_c
    move-object/from16 v4, v21

    .end local v21    # "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .local v4, "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 160
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 161
    .local v3, "xAdvances":[F
    move-object/from16 v16, v2

    .end local v2    # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v16, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 162
    .local v2, "n":I
    if-nez p8, :cond_e

    .line 163
    const/16 v19, 0x0

    .line 164
    .local v19, "runWidth":F
    const/16 v21, 0x0

    move-object/from16 v23, v4

    move/from16 v4, v19

    move/from16 v19, v5

    move/from16 v5, v21

    .local v4, "runWidth":F
    .local v5, "i":I
    .local v19, "runEnd":I
    .local v23, "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    :goto_7
    if-ge v5, v2, :cond_d

    .line 165
    aget v21, v3, v5

    add-float v4, v4, v21

    .line 164
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 166
    .end local v5    # "i":I
    :cond_d
    add-float/2addr v1, v4

    .line 167
    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    .line 168
    move v4, v6

    move-object/from16 v32, v10

    move/from16 v31, v12

    move/from16 v29, v13

    move/from16 v30, v15

    move-object/from16 v2, v16

    move/from16 v9, v17

    move-object/from16 v13, v23

    move-object/from16 v12, v25

    move/from16 v25, v19

    goto/16 :goto_19

    .line 172
    .end local v19    # "runEnd":I
    .end local v23    # "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .local v4, "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .local v5, "runEnd":I
    :cond_e
    move-object/from16 v23, v4

    move/from16 v19, v5

    .end local v4    # "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .end local v5    # "runEnd":I
    .restart local v19    # "runEnd":I
    .restart local v23    # "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    const/4 v4, 0x0

    aget v5, v3, v4

    add-float/2addr v1, v5

    .line 173
    aget v5, v3, v4

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    .line 174
    const/4 v4, 0x1

    if-ge v2, v4, :cond_f

    move v4, v6

    move-object/from16 v32, v10

    move/from16 v31, v12

    move/from16 v29, v13

    move/from16 v30, v15

    move-object/from16 v2, v16

    move/from16 v9, v17

    move-object/from16 v13, v23

    move-object/from16 v12, v25

    move/from16 v25, v19

    goto/16 :goto_19

    .line 175
    :cond_f
    aget v5, v3, v4

    add-float/2addr v1, v5

    .line 176
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    aget v21, v3, v4

    add-float v5, v5, v21

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    .line 177
    const/4 v4, 0x2

    move/from16 v21, v1

    move v5, v2

    move/from16 v24, v18

    move/from16 v18, v6

    move-object v6, v0

    move/from16 v34, v17

    move-object/from16 v17, v3

    move/from16 v3, v34

    .end local v0    # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .end local v1    # "x":F
    .end local v2    # "n":I
    .local v3, "width":F
    .local v4, "i":I
    .local v5, "n":I
    .local v6, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v17, "xAdvances":[F
    .local v18, "y":F
    .local v21, "x":F
    .local v24, "lines":I
    :goto_8
    if-ge v4, v5, :cond_28

    .line 178
    iget-object v0, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 179
    .local v2, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget v0, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v0, v1

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float v27, v0, v1

    .line 180
    .local v27, "glyphWidth":F
    add-float v0, v21, v27

    cmpg-float v0, v0, p6

    if-gtz v0, :cond_10

    .line 182
    aget v0, v17, v4

    add-float v21, v21, v0

    .line 183
    iget v0, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    aget v1, v17, v4

    add-float/2addr v0, v1

    iput v0, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    .line 184
    move-object/from16 v32, v10

    move/from16 v31, v12

    move/from16 v29, v13

    move/from16 v30, v15

    move-object/from16 v13, v23

    move-object/from16 v12, v25

    move-object v10, v6

    move/from16 v25, v19

    move v6, v4

    const/4 v4, 0x0

    goto/16 :goto_17

    .line 187
    :cond_10
    if-eqz p9, :cond_1b

    .line 189
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v28, v2

    .end local v2    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v28, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    move-object v2, v6

    move v9, v3

    .end local v3    # "width":F
    .local v9, "width":F
    move/from16 v3, p6

    move/from16 v29, v13

    move-object/from16 v13, v23

    move/from16 v23, v4

    .end local v4    # "i":I
    .local v13, "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .local v23, "i":I
    .local v29, "markupEnabled":Z
    move-object/from16 v4, p9

    move/from16 v30, v15

    move/from16 v15, v19

    move/from16 v19, v5

    .end local v5    # "n":I
    .local v15, "runEnd":I
    .local v19, "n":I
    .local v30, "start":I
    move/from16 v5, v23

    move/from16 v31, v12

    move-object/from16 v12, v25

    move/from16 v25, v15

    move-object v15, v6

    .end local v6    # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v12, "colorStack":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v15, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v25, "runEnd":I
    .local v31, "runStart":I
    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->truncate(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;FLjava/lang/String;ILcom/badlogic/gdx/utils/Pool;)V

    .line 190
    iget v0, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    iget v1, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-float/2addr v0, v1

    .line 191
    .end local v21    # "x":F
    .local v0, "x":F
    move v3, v0

    move-object/from16 v2, v16

    move/from16 v4, v18

    move-object/from16 v1, v22

    move/from16 v5, v24

    move/from16 v0, v30

    .line 275
    .end local v15    # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .end local v16    # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v17    # "xAdvances":[F
    .end local v18    # "y":F
    .end local v19    # "n":I
    .end local v20    # "newline":Z
    .end local v22    # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v23    # "i":I
    .end local v24    # "lines":I
    .end local v25    # "runEnd":I
    .end local v27    # "glyphWidth":F
    .end local v28    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v30    # "start":I
    .local v0, "start":I
    .local v1, "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .local v2, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v3, "x":F
    .local v4, "y":F
    .local v5, "lines":I
    :goto_9
    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 277
    .end local v9    # "width":F
    .local v6, "width":F
    const/4 v9, 0x1

    .local v9, "i":I
    iget v15, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v15, "n":I
    :goto_a
    if-ge v9, v15, :cond_11

    .line 278
    move/from16 v16, v0

    .end local v0    # "start":I
    .local v16, "start":I
    invoke-virtual {v12, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 277
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v16

    goto :goto_a

    .end local v16    # "start":I
    .restart local v0    # "start":I
    :cond_11
    move/from16 v16, v0

    .line 279
    .end local v0    # "start":I
    .end local v9    # "i":I
    .end local v15    # "n":I
    .restart local v16    # "start":I
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 282
    and-int/lit8 v0, p7, 0x8

    if-nez v0, :cond_18

    .line 283
    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_12

    const/4 v15, 0x1

    goto :goto_b

    :cond_12
    const/4 v15, 0x0

    :goto_b
    move v0, v15

    .line 284
    .local v0, "center":Z
    const/4 v9, 0x0

    .local v9, "lineWidth":F
    const/high16 v15, -0x31000000

    .line 285
    .local v15, "lineY":F
    const/16 v17, 0x0

    move-object/from16 v18, v1

    .end local v1    # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .local v17, "lineStart":I
    .local v18, "nextColor":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 286
    .local v1, "n":I
    const/16 v19, 0x0

    move/from16 v34, v19

    move-object/from16 v19, v2

    move/from16 v2, v34

    .local v2, "i":I
    .local v19, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :goto_c
    const/high16 v20, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_16

    .line 287
    invoke-virtual {v13, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v3

    .end local v3    # "x":F
    .local v22, "x":F
    move-object/from16 v3, v21

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 288
    .local v3, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    move/from16 v21, v4

    .end local v4    # "y":F
    .local v21, "y":F
    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    cmpl-float v4, v4, v15

    if-eqz v4, :cond_15

    .line 289
    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    .line 290
    .end local v15    # "lineY":F
    .local v4, "lineY":F
    sub-float v15, p6, v9

    .line 291
    .local v15, "shift":F
    if-eqz v0, :cond_13

    div-float v15, v15, v20

    :cond_13
    move/from16 v23, v4

    move/from16 v4, v17

    .line 292
    .end local v17    # "lineStart":I
    .local v4, "lineStart":I
    .local v23, "lineY":F
    :goto_d
    if-ge v4, v2, :cond_14

    .line 293
    add-int/lit8 v17, v4, 0x1

    .end local v4    # "lineStart":I
    .restart local v17    # "lineStart":I
    invoke-virtual {v13, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    move-object/from16 v32, v10

    .end local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v32, "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    iget v10, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    add-float/2addr v10, v15

    iput v10, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    move/from16 v4, v17

    move-object/from16 v10, v32

    goto :goto_d

    .line 294
    .end local v17    # "lineStart":I
    .end local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .restart local v4    # "lineStart":I
    .restart local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    :cond_14
    move-object/from16 v32, v10

    .end local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .restart local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    const/4 v9, 0x0

    move/from16 v17, v4

    move/from16 v15, v23

    goto :goto_e

    .line 288
    .end local v4    # "lineStart":I
    .end local v23    # "lineY":F
    .end local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .restart local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v15, "lineY":F
    .restart local v17    # "lineStart":I
    :cond_15
    move-object/from16 v32, v10

    .line 296
    .end local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .restart local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    :goto_e
    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    iget v10, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-float/2addr v4, v10

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 286
    .end local v3    # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v21

    move/from16 v3, v22

    move-object/from16 v10, v32

    goto :goto_c

    .end local v21    # "y":F
    .end local v22    # "x":F
    .end local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v3, "x":F
    .local v4, "y":F
    .restart local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    :cond_16
    move/from16 v22, v3

    move/from16 v21, v4

    move-object/from16 v32, v10

    .line 298
    .end local v2    # "i":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .restart local v21    # "y":F
    .restart local v22    # "x":F
    .restart local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    sub-float v2, p6, v9

    .line 299
    .local v2, "shift":F
    if-eqz v0, :cond_17

    div-float v2, v2, v20

    :cond_17
    move/from16 v3, v17

    .line 300
    .end local v17    # "lineStart":I
    .local v3, "lineStart":I
    :goto_f
    if-ge v3, v1, :cond_19

    .line 301
    add-int/lit8 v17, v3, 0x1

    .end local v3    # "lineStart":I
    .restart local v17    # "lineStart":I
    invoke-virtual {v13, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    add-float/2addr v4, v2

    iput v4, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    move/from16 v3, v17

    goto :goto_f

    .line 282
    .end local v0    # "center":Z
    .end local v9    # "lineWidth":F
    .end local v15    # "lineY":F
    .end local v17    # "lineStart":I
    .end local v18    # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v19    # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v21    # "y":F
    .end local v22    # "x":F
    .end local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v1, "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .local v2, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v3, "x":F
    .restart local v4    # "y":F
    .restart local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    :cond_18
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v22, v3

    move/from16 v21, v4

    move-object/from16 v32, v10

    .line 304
    .end local v1    # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v2    # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .restart local v18    # "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v19    # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v21    # "y":F
    .restart local v22    # "x":F
    .restart local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    :cond_19
    iput v6, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    .line 305
    iget-boolean v0, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    if-eqz v0, :cond_1a

    .line 306
    iget v0, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    int-to-float v1, v5

    iget v2, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, v8

    iget v2, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    mul-float/2addr v1, v2

    iget v2, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->blankLineScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    goto :goto_10

    .line 308
    :cond_1a
    iget v0, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    int-to-float v1, v5

    iget v2, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, v8

    iget v2, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    iget v2, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->blankLineScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    .line 309
    :goto_10
    return-void

    .line 195
    .end local v29    # "markupEnabled":Z
    .end local v31    # "runStart":I
    .end local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v2, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v3, "width":F
    .local v4, "i":I
    .local v5, "n":I
    .local v6, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .restart local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v12, "runStart":I
    .local v13, "markupEnabled":Z
    .local v15, "start":I
    .local v16, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v17, "xAdvances":[F
    .local v18, "y":F
    .local v19, "runEnd":I
    .restart local v20    # "newline":Z
    .local v21, "x":F
    .local v22, "nextColor":Lcom/badlogic/gdx/graphics/Color;
    .local v23, "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .restart local v24    # "lines":I
    .local v25, "colorStack":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Color;>;"
    .restart local v27    # "glyphWidth":F
    :cond_1b
    move-object/from16 v28, v2

    move v9, v3

    move-object/from16 v32, v10

    move/from16 v31, v12

    move/from16 v29, v13

    move/from16 v30, v15

    move-object/from16 v13, v23

    move-object/from16 v12, v25

    move/from16 v23, v4

    move-object v15, v6

    move/from16 v25, v19

    move/from16 v19, v5

    .end local v2    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v3    # "width":F
    .end local v4    # "i":I
    .end local v5    # "n":I
    .end local v6    # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .end local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v9, "width":F
    .local v12, "colorStack":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v13, "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .local v15, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v19, "n":I
    .local v23, "i":I
    .local v25, "runEnd":I
    .restart local v28    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v29    # "markupEnabled":Z
    .restart local v30    # "start":I
    .restart local v31    # "runStart":I
    .restart local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    iget-object v0, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    move/from16 v6, v23

    .end local v23    # "i":I
    .local v6, "i":I
    invoke-virtual {v11, v0, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getWrapIndex(Lcom/badlogic/gdx/utils/Array;I)I

    move-result v0

    .line 196
    .local v0, "wrapIndex":I
    iget v1, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    const/4 v10, 0x0

    cmpl-float v1, v1, v10

    if-nez v1, :cond_1c

    if-eqz v0, :cond_1d

    :cond_1c
    iget-object v1, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v0, v1, :cond_1e

    .line 198
    :cond_1d
    add-int/lit8 v0, v6, -0x1

    move/from16 v23, v0

    goto :goto_11

    .line 196
    :cond_1e
    move/from16 v23, v0

    .line 201
    .end local v0    # "wrapIndex":I
    .local v23, "wrapIndex":I
    :goto_11
    if-nez v23, :cond_25

    .line 202
    move-object v0, v15

    .line 203
    .local v0, "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    iput v10, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    .line 206
    iget-object v1, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v2, v23

    .end local v23    # "wrapIndex":I
    .local v1, "glyphCount":I
    .local v2, "wrapIndex":I
    :goto_12
    if-ge v2, v1, :cond_20

    .line 207
    iget-object v3, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v3, v3

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_13

    .line 206
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 208
    .end local v1    # "glyphCount":I
    :cond_20
    :goto_13
    if-lez v2, :cond_21

    .line 209
    iget-object v1, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Array;->removeRange(II)V

    .line 210
    iget-object v1, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/utils/FloatArray;->removeRange(II)V

    .line 212
    :cond_21
    iget-object v1, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v3, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v3, v4

    iget v4, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/FloatArray;->set(IF)V

    .line 214
    iget v1, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_24

    .line 216
    iget v1, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v13, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 217
    .local v1, "previous":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v4, v3

    .line 218
    .local v4, "lastIndex":I
    :goto_14
    if-lez v4, :cond_23

    .line 219
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 220
    .local v3, "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget v5, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v5, v5

    invoke-virtual {v11, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_22

    move-object/from16 v33, v0

    goto :goto_15

    .line 221
    :cond_22
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    iget-object v10, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v33, v0

    .end local v0    # "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v33, "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    sub-float/2addr v5, v0

    iput v5, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    .line 218
    .end local v3    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v33

    const/4 v10, 0x0

    goto :goto_14

    .end local v33    # "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .restart local v0    # "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    :cond_23
    move-object/from16 v33, v0

    .line 223
    .end local v0    # "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .restart local v33    # "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    :goto_15
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    .line 224
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v3, v4, 0x2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/FloatArray;->truncate(I)V

    .line 225
    invoke-direct {v7, v11, v1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    .line 226
    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-float/2addr v0, v3

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 227
    .end local v1    # "previous":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .end local v4    # "lastIndex":I
    .end local v9    # "width":F
    .local v0, "width":F
    move v3, v0

    move/from16 v23, v2

    move-object/from16 v0, v33

    goto :goto_16

    .line 214
    .end local v33    # "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v0, "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .restart local v9    # "width":F
    :cond_24
    move-object/from16 v33, v0

    .end local v0    # "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .restart local v33    # "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    move/from16 v23, v2

    move v3, v9

    goto :goto_16

    .line 229
    .end local v2    # "wrapIndex":I
    .end local v33    # "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .restart local v23    # "wrapIndex":I
    :cond_25
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v15

    move-object v3, v14

    move/from16 v4, v23

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->wrap(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;Lcom/badlogic/gdx/utils/Pool;II)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    move-result-object v0

    .line 230
    .restart local v0    # "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    iget v1, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-float/2addr v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 231
    .end local v9    # "width":F
    .local v1, "width":F
    if-nez v0, :cond_26

    .line 232
    const/4 v2, 0x0

    .line 233
    .end local v21    # "x":F
    .local v2, "x":F
    iget v3, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    add-float v4, v18, v3

    .line 234
    .end local v18    # "y":F
    .local v4, "y":F
    add-int/lit8 v18, v24, 0x1

    .line 235
    .end local v24    # "lines":I
    .local v18, "lines":I
    const/4 v3, 0x0

    .line 236
    .end local v16    # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v3, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    move v9, v1

    move v1, v2

    move-object v2, v3

    goto/16 :goto_19

    .line 238
    .end local v2    # "x":F
    .end local v3    # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v4    # "y":F
    .restart local v16    # "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v18, "y":F
    .restart local v21    # "x":F
    .restart local v24    # "lines":I
    :cond_26
    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v3, v1

    .line 242
    .end local v1    # "width":F
    .local v3, "width":F
    :goto_16
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 243
    .end local v19    # "n":I
    .local v1, "n":I
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 244
    .end local v17    # "xAdvances":[F
    .local v2, "xAdvances":[F
    const/4 v4, 0x0

    aget v5, v2, v4

    .line 245
    .end local v21    # "x":F
    .local v5, "x":F
    const/4 v9, 0x1

    if-le v1, v9, :cond_27

    aget v10, v2, v9

    add-float/2addr v5, v10

    .line 246
    :cond_27
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-float/2addr v9, v5

    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    .line 247
    iget v9, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    add-float v9, v18, v9

    .line 248
    .end local v18    # "y":F
    .local v9, "y":F
    add-int/lit8 v24, v24, 0x1

    .line 249
    const/4 v10, 0x0

    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    .line 250
    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    .line 251
    const/4 v6, 0x1

    .line 252
    move-object v10, v0

    .line 253
    .end local v15    # "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v10, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    const/16 v16, 0x0

    move-object/from16 v17, v2

    move/from16 v21, v5

    move/from16 v18, v9

    move v5, v1

    .line 177
    .end local v0    # "next":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .end local v1    # "n":I
    .end local v2    # "xAdvances":[F
    .end local v9    # "y":F
    .end local v23    # "wrapIndex":I
    .end local v27    # "glyphWidth":F
    .end local v28    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v5, "n":I
    .restart local v17    # "xAdvances":[F
    .restart local v18    # "y":F
    .restart local v21    # "x":F
    :goto_17
    const/4 v0, 0x1

    add-int/lit8 v1, v6, 0x1

    move/from16 v9, p4

    move v4, v1

    move-object v6, v10

    move-object/from16 v23, v13

    move/from16 v19, v25

    move/from16 v13, v29

    move/from16 v15, v30

    move-object/from16 v10, v32

    move-object/from16 v25, v12

    move/from16 v12, v31

    .end local v6    # "i":I
    .local v1, "i":I
    goto/16 :goto_8

    .end local v1    # "i":I
    .end local v29    # "markupEnabled":Z
    .end local v30    # "start":I
    .end local v31    # "runStart":I
    .end local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v4, "i":I
    .local v6, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v10, "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v12, "runStart":I
    .local v13, "markupEnabled":Z
    .local v15, "start":I
    .local v19, "runEnd":I
    .local v23, "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .local v25, "colorStack":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Color;>;"
    :cond_28
    move v9, v3

    move-object/from16 v32, v10

    move/from16 v31, v12

    move/from16 v29, v13

    move/from16 v30, v15

    move-object/from16 v13, v23

    move-object/from16 v12, v25

    move-object v15, v6

    move/from16 v25, v19

    move v6, v4

    move/from16 v19, v5

    .end local v3    # "width":F
    .end local v4    # "i":I
    .end local v5    # "n":I
    .end local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .end local v23    # "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .local v6, "i":I
    .local v9, "width":F
    .local v12, "colorStack":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v13, "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .local v15, "run":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .local v19, "n":I
    .local v25, "runEnd":I
    .restart local v29    # "markupEnabled":Z
    .restart local v30    # "start":I
    .restart local v31    # "runStart":I
    .restart local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    move-object/from16 v2, v16

    move/from16 v4, v18

    move/from16 v1, v21

    move/from16 v18, v24

    goto :goto_19

    .line 141
    .end local v8    # "blankLines":I
    .end local v9    # "width":F
    .end local v19    # "n":I
    .end local v24    # "lines":I
    .end local v25    # "runEnd":I
    .end local v26    # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local v29    # "markupEnabled":Z
    .end local v30    # "start":I
    .end local v31    # "runStart":I
    .end local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v1, "runEnd":I
    .local v2, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v3, "blankLines":I
    .local v4, "y":F
    .local v5, "color":Lcom/badlogic/gdx/graphics/Color;
    .local v6, "colorStack":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Color;>;"
    .restart local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v12, "runStart":I
    .local v13, "markupEnabled":Z
    .local v15, "start":I
    .local v16, "x":F
    .local v17, "width":F
    .local v18, "lines":I
    .local v21, "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    :cond_29
    move/from16 v25, v1

    move v8, v3

    move-object/from16 v26, v5

    move-object/from16 v32, v10

    move/from16 v31, v12

    move/from16 v29, v13

    move/from16 v30, v15

    move-object/from16 v13, v21

    move-object v12, v6

    move v6, v4

    .line 257
    .end local v1    # "runEnd":I
    .end local v3    # "blankLines":I
    .end local v4    # "y":F
    .end local v5    # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .end local v15    # "start":I
    .end local v21    # "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .local v6, "y":F
    .restart local v8    # "blankLines":I
    .local v12, "colorStack":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v13, "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .restart local v25    # "runEnd":I
    .restart local v26    # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local v29    # "markupEnabled":Z
    .restart local v30    # "start":I
    .restart local v31    # "runStart":I
    .restart local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    :goto_18
    move v4, v6

    move/from16 v1, v16

    move/from16 v9, v17

    .end local v6    # "y":F
    .end local v16    # "x":F
    .end local v17    # "width":F
    .local v1, "x":F
    .restart local v4    # "y":F
    .restart local v9    # "width":F
    :goto_19
    if-eqz v20, :cond_2b

    .line 259
    invoke-static {v9, v1}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 260
    const/4 v1, 0x0

    .line 261
    iget v0, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 262
    .local v0, "down":F
    move/from16 v5, v25

    move/from16 v3, v31

    .end local v25    # "runEnd":I
    .end local v31    # "runStart":I
    .local v3, "runStart":I
    .local v5, "runEnd":I
    if-ne v5, v3, :cond_2a

    .line 263
    iget v6, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->blankLineScale:F

    mul-float/2addr v0, v6

    .line 264
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "blankLines":I
    .local v6, "blankLines":I
    goto :goto_1a

    .line 266
    .end local v6    # "blankLines":I
    .restart local v8    # "blankLines":I
    :cond_2a
    add-int/lit8 v18, v18, 0x1

    move v6, v8

    .line 267
    .end local v8    # "blankLines":I
    .restart local v6    # "blankLines":I
    :goto_1a
    add-float/2addr v4, v0

    .line 268
    const/4 v2, 0x0

    goto :goto_1b

    .line 257
    .end local v0    # "down":F
    .end local v3    # "runStart":I
    .end local v5    # "runEnd":I
    .end local v6    # "blankLines":I
    .restart local v8    # "blankLines":I
    .restart local v25    # "runEnd":I
    .restart local v31    # "runStart":I
    :cond_2b
    move/from16 v5, v25

    move/from16 v3, v31

    .end local v25    # "runEnd":I
    .end local v31    # "runStart":I
    .restart local v3    # "runStart":I
    .restart local v5    # "runEnd":I
    move v6, v8

    .line 271
    .end local v8    # "blankLines":I
    .restart local v6    # "blankLines":I
    :goto_1b
    move/from16 v0, v30

    .line 272
    .end local v3    # "runStart":I
    .local v0, "runStart":I
    move-object/from16 v3, v22

    move/from16 v16, v1

    move-object v5, v3

    move v3, v6

    move/from16 v17, v9

    .end local v26    # "color":Lcom/badlogic/gdx/graphics/Color;
    .local v3, "color":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_1c

    .line 139
    .end local v0    # "runStart":I
    .end local v9    # "width":F
    .end local v29    # "markupEnabled":Z
    .end local v30    # "start":I
    .end local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v1, "runEnd":I
    .local v3, "blankLines":I
    .local v5, "color":Lcom/badlogic/gdx/graphics/Color;
    .local v6, "colorStack":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Color;>;"
    .restart local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v12, "runStart":I
    .local v13, "markupEnabled":Z
    .restart local v15    # "start":I
    .restart local v16    # "x":F
    .restart local v17    # "width":F
    .restart local v21    # "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    :cond_2c
    move v8, v3

    move-object/from16 v26, v5

    move-object/from16 v32, v10

    move v3, v12

    move/from16 v29, v13

    move/from16 v30, v15

    move-object/from16 v13, v21

    move v5, v1

    move-object v12, v6

    move v6, v4

    .end local v1    # "runEnd":I
    .end local v4    # "y":F
    .end local v10    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    .end local v15    # "start":I
    .end local v21    # "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .local v3, "runStart":I
    .local v5, "runEnd":I
    .local v6, "y":F
    .restart local v8    # "blankLines":I
    .local v12, "colorStack":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Color;>;"
    .local v13, "runs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;>;"
    .restart local v26    # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local v29    # "markupEnabled":Z
    .restart local v30    # "start":I
    .restart local v32    # "colorPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/Color;>;"
    move v0, v3

    move v3, v8

    move-object/from16 v5, v26

    .line 274
    .end local v6    # "y":F
    .end local v8    # "blankLines":I
    .end local v20    # "newline":Z
    .end local v26    # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local v0    # "runStart":I
    .local v3, "blankLines":I
    .restart local v4    # "y":F
    .local v5, "color":Lcom/badlogic/gdx/graphics/Color;
    :goto_1c
    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object v6, v12

    move-object v15, v13

    move-object/from16 v1, v22

    move/from16 v13, v29

    move-object/from16 v10, v32

    move v12, v0

    move/from16 v0, v30

    goto/16 :goto_1
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V
    .locals 10
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "targetWidth"    # F
    .param p5, "halign"    # I
    .param p6, "wrap"    # Z

    .line 69
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 489
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 490
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 492
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 494
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 498
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
