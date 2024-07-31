.class public Lcom/badlogic/gdx/graphics/g2d/NinePatch;
.super Ljava/lang/Object;
.source "NinePatch.java"


# static fields
.field public static final BOTTOM_CENTER:I = 0x7

.field public static final BOTTOM_LEFT:I = 0x6

.field public static final BOTTOM_RIGHT:I = 0x8

.field public static final MIDDLE_CENTER:I = 0x4

.field public static final MIDDLE_LEFT:I = 0x3

.field public static final MIDDLE_RIGHT:I = 0x5

.field public static final TOP_CENTER:I = 0x1

.field public static final TOP_LEFT:I = 0x0

.field public static final TOP_RIGHT:I = 0x2

.field private static final tmpDrawColor:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private bottomCenter:I

.field private bottomHeight:F

.field private bottomLeft:I

.field private bottomRight:I

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private idx:I

.field private leftWidth:F

.field private middleCenter:I

.field private middleHeight:F

.field private middleLeft:I

.field private middleRight:I

.field private middleWidth:F

.field private padBottom:F

.field private padLeft:F

.field private padRight:F

.field private padTop:F

.field private rightWidth:F

.field private texture:Lcom/badlogic/gdx/graphics/Texture;

.field private topCenter:I

.field private topHeight:F

.field private topLeft:I

.field private topRight:I

