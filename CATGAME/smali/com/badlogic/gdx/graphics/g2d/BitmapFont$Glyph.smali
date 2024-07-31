.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Glyph"
.end annotation


# instance fields
.field public fixedWidth:Z

.field public height:I

.field public id:I

.field public kerning:[[B

.field public page:I

.field public srcX:I

.field public srcY:I

.field public u:F

.field public u2:F

.field public v:F

.field public v2:F

.field public width:I

.field public xadvance:I

.field public xoffset:I

.field public yoffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    return-void
.end method


# virtual methods
.method public getKerning(C)I
    .locals 2
    .param p1, "ch"    # C

    .line 407
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    if-eqz v0, :cond_0

    .line 408
    ushr-int/lit8 v1, p1, 0x9

    aget-object v0, v0, v1

    .line 409
    .local v0, "page":[B
    if-eqz v0, :cond_0

    and-int/lit16 v1, p1, 0x1ff

    aget-byte v1, v0, v1

    return v1

    .line 411
    .end local v0    # "page":[B
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setKerning(II)V
    .locals 4
    .param p1, "ch"    # I
    .param p2, "value"    # I

    .line 415
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    if-nez v0, :cond_0

    const/16 v0, 0x80

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    ushr-int/lit8 v1, p1, 0x9

    aget-object v1, v0, v1

    .line 417
    .local v1, "page":[B
    if-nez v1, :cond_1

    ushr-int/lit8 v2, p1, 0x9

    const/16 v3, 0x200

    new-array v3, v3, [B

    move-object v1, v3

    aput-object v3, v0, v2

    .line 418
    :cond_1
    and-int/lit16 v0, p1, 0x1ff

    int-to-byte v2, p2

    aput-byte v2, v1, v0

    .line 419
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 422
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
