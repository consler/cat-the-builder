.class final Landroidx/camera/core/impl/AutoValue_SurfaceConfig;
.super Landroidx/camera/core/impl/SurfaceConfig;
.source "AutoValue_SurfaceConfig.java"


# instance fields
.field private final configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field private final configType:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/camera/core/impl/SurfaceConfig;-><init>()V

    if-eqz p1, :cond_1

    .line 20
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_SurfaceConfig;->configType:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    if-eqz p2, :cond_0

    .line 24
    iput-object p2, p0, Landroidx/camera/core/impl/AutoValue_SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null configSize"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null configType"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/SurfaceConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 53
    check-cast p1, Landroidx/camera/core/impl/SurfaceConfig;

    .line 54
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_SurfaceConfig;->configType:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    invoke-virtual {p1}, Landroidx/camera/core/impl/SurfaceConfig;->getConfigType()Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 55
    invoke-virtual {p1}, Landroidx/camera/core/impl/SurfaceConfig;->getConfigSize()Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getConfigSize()Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;
    .locals 1

    .line 36
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    return-object v0
.end method

.method public getConfigType()Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
    .locals 1

    .line 30
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_SurfaceConfig;->configType:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 64
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_SurfaceConfig;->configType:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 66
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-virtual {v1}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurfaceConfig{configType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_SurfaceConfig;->configType:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", configSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
