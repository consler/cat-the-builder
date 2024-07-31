.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradientColorValue"
.end annotation


# static fields
.field private static temp:[F


# instance fields
.field private colors:[F

.field timeline:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1570
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1575
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;-><init>()V

    .line 1572
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    .line 1573
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1576
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->alwaysActive:Z

    .line 1577
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
.method public getColor(F)[F
    .locals 16
    .param p1, "percent"    # F

    .line 1598
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "startIndex":I
    const/4 v2, -0x1

    .line 1599
    .local v2, "endIndex":I
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1600
    .local v3, "timeline":[F
    array-length v4, v3

    .line 1601
    .local v4, "n":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 1602
    aget v6, v3, v5

    .line 1603
    .local v6, "t":F
    cmpl-float v7, v6, p1

    if-lez v7, :cond_0

    .line 1604
    move v2, v5

    .line 1605
    goto :goto_1

    .line 1607
    :cond_0
    move v1, v5

    .line 1601
    .end local v6    # "t":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1609
    .end local v5    # "i":I
    :cond_1
    :goto_1
    aget v5, v3, v1

    .line 1610
    .local v5, "startTime":F
    mul-int/lit8 v1, v1, 0x3

    .line 1611
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    aget v7, v6, v1

    .line 1612
    .local v7, "r1":F
    add-int/lit8 v8, v1, 0x1

    aget v8, v6, v8

    .line 1613
    .local v8, "g1":F
    add-int/lit8 v9, v1, 0x2

    aget v9, v6, v9

    .line 1614
    .local v9, "b1":F
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v2, v10, :cond_2

    .line 1615
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    aput v7, v6, v11

    .line 1616
    aput v8, v6, v13

    .line 1617
    aput v9, v6, v12

    .line 1618
    return-object v6

    .line 1620
    :cond_2
    sub-float v10, p1, v5

    aget v14, v3, v2

    sub-float/2addr v14, v5

    div-float/2addr v10, v14

    .line 1621
    .local v10, "factor":F
    mul-int/lit8 v2, v2, 0x3

    .line 1622
    sget-object v14, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->temp:[F

    aget v15, v6, v2

    sub-float/2addr v15, v7

    mul-float/2addr v15, v10

    add-float/2addr v15, v7

    aput v15, v14, v11

    .line 1623
    add-int/lit8 v11, v2, 0x1

    aget v11, v6, v11

    sub-float/2addr v11, v8

    mul-float/2addr v11, v10

    add-float/2addr v11, v8

    aput v11, v14, v13

    .line 1624
    add-int/lit8 v11, v2, 0x2

    aget v6, v6, v11

    sub-float/2addr v6, v9

    mul-float/2addr v6, v10

    add-float/2addr v6, v9

    aput v6, v14, v12

    .line 1625
    return-object v14
.end method

.method public getColors()[F
    .locals 1

    .line 1589
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    return-object v0
.end method

.method public getTimeline()[F
    .locals 1

    .line 1580
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;)V
    .locals 4
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    .line 1651
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;)V

    .line 1652
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    .line 1653
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1654
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1655
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1656
    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 4
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1640
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Ljava/io/BufferedReader;)V

    .line 1641
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->active:Z

    if-nez v0, :cond_0

    return-void

    .line 1642
    :cond_0
    const-string v0, "colorsCount"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    .line 1643
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "colors"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 1643
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1645
    .end local v0    # "i":I
    :cond_1
    const-string/jumbo v0, "timelineCount"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1646
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 1646
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1648
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public save(Ljava/io/Writer;)V
    .locals 5
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1629
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->save(Ljava/io/Writer;)V

    .line 1630
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->active:Z

    if-nez v0, :cond_0

    return-void

    .line 1631
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "colorsCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1632
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    array-length v2, v2

    const-string v3, ": "

    if-ge v0, v2, :cond_1

    .line 1633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "colors"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1634
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timelineCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1635
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeline"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1635
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1637
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public setColors([F)V
    .locals 0
    .param p1, "colors"    # [F

    .line 1594
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->colors:[F

    .line 1595
    return-void
.end method

.method public setTimeline([F)V
    .locals 0
    .param p1, "timeline"    # [F

    .line 1584
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    .line 1585
    return-void
.end method
