.class public Lcom/badlogic/gdx/graphics/Color;
.super Ljava/lang/Object;
.source "Color.java"


# static fields
.field public static final BLACK:Lcom/badlogic/gdx/graphics/Color;

.field public static final BLUE:Lcom/badlogic/gdx/graphics/Color;

.field public static final BROWN:Lcom/badlogic/gdx/graphics/Color;

.field public static final CHARTREUSE:Lcom/badlogic/gdx/graphics/Color;

.field public static final CLEAR:Lcom/badlogic/gdx/graphics/Color;

.field public static final CORAL:Lcom/badlogic/gdx/graphics/Color;

.field public static final CYAN:Lcom/badlogic/gdx/graphics/Color;

.field public static final DARK_GRAY:Lcom/badlogic/gdx/graphics/Color;

.field public static final FIREBRICK:Lcom/badlogic/gdx/graphics/Color;

.field public static final FOREST:Lcom/badlogic/gdx/graphics/Color;

.field public static final GOLD:Lcom/badlogic/gdx/graphics/Color;

.field public static final GOLDENROD:Lcom/badlogic/gdx/graphics/Color;

.field public static final GRAY:Lcom/badlogic/gdx/graphics/Color;

.field public static final GREEN:Lcom/badlogic/gdx/graphics/Color;

.field public static final LIGHT_GRAY:Lcom/badlogic/gdx/graphics/Color;

.field public static final LIME:Lcom/badlogic/gdx/graphics/Color;

.field public static final MAGENTA:Lcom/badlogic/gdx/graphics/Color;

.field public static final MAROON:Lcom/badlogic/gdx/graphics/Color;

.field public static final NAVY:Lcom/badlogic/gdx/graphics/Color;

.field public static final OLIVE:Lcom/badlogic/gdx/graphics/Color;

.field public static final ORANGE:Lcom/badlogic/gdx/graphics/Color;

.field public static final PINK:Lcom/badlogic/gdx/graphics/Color;

.field public static final PURPLE:Lcom/badlogic/gdx/graphics/Color;

.field public static final RED:Lcom/badlogic/gdx/graphics/Color;

.field public static final ROYAL:Lcom/badlogic/gdx/graphics/Color;

.field public static final SALMON:Lcom/badlogic/gdx/graphics/Color;

.field public static final SCARLET:Lcom/badlogic/gdx/graphics/Color;

.field public static final SKY:Lcom/badlogic/gdx/graphics/Color;

.field public static final SLATE:Lcom/badlogic/gdx/graphics/Color;

.field public static final TAN:Lcom/badlogic/gdx/graphics/Color;

.field public static final TEAL:Lcom/badlogic/gdx/graphics/Color;

.field public static final VIOLET:Lcom/badlogic/gdx/graphics/Color;

.field public static final WHITE:Lcom/badlogic/gdx/graphics/Color;

.field public static final WHITE_FLOAT_BITS:F

.field public static final YELLOW:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public a:F

.field public b:F

.field public g:F

