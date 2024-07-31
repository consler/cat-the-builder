.class public Lcom/badlogic/gdx/math/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Shape2D;


# static fields
.field private static final serialVersionUID:J = 0x4f909a54ea199076L

.field public static final tmp:Lcom/badlogic/gdx/math/Rectangle;

.field public static final tmp2:Lcom/badlogic/gdx/math/Rectangle;


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Rectangle;->tmp:Lcom/badlogic/gdx/math/Rectangle;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Rectangle;->tmp2:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 47
    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 48
    iput p3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 49
    iput p4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 1
    .param p1, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 56
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 57
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 58
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 59
    return-void
.end method


# virtual methods
.method public area()F
    .locals 2

    .line 401
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public contains(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 189
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v1, v0, p1

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v1, v0, p2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Lcom/badlogic/gdx/math/Circle;)Z
    .locals 3
    .param p1, "circle"    # Lcom/badlogic/gdx/math/Circle;

    .line 201
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 7
    .param p1, "rectangle"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 208
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 209
    .local v0, "xmin":F
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v0

    .line 211
    .local v1, "xmax":F
    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 212
    .local v2, "ymin":F
    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v2

    .line 214
    .local v3, "ymax":F
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v5, v0, v4

    if-lez v5, :cond_0

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float v6, v4, v5

    cmpg-float v6, v0, v6

    if-gez v6, :cond_0

    cmpl-float v6, v1, v4

    if-lez v6, :cond_0

    add-float/2addr v4, v5

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float v6, v4, v5

    cmpg-float v6, v2, v6

    if-gez v6, :cond_0

    cmpl-float v6, v3, v4

    if-lez v6, :cond_0

    add-float/2addr v4, v5

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .line 195
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 419
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 420
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 421
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 422
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/math/Rectangle;

    .line 423
    .local v2, "other":Lcom/badlogic/gdx/math/Rectangle;
    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_3

    return v1

    .line 424
    :cond_3
    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    return v1

    .line 425
    :cond_4
    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_5

    return v1

    .line 426
    :cond_5
    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_6

    return v1

    .line 427
    :cond_6
    return v0
.end method

.method public fitInside(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 5
    .param p1, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 358
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getAspectRatio()F

    move-result v0

    .line 360
    .local v0, "ratio":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getAspectRatio()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 362
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float v2, v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/badlogic/gdx/math/Rectangle;->setSize(FF)Lcom/badlogic/gdx/math/Rectangle;

    goto :goto_0

    .line 365
    :cond_0
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float v2, v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->setSize(FF)Lcom/badlogic/gdx/math/Rectangle;

    .line 368
    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;

    .line 369
    return-object p0
.end method

.method public fitOutside(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 5
    .param p1, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 338
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getAspectRatio()F

    move-result v0

    .line 340
    .local v0, "ratio":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getAspectRatio()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 342
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float v2, v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/badlogic/gdx/math/Rectangle;->setSize(FF)Lcom/badlogic/gdx/math/Rectangle;

    goto :goto_0

    .line 345
    :cond_0
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float v2, v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->setSize(FF)Lcom/badlogic/gdx/math/Rectangle;

    .line 348
    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;

    .line 349
    return-object p0
.end method

.method public fromString(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 9
    .param p1, "v"    # Ljava/lang/String;

    .line 383
    const/16 v0, 0x2c

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 384
    .local v2, "s0":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 385
    .local v3, "s1":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 386
    .local v0, "s2":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    if-eq v3, v4, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_0

    .line 388
    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 389
    .local v4, "x":F
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 390
    .local v5, "y":F
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 391
    .local v6, "width":F
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 392
    .local v1, "height":F
    invoke-virtual {p0, v4, v5, v6, v1}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 393
    .end local v1    # "height":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "width":F
    :catch_0
    move-exception v1

    .line 397
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed Rectangle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAspectRatio()F
    .locals 2

    .line 303
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float v0, v1, v0

    :goto_0
    return v0
.end method

.method public getCenter(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;

    .line 310
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 311
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 312
    return-object p1
.end method

.method public getHeight()F
    .locals 1

    .line 119
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return v0
.end method

.method public getPosition(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;

    .line 134
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getSize(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/math/Vector2;

    .line 182
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 105
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 91
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 409
    const/16 v0, 0x1f

    .line 410
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 411
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 412
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 413
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 414
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 415
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public merge(FF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 258
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 259
    .local v0, "minX":F
    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 260
    .local v1, "maxX":F
    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 261
    sub-float v2, v1, v0

    iput v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 263
    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 264
    .local v2, "minY":F
    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v4

    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 265
    .local v3, "maxY":F
    iput v2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 266
    sub-float v4, v3, v2

    iput v4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 268
    return-object p0
.end method

.method public merge(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 6
    .param p1, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 240
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 241
    .local v0, "minX":F
    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 242
    .local v1, "maxX":F
    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 243
    sub-float v2, v1, v0

    iput v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 245
    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 246
    .local v2, "minY":F
    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 247
    .local v3, "maxY":F
    iput v2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 248
    sub-float v4, v3, v2

    iput v4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 250
    return-object p0
.end method

.method public merge(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 2
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;

    .line 275
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->merge(FF)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public merge([Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 7
    .param p1, "vecs"    # [Lcom/badlogic/gdx/math/Vector2;

    .line 282
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 283
    .local v0, "minX":F
    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    .line 284
    .local v1, "maxX":F
    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 285
    .local v2, "minY":F
    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v4

    .line 286
    .local v3, "maxY":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 287
    aget-object v5, p1, v4

    .line 288
    .local v5, "v":Lcom/badlogic/gdx/math/Vector2;
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 289
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 290
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 291
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 286
    .end local v5    # "v":Lcom/badlogic/gdx/math/Vector2;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 293
    .end local v4    # "i":I
    :cond_0
    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 294
    sub-float v4, v1, v0

    iput v4, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 295
    iput v2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 296
    sub-float v4, v3, v2

    iput v4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 297
    return-object p0
.end method

.method public overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3
    .param p1, "r"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 221
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public perimeter()F
    .locals 2

    .line 405
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public set(FFFF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 67
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 68
    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 69
    iput p3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 70
    iput p4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 72
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 1
    .param p1, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 228
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 229
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 230
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 231
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 233
    return-object p0
.end method

.method public setCenter(FF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 320
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v2, v1

    sub-float v1, p2, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;

    .line 321
    return-object p0
.end method

.method public setCenter(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 4
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;

    .line 328
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;

    .line 329
    return-object p0
.end method

.method public setHeight(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "height"    # F

    .line 126
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 128
    return-object p0
.end method

.method public setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 152
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 153
    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 155
    return-object p0
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;

    .line 141
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 142
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 144
    return-object p0
.end method

.method public setSize(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "sizeXY"    # F

    .line 173
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 174
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 176
    return-object p0
.end method

.method public setSize(FF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 163
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 164
    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 166
    return-object p0
.end method

.method public setWidth(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "width"    # F

    .line 112
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 114
    return-object p0
.end method

.method public setX(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "x"    # F

    .line 84
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 86
    return-object p0
.end method

.method public setY(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "y"    # F

    .line 98
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 100
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
