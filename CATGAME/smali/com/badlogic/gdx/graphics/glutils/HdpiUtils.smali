.class public Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;
.super Ljava/lang/Object;
.source "HdpiUtils.java"


# static fields
.field private static mode:Lcom/badlogic/gdx/graphics/glutils/HdpiMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/HdpiMode;->Logical:Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->mode:Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static glScissor(IIII)V
    .locals 5
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 53
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->mode:Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/HdpiMode;->Logical:Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 54
    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 55
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-static {p0}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->toBackBufferX(I)I

    move-result v1

    invoke-static {p1}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->toBackBufferY(I)I

    move-result v2

    invoke-static {p2}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->toBackBufferX(I)I

    move-result v3

    invoke-static {p3}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->toBackBufferY(I)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glScissor(IIII)V

    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glScissor(IIII)V

    .line 59
    :goto_0
    return-void
.end method

.method public static glViewport(IIII)V
    .locals 5
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 64
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->mode:Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/HdpiMode;->Logical:Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 65
    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 66
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-static {p0}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->toBackBufferX(I)I

    move-result v1

    invoke-static {p1}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->toBackBufferY(I)I

    move-result v2

    invoke-static {p2}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->toBackBufferX(I)I

    move-result v3

    invoke-static {p3}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->toBackBufferY(I)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    goto :goto_0

    .line 68
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 70
    :goto_0
    return-void
.end method

.method public static setMode(Lcom/badlogic/gdx/graphics/glutils/HdpiMode;)V
    .locals 0
    .param p0, "mode"    # Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    .line 47
    sput-object p0, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->mode:Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    .line 48
    return-void
.end method

.method public static toBackBufferX(I)I
    .locals 2
    .param p0, "logicalX"    # I

    .line 93
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v0

    mul-int/2addr v0, p0

    int-to-float v0, v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static toBackBufferY(I)I
    .locals 2
    .param p0, "logicalY"    # I

    .line 101
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v0

    mul-int/2addr v0, p0

    int-to-float v0, v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static toLogicalX(I)I
    .locals 2
    .param p0, "backBufferX"    # I

    .line 77
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    mul-int/2addr v0, p0

    int-to-float v0, v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static toLogicalY(I)I
    .locals 2
    .param p0, "backBufferY"    # I

    .line 85
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    mul-int/2addr v0, p0

    int-to-float v0, v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
