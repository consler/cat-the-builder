.class final Landroidx/camera/core/AutoValue_ImmutableImageInfo;
.super Landroidx/camera/core/ImmutableImageInfo;
.source "AutoValue_ImmutableImageInfo.java"


# instance fields
.field private final rotationDegrees:I

.field private final tag:Ljava/lang/Object;

.field private final timestamp:J


# direct methods
.method constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/camera/core/ImmutableImageInfo;-><init>()V

    .line 20
    iput-object p1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->tag:Ljava/lang/Object;

    .line 21
    iput-wide p2, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->timestamp:J

    .line 22
    iput p4, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->rotationDegrees:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 55
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/ImmutableImageInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 56
    check-cast p1, Landroidx/camera/core/ImmutableImageInfo;

    .line 57
    iget-object v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/core/ImmutableImageInfo;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/ImmutableImageInfo;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-wide v3, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->timestamp:J

    .line 58
    invoke-virtual {p1}, Landroidx/camera/core/ImmutableImageInfo;->getTimestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->rotationDegrees:I

    .line 59
    invoke-virtual {p1}, Landroidx/camera/core/ImmutableImageInfo;->getRotationDegrees()I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public getRotationDegrees()I
    .locals 1

    .line 38
    iget v0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->rotationDegrees:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 28
    iget-object v0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 33
    iget-wide v0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 68
    iget-object v0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->tag:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 70
    iget-wide v2, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->timestamp:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 72
    iget v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->rotationDegrees:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImmutableImageInfo{tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotationDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->rotationDegrees:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
