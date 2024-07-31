.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    }
.end annotation


# static fields
.field private static final prefSizeLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

.field private static final tempColor:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

.field private ellipsis:Ljava/lang/String;

.field private fontScaleChanged:Z

.field private fontScaleX:F

.field private fontScaleY:F

.field private intValue:I

.field private labelAlign:I

.field private lastPrefHeight:F

.field private final layout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

.field private lineAlign:I

.field private final prefSize:Lcom/badlogic/gdx/math/Vector2;

.field private prefSizeInvalid:Z

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field private final text:Lcom/badlogic/gdx/utils/StringBuilder;

.field private wrap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefSizeLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 72
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->layout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefSize:Lcom/badlogic/gdx/math/Vector2;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    .line 41
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->intValue:I

    .line 43
    const/16 v1, 0x8

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->labelAlign:I

    .line 44
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lineAlign:I

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefSizeInvalid:Z

    .line 48
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleChanged:Z

    .line 73
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 74
    :cond_0
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 75
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setSize(FF)V

    .line 76
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 53
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"    # Ljava/lang/String;

    .line 57
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "fontName"    # Ljava/lang/String;
    .param p4, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 63
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "fontName"    # Ljava/lang/String;
    .param p4, "colorName"    # Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    invoke-virtual {p2, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 70
    return-void
.end method

.method private computePrefSize()V
    .locals 9

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefSizeInvalid:Z

    .line 149
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefSizeLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 150
    .local v0, "prefSizeLayout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->wrap:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->ellipsis:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getWidth()F

    move-result v1

    .line 152
    .local v1, "width":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    :cond_0
    move v8, v1

    .line 153
    .end local v1    # "width":F
    .local v8, "width":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/16 v6, 0x8

    const/4 v7, 0x1

    move-object v1, v0

    move v5, v8

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V

    .line 154
    .end local v8    # "width":F
    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefSize:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 157
    return-void
.end method

.method private scaleAndComputePrefSize()V
    .locals 6

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    .line 138
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleX()F

    move-result v1

    .line 139
    .local v1, "oldScaleX":F
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleY()F

    move-result v2

    .line 140
    .local v2, "oldScaleY":F
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleChanged:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->computePrefSize()V

    .line 144
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleChanged:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    .line 145
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 8
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .line 221
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->validate()V

    .line 222
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 223
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 224
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    .line 225
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 226
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getWidth()F

    move-result v6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getHeight()F

    move-result v7

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tint(Lcom/badlogic/gdx/graphics/Color;)V

    .line 230
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setPosition(FF)V

    .line 231
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 232
    return-void
.end method

.method protected getBitmapFontCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    return-object v0
.end method

.method public getFontScaleX()F
    .locals 1

    .line 312
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    return v0
.end method

.method public getFontScaleY()F
    .locals 1

    .line 320
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    return v0
.end method

.method public getGlyphLayout()Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->layout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    return-object v0
.end method

.method public getLabelAlign()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->labelAlign:I

    return v0
.end method

.method public getLineAlign()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lineAlign:I

    return v0
.end method

.method public getPrefHeight()F
    .locals 5

    .line 244
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefSizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->scaleAndComputePrefSize()V

    .line 245
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 246
    .local v0, "descentScaleCorrection":F
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleChanged:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleY()F

    move-result v2

    div-float v0, v1, v2

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefSize:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 248
    .local v1, "height":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 249
    .local v2, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 250
    :cond_2
    return v1
.end method

.method public getPrefWidth()F
    .locals 4

    .line 235
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->wrap:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 236
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefSizeInvalid:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->scaleAndComputePrefSize()V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefSize:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 238
    .local v0, "width":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 239
    .local v1, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 240
    :cond_2
    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object v0
.end method

.method public getText()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefSizeInvalid:Z

    .line 134
    return-void
.end method

