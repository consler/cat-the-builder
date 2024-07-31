.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.source "TextArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;
    }
.end annotation


# instance fields
.field cursorLine:I

.field firstLineShowing:I

.field private lastText:Ljava/lang/String;

.field linesBreak:Lcom/badlogic/gdx/utils/IntArray;

.field private linesShowing:I

.field moveOffset:F

.field private prefRows:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    .line 66
    return-void
.end method

.method private calculateCurrentLineIndex(I)I
    .locals 2
    .param p1, "cursor"    # I

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v1, v1, v0

    if-le p1, v1, :cond_0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    return v0
.end method


# virtual methods
.method protected calculateOffsets()V
    .locals 10

    .line 268
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->calculateOffsets()V

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->lastText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->lastText:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 272
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 273
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-float/2addr v1, v2

    .line 274
    .local v1, "maxWidthLine":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 275
    const/4 v2, 0x0

    .line 276
    .local v2, "lineStart":I
    const/4 v3, 0x0

    .line 278
    .local v3, "lastSpace":I
    const-class v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-static {v4}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v4

    .line 279
    .local v4, "layoutPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;>;"
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 280
    .local v5, "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 281
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 282
    .local v7, "lastCharacter":C
    const/16 v8, 0xd

    if-eq v7, v8, :cond_4

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    goto :goto_3

    .line 287
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->continueCursor(II)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    move v3, v8

    .line 288
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 289
    iget v8, v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    cmpl-float v8, v8, v1

    if-lez v8, :cond_5

    .line 290
    if-lt v2, v3, :cond_3

    .line 291
    add-int/lit8 v3, v6, -0x1

    .line 293
    :cond_3
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 294
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 295
    add-int/lit8 v2, v3, 0x1

    .line 296
    move v3, v2

    goto :goto_4

    .line 283
    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 284
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 285
    add-int/lit8 v2, v6, 0x1

    .line 280
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 300
    .end local v6    # "i":I
    .end local v7    # "lastCharacter":C
    :cond_6
    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 302
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 303
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 304
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 306
    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    .line 308
    .end local v0    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v1    # "maxWidthLine":F
    .end local v2    # "lineStart":I
    .end local v3    # "lastSpace":I
    .end local v4    # "layoutPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;>;"
    .end local v5    # "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :cond_8
    return-void
.end method

.method protected continueCursor(II)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .line 341
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->calculateCurrentLineIndex(I)I

    move-result v0

    .line 342
    .local v0, "pos":I
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->continueCursor(II)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected createInputListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;
    .locals 1

    .line 312
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;)V

    return-object v0
.end method