.field public r:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, -0x40404001

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->LIGHT_GRAY:Lcom/badlogic/gdx/graphics/Color;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x7f7f7fff

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f3f3fff

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->DARK_GRAY:Lcom/badlogic/gdx/graphics/Color;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    .line 33
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/Color;->WHITE_FLOAT_BITS:F

    .line 35
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->BLUE:Lcom/badlogic/gdx/graphics/Color;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v2, v2, v3, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->NAVY:Lcom/badlogic/gdx/graphics/Color;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x4169e1ff

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->ROYAL:Lcom/badlogic/gdx/graphics/Color;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x708090ff

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->SLATE:Lcom/badlogic/gdx/graphics/Color;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v4, -0x78311401

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->SKY:Lcom/badlogic/gdx/graphics/Color;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->CYAN:Lcom/badlogic/gdx/graphics/Color;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->TEAL:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0xff00ff

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x7fff00ff

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->CHARTREUSE:Lcom/badlogic/gdx/graphics/Color;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x32cd32ff

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->LIME:Lcom/badlogic/gdx/graphics/Color;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x228b22ff

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->FOREST:Lcom/badlogic/gdx/graphics/Color;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x6b8e23ff

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->OLIVE:Lcom/badlogic/gdx/graphics/Color;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, -0xff01

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->YELLOW:Lcom/badlogic/gdx/graphics/Color;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, -0x28ff01

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->GOLD:Lcom/badlogic/gdx/graphics/Color;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, -0x255adf01

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->GOLDENROD:Lcom/badlogic/gdx/graphics/Color;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, -0x5aff01

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->ORANGE:Lcom/badlogic/gdx/graphics/Color;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, -0x74baec01

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->BROWN:Lcom/badlogic/gdx/graphics/Color;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, -0x2d4b7301

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->TAN:Lcom/badlogic/gdx/graphics/Color;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, -0x4ddddd01

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->FIREBRICK:Lcom/badlogic/gdx/graphics/Color;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, -0xffff01

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, -0xcbe301

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->SCARLET:Lcom/badlogic/gdx/graphics/Color;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, -0x80af01

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->CORAL:Lcom/badlogic/gdx/graphics/Color;

    .line 63
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, -0x57f8d01

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->SALMON:Lcom/badlogic/gdx/graphics/Color;

    .line 64
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, -0x964b01

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->PINK:Lcom/badlogic/gdx/graphics/Color;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->MAGENTA:Lcom/badlogic/gdx/graphics/Color;

    .line 67
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, -0x5fdf0f01

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->PURPLE:Lcom/badlogic/gdx/graphics/Color;

    .line 68
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, -0x117d1101

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->VIOLET:Lcom/badlogic/gdx/graphics/Color;

    .line 69
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, -0x4fcf9f01

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->MAROON:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 91
    iput p2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 92
    iput p3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 93
    iput p4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 94
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    .line 95
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "rgba8888"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/Color;->rgba8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 102
    return-void
.end method

