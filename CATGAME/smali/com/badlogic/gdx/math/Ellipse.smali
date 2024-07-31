.class public Lcom/badlogic/gdx/math/Ellipse;
.super Ljava/lang/Object;
.source "Ellipse.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Shape2D;


# static fields
.field private static final serialVersionUID:J = 0x66707957a1178663L


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 56
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 57
    iput p3, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 58
    iput p4, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Circle;)V
    .locals 2
    .param p1, "circle"    # Lcom/badlogic/gdx/math/Circle;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 85
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 86
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 87
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Ellipse;)V
    .locals 1
    .param p1, "ellipse"    # Lcom/badlogic/gdx/math/Ellipse;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 43
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 44
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 45
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->height:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;FF)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 68
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 69
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 70
    iput p3, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "size"    # Lcom/badlogic/gdx/math/Vector2;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 75
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 76
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 77
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 78
    return-void
.end method


# virtual methods
.method public area()F
    .locals 2

    .line 183
    iget v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    iget v1, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    mul-float/2addr v0, v1

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public circumference()F
    .locals 10

    .line 191
    iget v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 192
    .local v0, "a":F
    iget v2, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    div-float/2addr v2, v1

    .line 193
    .local v2, "b":F
    const/high16 v3, 0x40400000    # 3.0f

    mul-float v4, v0, v3

    cmpl-float v4, v4, v2

    if-gtz v4, :cond_1

    mul-float v4, v2, v3

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    const-wide v3, 0x401921fb60000000L    # 6.2831854820251465

    mul-float v5, v0, v0

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    div-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-float v1, v5

    return v1

    .line 195
    :cond_1
    :goto_0
    const-wide v4, 0x400921fb60000000L    # 3.1415927410125732

    add-float v1, v0, v2

    mul-float/2addr v1, v3

    float-to-double v6, v1

    mul-float v1, v0, v3

    add-float/2addr v1, v2

    mul-float/2addr v3, v2

    add-float/2addr v3, v0

    mul-float/2addr v1, v3

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    double-to-float v1, v6

    return v1
.end method

.method public contains(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    sub-float/2addr p1, v0

    .line 98
    iget v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    sub-float/2addr p2, v0

    .line 100
    mul-float v0, p1, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v1, v2

    mul-float/2addr v3, v1

    mul-float/2addr v3, v2

    div-float/2addr v0, v3

    mul-float v1, p2, p2

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    mul-float v4, v3, v2

    mul-float/2addr v4, v3

    mul-float/2addr v4, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .line 109
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Ellipse;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 204
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 205
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 206
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/math/Ellipse;

    .line 207
    .local v2, "e":Lcom/badlogic/gdx/math/Ellipse;
    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    iget v4, v2, Lcom/badlogic/gdx/math/Ellipse;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    iget v4, v2, Lcom/badlogic/gdx/math/Ellipse;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    iget v4, v2, Lcom/badlogic/gdx/math/Ellipse;->width:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    iget v4, v2, Lcom/badlogic/gdx/math/Ellipse;->height:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 205
    .end local v2    # "e":Lcom/badlogic/gdx/math/Ellipse;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 212
    const/16 v0, 0x35

    .line 213
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 214
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x35

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 215
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x35

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 216
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x35

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 217
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x35

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 218
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public set(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 119
    iput p1, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 120
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 121
    iput p3, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 122
    iput p4, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 123
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Circle;)V
    .locals 2
    .param p1, "circle"    # Lcom/badlogic/gdx/math/Circle;

    .line 136
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 137
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 138
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 139
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 140
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Ellipse;)V
    .locals 1
    .param p1, "ellipse"    # Lcom/badlogic/gdx/math/Ellipse;

    .line 129
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 130
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 131
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 132
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->height:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 133
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "size"    # Lcom/badlogic/gdx/math/Vector2;

    .line 143
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 144
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 145
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 146
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 147
    return-void
.end method

.method public setPosition(FF)Lcom/badlogic/gdx/math/Ellipse;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 164
    iput p1, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 165
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 167
    return-object p0
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Ellipse;
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;

    .line 153
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 154
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 156
    return-object p0
.end method

.method public setSize(FF)Lcom/badlogic/gdx/math/Ellipse;
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 175
    iput p1, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 176
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 178
    return-object p0
.end method
