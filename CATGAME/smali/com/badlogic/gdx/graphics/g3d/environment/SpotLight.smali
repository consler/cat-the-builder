.class public Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
.super Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
.source "SpotLight.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight<",
        "Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;",
        ">;"
    }
.end annotation


# instance fields
.field public cutoffAngle:F

.field public final direction:Lcom/badlogic/gdx/math/Vector3;

.field public exponent:F

.field public intensity:F

.field public final position:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method


# virtual methods
.method public equals(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    .line 126
    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    .line 127
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->exponent:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->exponent:F

    .line 128
    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 122
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->equals(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(FFFFFFFFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "posX"    # F
    .param p5, "posY"    # F
    .param p6, "posZ"    # F
    .param p7, "dirX"    # F
    .param p8, "dirY"    # F
    .param p9, "dirZ"    # F
    .param p10, "intensity"    # F
    .param p11, "cutoffAngle"    # F
    .param p12, "exponent"    # F

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p4, p5, p6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p7, p8, p9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 109
    iput p10, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    .line 110
    iput p11, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    .line 111
    iput p12, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->exponent:F

    .line 112
    return-object p0
.end method

.method public set(FFFLcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FFF)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "direction"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "intensity"    # F
    .param p7, "cutoffAngle"    # F
    .param p8, "exponent"    # F

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 85
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 86
    :cond_0
    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 87
    :cond_1
    iput p6, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    .line 88
    iput p7, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    .line 89
    iput p8, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->exponent:F

    .line 90
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;FFFFFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "posX"    # F
    .param p3, "posY"    # F
    .param p4, "posZ"    # F
    .param p5, "dirX"    # F
    .param p6, "dirY"    # F
    .param p7, "dirZ"    # F
    .param p8, "intensity"    # F
    .param p9, "cutoffAngle"    # F
    .param p10, "exponent"    # F

    .line 95
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2, p3, p4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p5, p6, p7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 98
    iput p8, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    .line 99
    iput p9, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    .line 100
    iput p10, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->exponent:F

    .line 101
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FFF)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "direction"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "intensity"    # F
    .param p5, "cutoffAngle"    # F
    .param p6, "exponent"    # F

    .line 73
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 74
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 75
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 76
    :cond_2
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    .line 77
    iput p5, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    .line 78
    iput p6, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->exponent:F

    .line 79
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 7
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    .line 68
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->exponent:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->set(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FFF)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    move-result-object v0

    return-object v0
.end method

.method public setCutoffAngle(F)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 0
    .param p1, "cutoffAngle"    # F

    .line 58
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    .line 59
    return-object p0
.end method

.method public setDirection(FFF)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 1
    .param p1, "directionX"    # F
    .param p2, "directionY"    # F
    .param p3, "directionZ"    # F

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 44
    return-object p0
.end method

.method public setDirection(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 1
    .param p1, "direction"    # Lcom/badlogic/gdx/math/Vector3;

    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 49
    return-object p0
.end method

.method public setExponent(F)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 0
    .param p1, "exponent"    # F

    .line 63
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->exponent:F

    .line 64
    return-object p0
.end method

.method public setIntensity(F)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 0
    .param p1, "intensity"    # F

    .line 53
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    .line 54
    return-object p0
.end method

.method public setPosition(FFF)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 1
    .param p1, "positionX"    # F
    .param p2, "positionY"    # F
    .param p3, "positionZ"    # F

    .line 33
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 34
    return-object p0
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector3;

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 39
    return-object p0
.end method

.method public setTarget(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 2
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector3;

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 117
    return-object p0
.end method