.method public static abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V
    .locals 3
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "value"    # F

    .line 487
    invoke-static {p1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v0

    .line 488
    .local v0, "c":I
    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 489
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 490
    const v1, 0xff00

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 491
    and-int/lit16 v1, v0, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 492
    return-void
.end method

.method public static alpha(F)I
    .locals 1
    .param p0, "alpha"    # F

    .line 379
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static argb8888(FFFF)I
    .locals 3
    .param p0, "a"    # F
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 403
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    mul-float v2, p1, v0

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    mul-float v2, p2, v0

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    mul-float/2addr v0, p3

    float-to-int v0, v0

    or-int/2addr v0, v1

    return v0
.end method

.method public static argb8888(Lcom/badlogic/gdx/graphics/Color;)I
    .locals 3
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 423
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static argb8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 2
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "value"    # I

    .line 478
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 479
    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 480
    const v0, 0xff00

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 481
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 482
    return-void
.end method

.method public static luminanceAlpha(FF)I
    .locals 2
    .param p0, "luminance"    # F
    .param p1, "alpha"    # F

    .line 383
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    mul-float/2addr v0, p1

    float-to-int v0, v0

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb565(FFF)I
    .locals 3
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F

    .line 387
    const/high16 v0, 0x41f80000    # 31.0f

    mul-float v1, p0, v0

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0xb

    const/high16 v2, 0x427c0000    # 63.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    mul-float/2addr v0, p2

    float-to-int v0, v0

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb565(Lcom/badlogic/gdx/graphics/Color;)I
    .locals 4
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 407
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v1, 0x41f80000    # 31.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0xb

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v3, 0x427c0000    # 63.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb565ToColor(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 3
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "value"    # I

    .line 432
    const v0, 0xf800

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0xb

    int-to-float v0, v0

    const/high16 v1, 0x41f80000    # 31.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 433
    and-int/lit16 v0, p1, 0x7e0

    ushr-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    const/high16 v2, 0x427c0000    # 63.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 434
    and-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 435
    return-void
.end method

.method public static rgb888(FFF)I
    .locals 3
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F

    .line 395
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    mul-float v2, p1, v0

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    mul-float/2addr v0, p2

    float-to-int v0, v0

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb888(Lcom/badlogic/gdx/graphics/Color;)I
    .locals 3
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 415
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 2
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "value"    # I

    .line 455
    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 456
    const v0, 0xff00

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 457
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 458
    return-void
.end method

.method public static rgba4444(FFFF)I
    .locals 3
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .line 391
    const/high16 v0, 0x41700000    # 15.0f

    mul-float v1, p0, v0

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0xc

    mul-float v2, p1, v0

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    mul-float v2, p2, v0

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    mul-float/2addr v0, p3

    float-to-int v0, v0

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgba4444(Lcom/badlogic/gdx/graphics/Color;)I
    .locals 3
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 411
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0xc

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgba4444ToColor(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 2
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "value"    # I

    .line 443
    const v0, 0xf000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    const/high16 v1, 0x41700000    # 15.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 444
    and-int/lit16 v0, p1, 0xf00

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 445
    and-int/lit16 v0, p1, 0xf0

    ushr-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 446
    and-int/lit8 v0, p1, 0xf

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 447
    return-void
.end method

.method public static rgba8888(FFFF)I
    .locals 3
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .line 399
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    mul-float v2, p1, v0

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    mul-float v2, p2, v0

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    mul-float/2addr v0, p3

    float-to-int v0, v0

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgba8888(Lcom/badlogic/gdx/graphics/Color;)I
    .locals 3
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 419
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgba8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 2
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "value"    # I

    .line 466
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 467
    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 468
    const v0, 0xff00

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 469
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 470
    return-void
.end method

.method public static toFloatBits(FFFF)F
    .locals 3
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .line 363
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p3, v0

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    mul-float v2, p2, v0

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    mul-float v2, p1, v0

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    mul-float/2addr v0, p0

    float-to-int v0, v0

    or-int/2addr v0, v1

    .line 364
    .local v0, "color":I
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v1

    return v1
.end method

.method public static toFloatBits(IIII)F
    .locals 2
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "a"    # I

    .line 354
    shl-int/lit8 v0, p3, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p0

    .line 355
    .local v0, "color":I
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v1

    .line 356
    .local v1, "floatColor":F
    return v1
.end method

.method public static toIntBits(IIII)I
    .locals 2
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "a"    # I

    .line 375
    shl-int/lit8 v0, p3, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 10
    .param p0, "hex"    # Ljava/lang/String;

    .line 337
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    move-object p0, v1

    .line 338
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 339
    .local v0, "r":I
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 340
    .local v1, "g":I
    const/4 v4, 0x6

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 341
    .local v3, "b":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    const/16 v2, 0xff

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 342
    .local v2, "a":I
    :goto_1
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    int-to-float v5, v0

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    int-to-float v7, v1

    div-float/2addr v7, v6

    int-to-float v8, v3

    div-float/2addr v8, v6

    int-to-float v9, v2

    div-float/2addr v9, v6

    invoke-direct {v4, v5, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v4
.end method


# virtual methods
.method public add(FFFF)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 218
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 220
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 221
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    add-float/2addr v0, p4

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 222
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 144
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 145
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 146
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 147
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 148
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public clamp()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    .line 166
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    .line 167
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    goto :goto_0

    .line 168
    :cond_0
    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iput v3, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 170
    :cond_1
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    .line 171
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    goto :goto_1

    .line 172
    :cond_2
    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    iput v3, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 174
    :cond_3
    :goto_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    .line 175
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    goto :goto_2

    .line 176
    :cond_4
    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    iput v3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 178
    :cond_5
    :goto_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_6

    .line 179
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_3

    .line 180
    :cond_6
    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    iput v3, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 181
    :cond_7
    :goto_3
    return-object p0
.end method

.method public cpy()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 580
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 296
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 297
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 298
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    .line 299
    .local v2, "color":Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 297
    .end local v2    # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_3
    :goto_1
    return v1
.end method

.method public fromHsv(FFF)Lcom/badlogic/gdx/graphics/Color;
    .locals 7
    .param p1, "h"    # F
    .param p2, "s"    # F
    .param p3, "v"    # F

    .line 501
    const/high16 v0, 0x42700000    # 60.0f

    div-float v0, p1, v0

    const/high16 v1, 0x40c00000    # 6.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 502
    .local v0, "x":F
    float-to-int v1, v0

    .line 503
    .local v1, "i":I
    int-to-float v2, v1

    sub-float v2, v0, v2

    .line 504
    .local v2, "f":F
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p2

    mul-float/2addr v4, p3

    .line 505
    .local v4, "p":F
    mul-float v5, p2, v2

    sub-float v5, v3, v5

    mul-float/2addr v5, p3

    .line 506
    .local v5, "q":F
    sub-float v6, v3, v2

    mul-float/2addr v6, p2

    sub-float/2addr v3, v6

    mul-float/2addr v3, p3

    .line 507
    .local v3, "t":F
    if-eqz v1, :cond_4

    const/4 v6, 0x1

    if-eq v1, v6, :cond_3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1

    const/4 v6, 0x4

    if-eq v1, v6, :cond_0

    .line 534
    iput p3, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 535
    iput v4, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 536
    iput v5, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    goto :goto_0

    .line 529
    :cond_0
    iput v3, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 530
    iput v4, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 531
    iput p3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 532
    goto :goto_0

    .line 524
    :cond_1
    iput v4, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 525
    iput v5, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 526
    iput p3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 527
    goto :goto_0

    .line 519
    :cond_2
    iput v4, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 520
    iput p3, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 521
    iput v3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 522
    goto :goto_0

    .line 514
    :cond_3
    iput v5, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 515
    iput p3, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 516
    iput v4, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 517
    goto :goto_0

    .line 509
    :cond_4
    iput p3, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 510
    iput v3, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 511
    iput v4, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 512
    nop

    .line 539
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    return-object v6
.end method

.method public fromHsv([F)Lcom/badlogic/gdx/graphics/Color;
    .locals 3
    .param p1, "hsv"    # [F

    .line 547
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Color;->fromHsv(FFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 304
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 305
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    add-int/2addr v2, v4

    .line 306
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    add-int/2addr v0, v4

    .line 307
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_3

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    :cond_3
    add-int/2addr v2, v3

    .line 308
    .end local v0    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public lerp(FFFFF)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F
    .param p5, "t"    # F

    .line 279
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float v1, p1, v0

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 280
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float v1, p2, v0

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 281
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float v1, p3, v0

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 282
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float v1, p4, v0

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 283
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public lerp(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .param p1, "target"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "t"    # F

    .line 263
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 264
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 265
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 266
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 267
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public mul(F)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "value"    # F

    .line 132
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 133
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 134
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 135
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 136
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public mul(FFFF)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 250
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 251
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 252
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 253
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p4

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 254
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 120
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 121
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 122
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 123
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 124
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public premultiplyAlpha()Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    .line 288
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 289
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 290
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 291
    return-object p0
.end method

.method public set(FFFF)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 193
    iput p1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 194
    iput p2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 195
    iput p3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 196
    iput p4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 197
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public set(I)Lcom/badlogic/gdx/graphics/Color;
    .locals 0
    .param p1, "rgba"    # I

    .line 205
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/Color;->rgba8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    .line 206
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 108
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 109
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 110
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 111
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 112
    return-object p0
.end method

.method public sub(FFFF)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 234
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 235
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 236
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 237
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v0, p4

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 238
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public sub(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 156
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 157
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 158
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 159
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 160
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public toFloatBits()F
    .locals 3

    .line 315
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    or-int/2addr v0, v1

    .line 316
    .local v0, "color":I
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v1

    return v1
.end method

.method public toHsv([F)[F
    .locals 9
    .param p1, "hsv"    # [F

    .line 554
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 555
    .local v0, "max":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 556
    .local v1, "min":F
    sub-float v2, v0, v1

    .line 557
    .local v2, "range":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 558
    aput v3, p1, v5

    goto :goto_0

    .line 559
    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v6, v0, v4

    const/high16 v7, 0x42700000    # 60.0f

    if-nez v6, :cond_1

    .line 560
    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v4, v6

    mul-float/2addr v4, v7

    div-float/2addr v4, v2

    const/high16 v6, 0x43b40000    # 360.0f

    add-float/2addr v4, v6

    rem-float/2addr v4, v6

    aput v4, p1, v5

    goto :goto_0

    .line 561
    :cond_1
    iget v6, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v8, v0, v6

    if-nez v8, :cond_2

    .line 562
    iget v6, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, v7

    div-float/2addr v6, v2

    const/high16 v4, 0x42f00000    # 120.0f

    add-float/2addr v6, v4

    aput v6, p1, v5

    goto :goto_0

    .line 564
    :cond_2
    sub-float/2addr v4, v6

    mul-float/2addr v4, v7

    div-float/2addr v4, v2

    const/high16 v6, 0x43700000    # 240.0f

    add-float/2addr v4, v6

    aput v4, p1, v5

    .line 567
    :goto_0
    cmpl-float v4, v0, v3

    const/4 v5, 0x1

    if-lez v4, :cond_3

    .line 568
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v1, v0

    sub-float/2addr v3, v4

    aput v3, p1, v5

    goto :goto_1

    .line 570
    :cond_3
    aput v3, p1, v5

    .line 573
    :goto_1
    const/4 v3, 0x2

    aput v0, p1, v3

    .line 575
    return-object p1
.end method

.method public toIntBits()I
    .locals 3

    .line 322
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 327
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    or-int/2addr v0, v1

    .line 328
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_0
    return-object v0
.end method
