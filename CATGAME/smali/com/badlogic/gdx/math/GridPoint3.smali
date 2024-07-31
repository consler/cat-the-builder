.class public Lcom/badlogic/gdx/math/GridPoint3;
.super Ljava/lang/Object;
.source "GridPoint3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x522fd697dcb5173eL


# instance fields
.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    .line 42
    iput p2, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    .line 43
    iput p3, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/GridPoint3;)V
    .locals 1
    .param p1, "point"    # Lcom/badlogic/gdx/math/GridPoint3;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    .line 51
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    .line 52
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    .line 53
    return-void
.end method


# virtual methods
.method public add(III)Lcom/badlogic/gdx/math/GridPoint3;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .line 155
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    .line 156
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    .line 157
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    .line 158
    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/math/GridPoint3;)Lcom/badlogic/gdx/math/GridPoint3;
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/math/GridPoint3;

    .line 140
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    .line 141
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    .line 142
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    .line 143
    return-object p0
.end method

.method public cpy()Lcom/badlogic/gdx/math/GridPoint3;
    .locals 1

    .line 193
    new-instance v0, Lcom/badlogic/gdx/math/GridPoint3;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/GridPoint3;-><init>(Lcom/badlogic/gdx/math/GridPoint3;)V

    return-object v0
.end method

.method public dst(III)F
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .line 126
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    sub-int v0, p1, v0

    .line 127
    .local v0, "xd":I
    iget v1, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    sub-int v1, p2, v1

    .line 128
    .local v1, "yd":I
    iget v2, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    sub-int v2, p3, v2

    .line 130
    .local v2, "zd":I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public dst(Lcom/badlogic/gdx/math/GridPoint3;)F
    .locals 5
    .param p1, "other"    # Lcom/badlogic/gdx/math/GridPoint3;

    .line 112
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    iget v1, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    sub-int/2addr v0, v1

    .line 113
    .local v0, "xd":I
    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    iget v2, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    sub-int/2addr v1, v2

    .line 114
    .local v1, "yd":I
    iget v2, p1, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    sub-int/2addr v2, v3

    .line 116
    .local v2, "zd":I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public dst2(III)F
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .line 100
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    sub-int v0, p1, v0

    .line 101
    .local v0, "xd":I
    iget v1, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    sub-int v1, p2, v1

    .line 102
    .local v1, "yd":I
    iget v2, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    sub-int v2, p3, v2

    .line 104
    .local v2, "zd":I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    return v3
.end method

.method public dst2(Lcom/badlogic/gdx/math/GridPoint3;)F
    .locals 5
    .param p1, "other"    # Lcom/badlogic/gdx/math/GridPoint3;

    .line 86
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    iget v1, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    sub-int/2addr v0, v1

    .line 87
    .local v0, "xd":I
    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    iget v2, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    sub-int/2addr v1, v2

    .line 88
    .local v1, "yd":I
    iget v2, p1, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    sub-int/2addr v2, v3

    .line 90
    .local v2, "zd":I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 198
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 199
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 200
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/math/GridPoint3;

    .line 201
    .local v2, "g":Lcom/badlogic/gdx/math/GridPoint3;
    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    iget v4, v2, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    iget v4, v2, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    iget v4, v2, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 199
    .end local v2    # "g":Lcom/badlogic/gdx/math/GridPoint3;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 206
    const/16 v0, 0x11

    .line 207
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 208
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x11

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    add-int/2addr v2, v3

    .line 209
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x11

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    add-int/2addr v1, v3

    .line 210
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x11

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    add-int/2addr v2, v3

    .line 211
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public set(III)Lcom/badlogic/gdx/math/GridPoint3;
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .line 75
    iput p1, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    .line 76
    iput p2, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    .line 77
    iput p3, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    .line 78
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/GridPoint3;)Lcom/badlogic/gdx/math/GridPoint3;
    .locals 1
    .param p1, "point"    # Lcom/badlogic/gdx/math/GridPoint3;

    .line 61
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    .line 62
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    .line 63
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    .line 64
    return-object p0
.end method

.method public sub(III)Lcom/badlogic/gdx/math/GridPoint3;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .line 183
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    .line 186
    return-object p0
.end method

.method public sub(Lcom/badlogic/gdx/math/GridPoint3;)Lcom/badlogic/gdx/math/GridPoint3;
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/math/GridPoint3;

    .line 168
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    .line 169
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    .line 170
    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    .line 171
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