.method protected drawCursor(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 9
    .param p1, "cursorPatch"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p3, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 259
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 260
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_1

    .line 259
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 260
    :goto_1
    nop

    .line 261
    .local v0, "textOffset":F
    add-float v1, p4, v0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->fontOffset:F

    add-float/2addr v1, v2

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->cursorX:F

    add-float v5, v1, v2

    .line 262
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, p5, v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float v6, v1, v2

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v7

    .line 263
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v8

    .line 261
    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 264
    return-void
.end method

.method protected drawSelection(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 18
    .param p1, "selection"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p3, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 221
    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    mul-int/lit8 v1, v1, 0x2

    .line 222
    .local v1, "i":I
    const/4 v2, 0x0

    .line 223
    .local v2, "offsetY":F
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->selectionStart:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 224
    .local v3, "minIndex":I
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->selectionStart:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 225
    .local v4, "maxIndex":I
    :goto_0
    add-int/lit8 v5, v1, 0x1

    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v6, v6, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v5, v6, :cond_3

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    if-ge v1, v5, :cond_3

    .line 227
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    .line 228
    .local v5, "lineStart":I
    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v6

    .line 230
    .local v6, "lineEnd":I
    if-ge v3, v5, :cond_0

    if-ge v3, v6, :cond_0

    if-ge v4, v5, :cond_0

    if-lt v4, v6, :cond_2

    :cond_0
    if-le v3, v5, :cond_1

    if-le v3, v6, :cond_1

    if-le v4, v5, :cond_1

    if-gt v4, v6, :cond_2

    .line 233
    :cond_1
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 234
    .local v7, "start":I
    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v8

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 236
    .local v8, "end":I
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v9

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v10

    sub-float/2addr v9, v10

    .line 237
    .local v9, "selectionX":F
    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v10

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v11, v7}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v11

    sub-float/2addr v10, v11

    .line 239
    .local v10, "selectionWidth":F
    add-float v11, p4, v9

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->fontOffset:F

    add-float v14, v11, v12

    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->textHeight:F

    sub-float v11, p5, v11

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v12

    sub-float/2addr v11, v12

    sub-float v15, v11, v2

    .line 240
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v17

    .line 239
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v16, v10

    invoke-interface/range {v12 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 243
    .end local v7    # "start":I
    .end local v8    # "end":I
    .end local v9    # "selectionX":F
    .end local v10    # "selectionWidth":F
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v7

    add-float/2addr v2, v7

    .line 244
    nop

    .end local v5    # "lineStart":I
    .end local v6    # "lineEnd":I
    add-int/lit8 v1, v1, 0x2

    .line 245
    goto/16 :goto_0

    .line 246
    :cond_3
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 14
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 250
    move-object v0, p0

    const/4 v1, 0x0

    .line 251
    .local v1, "offsetY":F
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    mul-int/lit8 v2, v2, 0x2

    .local v2, "i":I
    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v3, :cond_0

    .line 252
    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->displayText:Ljava/lang/CharSequence;

    add-float v8, p4, v1

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v9, v3, v2

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v4, v2, 0x1

    aget v10, v3, v4

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object/from16 v4, p2

    move-object v5, p1

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 253
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v3

    sub-float/2addr v1, v3

    .line 251
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 255
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public getCursorLine()I
    .locals 1

    .line 347
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    return v0
.end method

.method public getCursorX()F
    .locals 2

    .line 359
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->textOffset:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->fontOffset:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->cursorX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getCursorY()F
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 364
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v1, v1

    return v1
.end method

.method public getFirstLineShowing()I
    .locals 1

    .line 351
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    return v0
.end method

.method public getLines()I
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->newLineAtEnd()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLinesShowing()I
    .locals 1

    .line 355
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    return v0
.end method

.method public getPrefHeight()F
    .locals 3

    .line 106
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->prefRows:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 107
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getPrefHeight()F

    move-result v0

    return v0

    .line 109
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->textHeight:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->prefRows:F

    mul-float/2addr v0, v1

    .line 110
    .local v0, "prefHeight":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 112
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    .line 111
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 114
    :cond_1
    return v0
.end method

.method protected getTextY(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)F
    .locals 2
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 212
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getHeight()F

    move-result v0

    .line 213
    .local v0, "textY":F
    if-eqz p2, :cond_0

    .line 214
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v1

    sub-float v1, v0, v1

    float-to-int v1, v1

    int-to-float v0, v1

    .line 216
    :cond_0
    return v0
.end method

.method protected initialize()V
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->initialize()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->writeEnters:Z

    .line 72
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 74
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    .line 75
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    .line 76
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    .line 77
    return-void
.end method

.method protected letterUnderCursor(F)I
    .locals 7
    .param p1, "x"    # F

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 81
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt v0, v2, :cond_0

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 85
    .local v0, "glyphPositions":[F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    .line 86
    .local v2, "start":I
    aget v3, v0, v2

    add-float/2addr p1, v3

    .line 87
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    .line 88
    .local v3, "end":I
    move v4, v2

    .line 89
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 90
    aget v5, v0, v4

    cmpl-float v5, v5, p1

    if-lez v5, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    :cond_2
    :goto_1
    if-lez v4, :cond_3

    aget v5, v0, v4

    sub-float/2addr v5, p1

    add-int/lit8 v6, v4, -0x1

    aget v6, v0, v6

    sub-float v6, p1, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    return v4

    .line 92
    :cond_3
    add-int/lit8 v5, v4, -0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 95
    .end local v0    # "glyphPositions":[F
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "i":I
    :cond_4
    return v1
.end method

.method protected moveCursor(ZZ)V
    .locals 4
    .param p1, "forward"    # Z
    .param p2, "jump"    # Z

    .line 323
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 324
    .local v0, "count":I
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 325
    .local v1, "index":I
    if-ltz v1, :cond_2

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v2, v2, v1

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    if-ne v2, v3, :cond_2

    .line 327
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 328
    if-eqz p2, :cond_1

    .line 329
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    .line 331
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    goto :goto_1

    .line 333
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    .line 335
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateCurrentLine()V

    .line 337
    return-void
.end method

.method public moveCursorLine(I)V
    .locals 4
    .param p1, "line"    # I

    .line 131
    const/high16 v0, -0x40800000    # -1.0f

    if-gez p1, :cond_0

    .line 132
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 133
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 134
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    goto/16 :goto_4

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 137
    .local v1, "newLine":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 138
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v2

    if-gt p1, v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    if-ne v1, v2, :cond_2

    .line 139
    :cond_1
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    .line 141
    :cond_2
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .end local v1    # "newLine":I
    goto/16 :goto_3

    .line 142
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    if-eq p1, v0, :cond_8

    .line 143
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v2, v2, 0x2

    if-gt v0, v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 145
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    sub-float v1, v0, v1

    :goto_0
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    .line 147
    :cond_5
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 148
    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 149
    :goto_2
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 150
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 151
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    goto :goto_2

    .line 153
    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    goto :goto_4

    .line 142
    :cond_8
    :goto_3
    nop

    .line 155
    :goto_4
    return-void
.end method

.method public newLineAtEnd()Z
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 125
    :cond_1
    :goto_0
    return v1
.end method

.method public setPrefRows(F)V
    .locals 0
    .param p1, "prefRows"    # F

    .line 101
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->prefRows:F

    .line 102
    return-void
.end method

.method public setSelection(II)V
    .locals 0
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .line 317
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSelection(II)V

    .line 318
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateCurrentLine()V

    .line 319
    return-void
.end method

.method showCursor()V
    .locals 0

    .line 175
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateCurrentLine()V

    .line 176
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateFirstLineShowing()V

    .line 177
    return-void
.end method

.method protected sizeChanged()V
    .locals 5

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->lastText:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 205
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 206
    .local v1, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getHeight()F

    move-result v2

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v4

    add-float/2addr v3, v4

    :goto_0
    sub-float/2addr v2, v3

    .line 207
    .local v2, "availableHeight":F
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v3

    div-float v3, v2, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    .line 208
    return-void
.end method

.method updateCurrentLine()V
    .locals 4

    .line 159
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->calculateCurrentLineIndex(I)I

    move-result v0

    .line 160
    .local v0, "index":I
    div-int/lit8 v1, v0, 0x2

    .line 163
    .local v1, "line":I
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_2

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    .line 166
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 167
    :cond_1
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateFirstLineShowing()V

    .line 171
    return-void
.end method

.method updateFirstLineShowing()V
    .locals 5

    .line 180
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    if-eq v0, v1, :cond_2

    .line 181
    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 182
    .local v0, "step":I
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    if-gt v1, v3, :cond_1

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    add-int/2addr v1, v4

    sub-int/2addr v1, v2

    if-ge v1, v3, :cond_2

    .line 183
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    goto :goto_0

    .line 186
    .end local v0    # "step":I
    :cond_2
    return-void
.end method