.field private vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->tmpDrawColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .line 128
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 6
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I

    .line 67
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 122
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 123
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 1
    .param p1, "ninePatch"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 185
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/Color;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 4
    .param p1, "ninePatch"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .param p2, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 52
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 53
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 55
    const/16 v0, 0xb4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 57
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 58
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 189
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 191
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    .line 192
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    .line 193
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 194
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    .line 195
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    .line 196
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 197
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    .line 198
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    .line 199
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 201
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 202
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 203
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 204
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    .line 205
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 206
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 208
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    .line 209
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    .line 210
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 211
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    .line 213
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 214
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 217
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 52
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 53
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 55
    const/16 v0, 0xb4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 57
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 58
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 139
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->load([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 19
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I

    .line 76
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 52
    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 53
    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 55
    const/16 v1, 0xb4

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 57
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 58
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 77
    if-eqz p1, :cond_b

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    sub-int v1, v1, p2

    sub-int v7, v1, p3

    .line 79
    .local v7, "middleWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    sub-int v1, v1, p4

    sub-int v8, v1, p5

    .line 81
    .local v8, "middleHeight":I
    const/16 v1, 0x9

    new-array v9, v1, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 82
    .local v9, "patches":[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/4 v10, 0x1

    const/4 v11, 0x2

    if-lez p4, :cond_2

    .line 83
    if-lez p2, :cond_0

    const/4 v12, 0x0

    new-instance v13, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v13

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v13, v9, v12

    .line 84
    :cond_0
    if-lez v7, :cond_1

    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v4, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v5, v7

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v12, v9, v10

    .line 85
    :cond_1
    if-lez p3, :cond_2

    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v3, p2, v7

    const/4 v4, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v12, v9, v11

    .line 87
    :cond_2
    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x5

    if-lez v8, :cond_5

    .line 88
    if-lez p2, :cond_3

    new-instance v15, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v4, p4

    move/from16 v5, p2

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v15, v9, v12

    .line 89
    :cond_3
    if-lez v7, :cond_4

    new-instance v15, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v15, v9, v13

    .line 90
    :cond_4
    if-lez p3, :cond_5

    new-instance v15, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v3, p2, v7

    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v4, p4

    move/from16 v5, p3

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v15, v9, v14

    .line 92
    :cond_5
    const/4 v15, 0x6

    const/16 v16, 0x7

    const/16 v17, 0x8

    if-lez p5, :cond_8

    .line 93
    if-lez p2, :cond_6

    new-instance v18, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    add-int v4, p4, v8

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v18, v9, v15

    .line 94
    :cond_6
    if-lez v7, :cond_7

    new-instance v18, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v4, p4, v8

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v5, v7

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v18, v9, v16

    .line 95
    :cond_7
    if-lez p3, :cond_8

    new-instance v18, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v3, p2, v7

    add-int v4, p4, v8

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v5, p3

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v18, v9, v17

    .line 99
    :cond_8
    const/4 v1, 0x0

    if-nez p2, :cond_9

    if-nez v7, :cond_9

    .line 100
    aget-object v2, v9, v11

    aput-object v2, v9, v10

    .line 101
    aget-object v2, v9, v14

    aput-object v2, v9, v13

    .line 102
    aget-object v2, v9, v17

    aput-object v2, v9, v16

    .line 103
    aput-object v1, v9, v11

    .line 104
    aput-object v1, v9, v14

    .line 105
    aput-object v1, v9, v17

    .line 108
    :cond_9
    if-nez p4, :cond_a

    if-nez v8, :cond_a

    .line 109
    aget-object v2, v9, v15

    aput-object v2, v9, v12

    .line 110
    aget-object v2, v9, v16

    aput-object v2, v9, v13

    .line 111
    aget-object v2, v9, v17

    aput-object v2, v9, v14

    .line 112
    aput-object v1, v9, v15

    .line 113
    aput-object v1, v9, v16

    .line 114
    aput-object v1, v9, v17

    .line 117
    :cond_a
    invoke-direct {v0, v9}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->load([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 118
    return-void

    .line 77
    .end local v7    # "middleWidth":I
    .end local v8    # "middleHeight":I
    .end local v9    # "patches":[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "region cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 133
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 134
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 135
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 8
    .param p1, "patches"    # [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 52
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 53
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 55
    const/16 v0, 0xb4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 57
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 58
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 151
    if-eqz p1, :cond_10

    array-length v0, p1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_10

    .line 153
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->load([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 155
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v0

    .line 156
    .local v0, "leftWidth":F
    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v0

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x3

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    aget-object v2, p1, v2

    .line 157
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v0

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x6

    aget-object v3, p1, v2

    if-eqz v3, :cond_3

    aget-object v3, p1, v2

    .line 158
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v0

    if-nez v3, :cond_2

    goto :goto_0

    .line 159
    :cond_2
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Left side patches must have the same width"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v3

    .line 163
    .local v3, "rightWidth":F
    const/4 v4, 0x2

    aget-object v5, p1, v4

    if-eqz v5, :cond_4

    aget-object v5, p1, v4

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v5, v3

    if-nez v5, :cond_6

    :cond_4
    const/4 v5, 0x5

    aget-object v6, p1, v5

    if-eqz v6, :cond_5

    aget-object v5, p1, v5

    .line 164
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v5, v3

    if-nez v5, :cond_6

    :cond_5
    const/16 v5, 0x8

    aget-object v6, p1, v5

    if-eqz v6, :cond_7

    aget-object v6, p1, v5

    .line 165
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v3

    if-nez v6, :cond_6

    goto :goto_1

    .line 166
    :cond_6
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Right side patches must have the same width"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v6

    .line 170
    .local v6, "bottomHeight":F
    aget-object v7, p1, v2

    if-eqz v7, :cond_8

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_a

    :cond_8
    const/4 v2, 0x7

    aget-object v7, p1, v2

    if-eqz v7, :cond_9

    aget-object v2, p1, v2

    .line 171
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_a

    :cond_9
    aget-object v2, p1, v5

    if-eqz v2, :cond_b

    aget-object v2, p1, v5

    .line 172
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_a

    goto :goto_2

    .line 173
    :cond_a
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Bottom side patches must have the same height"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v2

    .line 177
    .local v2, "topHeight":F
    aget-object v5, p1, v1

    if-eqz v5, :cond_c

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    aget-object v5, p1, v1

    if-eqz v5, :cond_d

    aget-object v1, p1, v1

    .line 178
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_e

    :cond_d
    aget-object v1, p1, v4

    if-eqz v1, :cond_f

    aget-object v1, p1, v4

    .line 179
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_e

    goto :goto_3

    .line 180
    :cond_e
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Top side patches must have the same height"

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_f
    :goto_3
    return-void

    .line 151
    .end local v0    # "leftWidth":F
    .end local v2    # "topHeight":F
    .end local v3    # "rightWidth":F
    .end local v6    # "bottomHeight":F
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NinePatch needs nine TextureRegions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I
    .locals 7
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "color"    # F
    .param p3, "isStretchW"    # Z
    .param p4, "isStretchH"    # Z

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 280
    :goto_0
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 281
    .local v0, "u":F
    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 282
    .local v1, "v":F
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 283
    .local v2, "u2":F
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 288
    .local v3, "v2":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-ne v4, v5, :cond_3

    .line 289
    :cond_1
    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz p3, :cond_2

    .line 290
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    .line 291
    .local v5, "halfTexelWidth":F
    add-float/2addr v0, v5

    .line 292
    sub-float/2addr v2, v5

    .line 294
    .end local v5    # "halfTexelWidth":F
    :cond_2
    if-eqz p4, :cond_3

    .line 295
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 296
    .local v4, "halfTexelHeight":F
    sub-float/2addr v1, v4

    .line 297
    add-float/2addr v3, v4

    .line 301
    .end local v4    # "halfTexelHeight":F
    :cond_3
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 303
    .local v4, "vertices":[F
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v6, v5, 0x2

    aput p2, v4, v6

    .line 304
    add-int/lit8 v6, v5, 0x3

    aput v0, v4, v6

    .line 305
    add-int/lit8 v6, v5, 0x4

    aput v1, v4, v6

    .line 307
    add-int/lit8 v6, v5, 0x7

    aput p2, v4, v6

    .line 308
    add-int/lit8 v6, v5, 0x8

    aput v0, v4, v6

    .line 309
    add-int/lit8 v6, v5, 0x9

    aput v3, v4, v6

    .line 311
    add-int/lit8 v6, v5, 0xc

    aput p2, v4, v6

    .line 312
    add-int/lit8 v6, v5, 0xd

    aput v2, v4, v6

    .line 313
    add-int/lit8 v6, v5, 0xe

    aput v3, v4, v6

    .line 315
    add-int/lit8 v6, v5, 0x11

    aput p2, v4, v6

    .line 316
    add-int/lit8 v6, v5, 0x12

    aput v2, v4, v6

    .line 317
    add-int/lit8 v6, v5, 0x13

    aput v1, v4, v6

    .line 318
    add-int/lit8 v5, v5, 0x14

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    .line 320
    add-int/lit8 v5, v5, -0x14

    return v5

    .line 278
    .end local v0    # "u":F
    .end local v1    # "v":F
    .end local v2    # "u2":F
    .end local v3    # "v2":F
    .end local v4    # "vertices":[F
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All regions must be from the same texture."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private load([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 6
    .param p1, "patches"    # [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 220
    sget v0, Lcom/badlogic/gdx/graphics/Color;->WHITE_FLOAT_BITS:F

    .line 222
    .local v0, "color":F
    const/4 v1, 0x6

    aget-object v2, p1, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 223
    aget-object v2, p1, v1

    invoke-direct {p0, v2, v0, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    .line 224
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 225
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 227
    :cond_0
    const/4 v1, 0x7

    aget-object v2, p1, v1

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 228
    aget-object v2, p1, v1

    invoke-direct {p0, v2, v0, v4, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    .line 229
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 230
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 232
    :cond_1
    const/16 v1, 0x8

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 233
    aget-object v2, p1, v1

    invoke-direct {p0, v2, v0, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 234
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 235
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 237
    :cond_2
    const/4 v1, 0x3

    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    .line 238
    aget-object v2, p1, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    .line 239
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 240
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    .line 242
    :cond_3
    const/4 v1, 0x4

    aget-object v2, p1, v1

    if-eqz v2, :cond_4

    .line 243
    aget-object v2, p1, v1

    invoke-direct {p0, v2, v0, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    .line 244
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 245
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    .line 247
    :cond_4
    const/4 v1, 0x5

    aget-object v2, p1, v1

    if-eqz v2, :cond_5

    .line 248
    aget-object v2, p1, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 249
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 250
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    .line 252
    :cond_5
    aget-object v1, p1, v3

    if-eqz v1, :cond_6

    .line 253
    aget-object v1, p1, v3

    invoke-direct {p0, v1, v0, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    .line 254
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    aget-object v2, p1, v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 255
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    aget-object v2, p1, v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 257
    :cond_6
    aget-object v1, p1, v4

    if-eqz v1, :cond_7

    .line 258
    aget-object v1, p1, v4

    invoke-direct {p0, v1, v0, v4, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    .line 259
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    aget-object v2, p1, v4

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 260
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    aget-object v2, p1, v4

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 262
    :cond_7
    const/4 v1, 0x2

    aget-object v2, p1, v1

    if-eqz v2, :cond_8

    .line 263
    aget-object v2, p1, v1

    invoke-direct {p0, v2, v0, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 264
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 265
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 267
    :cond_8
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    array-length v4, v2

    if-ge v1, v4, :cond_9

    .line 268
    new-array v4, v1, [F

    .line 269
    .local v4, "newVertices":[F
    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 272
    .end local v4    # "newVertices":[F
    :cond_9
    return-void
.end method

.method private prepareVertices(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 14
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .line 346
    move-object v7, p0

    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    add-float v8, p2, v0

    .line 347
    .local v8, "centerColumnX":F
    add-float v0, p2, p4

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    sub-float v9, v0, v1

    .line 348
    .local v9, "rightColumnX":F
    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    add-float v10, p3, v0

    .line 349
    .local v10, "middleRowY":F
    add-float v0, p3, p5

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    sub-float v11, v0, v1

    .line 350
    .local v11, "topRowY":F
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->tmpDrawColor:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v12

    .line 352
    .local v12, "c":F
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    const/4 v13, -0x1

    if-eq v1, v13, :cond_0

    sub-float v4, v8, p2

    sub-float v5, v10, p3

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 353
    :cond_0
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    if-eq v1, v13, :cond_1

    sub-float v4, v9, v8

    sub-float v5, v10, p3

    move-object v0, p0

    move v2, v8

    move/from16 v3, p3

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 354
    :cond_1
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    if-eq v1, v13, :cond_2

    add-float v0, p2, p4

    sub-float v4, v0, v9

    sub-float v5, v10, p3

    move-object v0, p0

    move v2, v9

    move/from16 v3, p3

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 355
    :cond_2
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    if-eq v1, v13, :cond_3

    sub-float v4, v8, p2

    sub-float v5, v11, v10

    move-object v0, p0

    move/from16 v2, p2

    move v3, v10

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 356
    :cond_3
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    if-eq v1, v13, :cond_4

    sub-float v4, v9, v8

    sub-float v5, v11, v10

    move-object v0, p0

    move v2, v8

    move v3, v10

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 357
    :cond_4
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    if-eq v1, v13, :cond_5

    add-float v0, p2, p4

    sub-float v4, v0, v9

    sub-float v5, v11, v10

    move-object v0, p0

    move v2, v9

    move v3, v10

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 358
    :cond_5
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    if-eq v1, v13, :cond_6

    sub-float v4, v8, p2

    add-float v0, p3, p5

    sub-float v5, v0, v11

    move-object v0, p0

    move/from16 v2, p2

    move v3, v11

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 359
    :cond_6
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    if-eq v1, v13, :cond_7

    sub-float v4, v9, v8

    add-float v0, p3, p5

    sub-float v5, v0, v11

    move-object v0, p0

    move v2, v8

    move v3, v11

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 360
    :cond_7
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    if-eq v1, v13, :cond_8

    add-float v0, p2, p4

    sub-float v4, v0, v9

    add-float v0, p3, p5

    sub-float v5, v0, v11

    move-object v0, p0

    move v2, v9

    move v3, v11

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 361
    :cond_8
    return-void
.end method

.method private set(IFFFFF)V
    .locals 4
    .param p1, "idx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "color"    # F

    .line 325
    add-float v0, p2, p4

    .line 326
    .local v0, "fx2":F
    add-float v1, p3, p5

    .line 327
    .local v1, "fy2":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 328
    .local v2, "vertices":[F
    aput p2, v2, p1

    .line 329
    add-int/lit8 v3, p1, 0x1

    aput p3, v2, v3

    .line 330
    add-int/lit8 v3, p1, 0x2

    aput p6, v2, v3

    .line 332
    add-int/lit8 v3, p1, 0x5

    aput p2, v2, v3

    .line 333
    add-int/lit8 v3, p1, 0x6

    aput v1, v2, v3

    .line 334
    add-int/lit8 v3, p1, 0x7

    aput p6, v2, v3

    .line 336
    add-int/lit8 v3, p1, 0xa

    aput v0, v2, v3

    .line 337
    add-int/lit8 v3, p1, 0xb

    aput v1, v2, v3

    .line 338
    add-int/lit8 v3, p1, 0xc

    aput p6, v2, v3

    .line 340
    add-int/lit8 v3, p1, 0xf

    aput v0, v2, v3

    .line 341
    add-int/lit8 v3, p1, 0x10

    aput p3, v2, v3

    .line 342
    add-int/lit8 v3, p1, 0x11

    aput p6, v2, v3

    .line 343
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 4
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .line 364
    invoke-direct/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->prepareVertices(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 366
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V
    .locals 13
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F

    .line 370
    move-object v6, p0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->prepareVertices(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 371
    add-float v0, p2, p4

    .local v0, "worldOriginX":F
    add-float v1, p3, p5

    .line 372
    .local v1, "worldOriginY":F
    iget v2, v6, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    .line 373
    .local v2, "n":I
    iget-object v3, v6, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 374
    .local v3, "vertices":[F
    const/4 v4, 0x0

    cmpl-float v4, p10, v4

    if-eqz v4, :cond_1

    .line 375
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 376
    aget v5, v3, v4

    sub-float/2addr v5, v0

    mul-float v5, v5, p8

    .local v5, "vx":F
    add-int/lit8 v7, v4, 0x1

    aget v7, v3, v7

    sub-float/2addr v7, v1

    mul-float v7, v7, p9

    .line 377
    .local v7, "vy":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v8

    .local v8, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v9

    .line 378
    .local v9, "sin":F
    mul-float v10, v8, v5

    mul-float v11, v9, v7

    sub-float/2addr v10, v11

    add-float/2addr v10, v0

    aput v10, v3, v4

    .line 379
    add-int/lit8 v10, v4, 0x1

    mul-float v11, v9, v5

    mul-float v12, v8, v7

    add-float/2addr v11, v12

    add-float/2addr v11, v1

    aput v11, v3, v10

    .line 375
    .end local v5    # "vx":F
    .end local v7    # "vy":F
    .end local v8    # "cos":F
    .end local v9    # "sin":F
    add-int/lit8 v4, v4, 0x5

    goto :goto_0

    .end local v4    # "i":I
    :cond_0
    goto :goto_2

    .line 381
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, p8, v4

    if-nez v5, :cond_2

    cmpl-float v4, p9, v4

    if-eqz v4, :cond_3

    .line 382
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 383
    aget v5, v3, v4

    sub-float/2addr v5, v0

    mul-float v5, v5, p8

    add-float/2addr v5, v0

    aput v5, v3, v4

    .line 384
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v7, v4, 0x1

    aget v7, v3, v7

    sub-float/2addr v7, v1

    mul-float v7, v7, p9

    add-float/2addr v7, v1

    aput v7, v3, v5

    .line 382
    add-int/lit8 v4, v4, 0x5

    goto :goto_1

    .line 387
    .end local v4    # "i":I
    :cond_3
    :goto_2
    iget-object v4, v6, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v5, 0x0

    move-object v7, p1

    invoke-interface {p1, v4, v3, v5, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 388
    return-void
.end method

.method public getBottomHeight()F
    .locals 1

    .line 428
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getLeftWidth()F
    .locals 1

    .line 401
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    return v0
.end method

.method public getMiddleHeight()F
    .locals 1

    .line 448
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    return v0
.end method

.method public getMiddleWidth()F
    .locals 1

    .line 437
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    return v0
.end method

.method public getPadBottom()F
    .locals 2

    .line 510
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v0

    return v0

    .line 511
    :cond_0
    return v0
.end method

.method public getPadLeft()F
    .locals 2

    .line 477
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v0

    return v0

    .line 478
    :cond_0
    return v0
.end method

.method public getPadRight()F
    .locals 2

    .line 488
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v0

    return v0

    .line 489
    :cond_0
    return v0
.end method

.method public getPadTop()F
    .locals 2

    .line 499
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v0

    return v0

    .line 500
    :cond_0
    return v0
.end method

.method public getRightWidth()F
    .locals 1

    .line 410
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    return v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getTopHeight()F
    .locals 1

    .line 419
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    return v0
.end method

.method public getTotalHeight()F
    .locals 2

    .line 463
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTotalWidth()F
    .locals 2

    .line 459
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    add-float/2addr v0, v1

    return v0
.end method

.method public scale(FF)V
    .locals 3
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 521
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 522
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 523
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 524
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 525
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 526
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    .line 527
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    .line 528
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    .line 529
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    .line 530
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 531
    :cond_3
    return-void
.end method

.method public setBottomHeight(F)V
    .locals 0
    .param p1, "bottomHeight"    # F

    .line 433
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 434
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 393
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 394
    return-void
.end method

.method public setLeftWidth(F)V
    .locals 0
    .param p1, "leftWidth"    # F

    .line 406
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 407
    return-void
.end method

.method public setMiddleHeight(F)V
    .locals 0
    .param p1, "middleHeight"    # F

    .line 455
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    .line 456
    return-void
.end method

.method public setMiddleWidth(F)V
    .locals 0
    .param p1, "middleWidth"    # F

    .line 444
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 445
    return-void
.end method

.method public setPadBottom(F)V
    .locals 0
    .param p1, "bottom"    # F

    .line 516
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 517
    return-void
.end method

.method public setPadLeft(F)V
    .locals 0
    .param p1, "left"    # F

    .line 483
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    .line 484
    return-void
.end method

.method public setPadRight(F)V
    .locals 0
    .param p1, "right"    # F

    .line 494
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    .line 495
    return-void
.end method

.method public setPadTop(F)V
    .locals 0
    .param p1, "top"    # F

    .line 505
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    .line 506
    return-void
.end method

.method public setPadding(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "top"    # F
    .param p4, "bottom"    # F

    .line 469
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    .line 470
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    .line 471
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    .line 472
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 473
    return-void
.end method

.method public setRightWidth(F)V
    .locals 0
    .param p1, "rightWidth"    # F

    .line 415
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 416
    return-void
.end method

.method public setTopHeight(F)V
    .locals 0
    .param p1, "topHeight"    # F

    .line 424
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 425
    return-void
.end method