.method public layout()V
    .locals 24

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    .line 161
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleX()F

    move-result v12

    .line 162
    .local v12, "oldScaleX":F
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleY()F

    move-result v13

    .line 163
    .local v13, "oldScaleY":F
    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleChanged:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    .line 165
    :cond_0
    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->wrap:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->ellipsis:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v14, v2

    .line 166
    .local v14, "wrap":Z
    if-eqz v14, :cond_2

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefHeight()F

    move-result v2

    .line 168
    .local v2, "prefHeight":F
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lastPrefHeight:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    .line 169
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lastPrefHeight:F

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    .line 174
    .end local v2    # "prefHeight":F
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getWidth()F

    move-result v2

    .local v2, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getHeight()F

    move-result v3

    .line 175
    .local v3, "height":F
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v15, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 176
    .local v15, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    const/4 v4, 0x0

    .local v4, "x":F
    const/4 v5, 0x0

    .line 177
    .local v5, "y":F
    if-eqz v15, :cond_3

    .line 178
    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v4

    .line 179
    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v5

    .line 180
    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v6

    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v7

    add-float/2addr v6, v7

    sub-float/2addr v2, v6

    .line 181
    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v6

    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v7

    add-float/2addr v6, v7

    sub-float/2addr v3, v6

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    goto :goto_1

    .line 177
    :cond_3
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    .line 184
    .end local v2    # "width":F
    .end local v3    # "height":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    .local v16, "width":F
    .local v17, "height":F
    .local v18, "x":F
    .local v19, "y":F
    :goto_1
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->layout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 186
    .local v11, "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    const/high16 v20, 0x40000000    # 2.0f

    if-nez v14, :cond_5

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    goto :goto_2

    .line 199
    :cond_4
    move/from16 v2, v16

    .line 200
    .local v2, "textWidth":F
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    move/from16 v21, v3

    move-object/from16 v22, v15

    move-object v15, v11

    move/from16 v11, v18

    move/from16 v18, v2

    .local v3, "textHeight":F
    goto :goto_3

    .line 188
    .end local v2    # "textWidth":F
    .end local v3    # "textHeight":F
    :cond_5
    :goto_2
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v5, 0x0

    iget v6, v4, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lineAlign:I

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->ellipsis:Ljava/lang/String;

    move-object v2, v11

    move-object v3, v1

    move/from16 v8, v16

    move-object/from16 v21, v10

    move v10, v14

    move-object/from16 v22, v15

    move-object v15, v11

    .end local v11    # "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .local v15, "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .local v22, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    move-object/from16 v11, v21

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    .line 189
    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    .line 190
    .restart local v2    # "textWidth":F
    iget v3, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    .line 192
    .restart local v3    # "textHeight":F
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->labelAlign:I

    and-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_7

    .line 193
    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    .line 194
    sub-float v4, v16, v2

    add-float v18, v18, v4

    move/from16 v21, v3

    move/from16 v11, v18

    move/from16 v18, v2

    goto :goto_3

    .line 196
    :cond_6
    sub-float v4, v16, v2

    div-float v4, v4, v20

    add-float v18, v18, v4

    move/from16 v21, v3

    move/from16 v11, v18

    move/from16 v18, v2

    goto :goto_3

    .line 192
    :cond_7
    move/from16 v21, v3

    move/from16 v11, v18

    move/from16 v18, v2

    .line 203
    .end local v2    # "textWidth":F
    .end local v3    # "textHeight":F
    .local v11, "x":F
    .local v18, "textWidth":F
    .local v21, "textHeight":F
    :goto_3
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->labelAlign:I

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    .line 204
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    sub-float v4, v17, v21

    :goto_4
    add-float v19, v19, v4

    .line 205
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v2

    add-float v19, v19, v2

    goto :goto_5

    .line 206
    :cond_9
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_b

    .line 207
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v2

    if-eqz v2, :cond_a

    sub-float v4, v17, v21

    :cond_a
    add-float v19, v19, v4

    .line 208
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v2

    sub-float v19, v19, v2

    goto :goto_5

    .line 210
    :cond_b
    sub-float v2, v17, v21

    div-float v2, v2, v20

    add-float v19, v19, v2

    .line 212
    :goto_5
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v2

    if-nez v2, :cond_c

    add-float v19, v19, v21

    :cond_c
    move/from16 v10, v19

    .line 214
    .end local v19    # "y":F
    .local v10, "y":F
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v5, 0x0

    iget v6, v4, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lineAlign:I

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->ellipsis:Ljava/lang/String;

    move-object v2, v15

    move-object v3, v1

    move-object/from16 v19, v8

    move/from16 v8, v18

    move/from16 v23, v10

    .end local v10    # "y":F
    .local v23, "y":F
    move v10, v14

    move/from16 v20, v14

    move v14, v11

    .end local v11    # "x":F
    .local v14, "x":F
    .local v20, "wrap":Z
    move-object/from16 v11, v19

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    .line 215
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move/from16 v3, v23

    .end local v23    # "y":F
    .local v3, "y":F
    invoke-virtual {v2, v15, v14, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setText(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V

    .line 217
    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleChanged:Z

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    .line 218
    :cond_d
    return-void
.end method

.method public setAlignment(I)V
    .locals 0
    .param p1, "alignment"    # I

    .line 281
    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(II)V

    .line 282
    return-void
.end method

.method public setAlignment(II)V
    .locals 1
    .param p1, "labelAlign"    # I
    .param p2, "lineAlign"    # I

    .line 288
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->labelAlign:I

    .line 290
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 291
    const/16 v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lineAlign:I

    goto :goto_0

    .line 292
    :cond_0
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_1

    .line 293
    const/16 v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lineAlign:I

    goto :goto_0

    .line 295
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lineAlign:I

    .line 297
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidate()V

    .line 298
    return-void
.end method

.method public setEllipsis(Ljava/lang/String;)V
    .locals 0
    .param p1, "ellipsis"    # Ljava/lang/String;

    .line 330
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->ellipsis:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setEllipsis(Z)V
    .locals 1
    .param p1, "ellipsis"    # Z

    .line 336
    if-eqz p1, :cond_0

    .line 337
    const-string v0, "..."

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->ellipsis:Ljava/lang/String;

    goto :goto_0

    .line 339
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->ellipsis:Ljava/lang/String;

    .line 340
    :goto_0
    return-void
.end method

.method public setFontScale(F)V
    .locals 0
    .param p1, "fontScale"    # F

    .line 301
    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(FF)V

    .line 302
    return-void
.end method

.method public setFontScale(FF)V
    .locals 1
    .param p1, "fontScaleX"    # F
    .param p2, "fontScaleY"    # F

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleChanged:Z

    .line 306
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    .line 307
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    .line 308
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    .line 309
    return-void
.end method

.method public setFontScaleX(F)V
    .locals 1
    .param p1, "fontScaleX"    # F

    .line 316
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(FF)V

    .line 317
    return-void
.end method

.method public setFontScaleY(F)V
    .locals 1
    .param p1, "fontScaleY"    # F

    .line 324
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(FF)V

    .line 325
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 79
    if-eqz p1, :cond_1

    .line 80
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-eqz v0, :cond_0

    .line 81
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 82
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->newFontCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    .line 83
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    .line 84
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing LabelStyle font."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .line 104
    if-nez p1, :cond_0

    const-string p1, ""

    .line 105
    :cond_0
    instance-of v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->textEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 114
    :goto_0
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->intValue:I

    .line 115
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    .line 116
    return-void
.end method

.method public setText(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 96
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->intValue:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 97
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->intValue:I

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public setWrap(Z)V
    .locals 0
    .param p1, "wrap"    # Z

    .line 265
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->wrap:Z

    .line 266
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    .line 267
    return-void
.end method

.method public textEquals(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/CharSequence;

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    iget v0, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 120
    .local v0, "length":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 121
    .local v1, "chars":[C
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    .line 122
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 123
    aget-char v4, v1, v2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    return v3

    .line 122
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 348
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getName()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 350
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "className":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 352
    .local v2, "dotIndex":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 353
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x24

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v3, :cond_2

    const-string v3, "Label "

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
