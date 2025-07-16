.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;
.source "GradientColorValue.java"


# static fields
.field private static temp:[F


# instance fields
.field private colors:[F

.field public timeline:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 25
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->temp:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 27
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 28
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getColor(F[FI)V
    .locals 9

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    .line 54
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    move v8, v3

    move v3, v2

    move v2, v8

    const/4 v4, -0x1

    if-ge v2, v1, :cond_1

    .line 56
    aget v5, v0, v2

    cmpl-float v5, v5, p1

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 63
    :goto_1
    aget v1, v0, v3

    mul-int/lit8 v3, v3, 0x3

    .line 65
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    aget v6, v5, v3

    add-int/lit8 v7, v3, 0x1

    .line 66
    aget v7, v5, v7

    add-int/lit8 v3, v3, 0x2

    .line 67
    aget v3, v5, v3

    if-ne v2, v4, :cond_2

    .line 69
    aput v6, p2, p3

    add-int/lit8 p1, p3, 0x1

    .line 70
    aput v7, p2, p1

    add-int/lit8 p3, p3, 0x2

    .line 71
    aput v3, p2, p3

    return-void

    :cond_2
    sub-float/2addr p1, v1

    .line 74
    aget v0, v0, v2

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    mul-int/lit8 v2, v2, 0x3

    .line 76
    aget v0, v5, v2

    sub-float/2addr v0, v6

    mul-float/2addr v0, p1

    add-float/2addr v6, v0

    aput v6, p2, p3

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, v2, 0x1

    .line 77
    aget v1, v5, v1

    sub-float/2addr v1, v7

    mul-float/2addr v1, p1

    add-float/2addr v7, v1

    aput v7, p2, v0

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 v2, v2, 0x2

    .line 78
    aget v0, v5, v2

    sub-float/2addr v0, v3

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    aput v3, p2, p3

    return-void
.end method

.method public getColor(F)[F
    .locals 2

    .line 47
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->temp:[F

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->getColor(F[FI)V

    .line 48
    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->temp:[F

    return-object p1
.end method

.method public getColors()[F
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    return-object v0
.end method

.method public getTimeline()[F
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;)V
    .locals 4

    .line 96
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 97
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    .line 98
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    .line 100
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    array-length v1, v0

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2

    .line 90
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    const-string v0, "colors"

    .line 91
    const-class v1, [F

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    const-string v0, "timeline"

    .line 92
    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    return-void
.end method

.method public setColors([F)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    return-void
.end method

.method public setTimeline([F)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    const-string v0, "colors"

    .line 84
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "timeline"

    .line 85
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
