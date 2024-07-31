.class final Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;
.super Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;
.source "AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint.java"


# instance fields
.field private final affectedApiLevels:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final affectedFormats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final excludedSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Landroid/util/Range;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "affectedFormats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "affectedApiLevels":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local p3, "excludedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;-><init>()V

    .line 23
    if-eqz p1, :cond_2

    .line 26
    iput-object p1, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedFormats:Ljava/util/Set;

    .line 27
    if-eqz p2, :cond_1

    .line 30
    iput-object p2, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedApiLevels:Landroid/util/Range;

    .line 31
    if-eqz p3, :cond_0

    .line 34
    iput-object p3, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->excludedSizes:Ljava/util/List;

    .line 35
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null excludedSizes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null affectedApiLevels"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null affectedFormats"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 63
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 64
    return v0

    .line 66
    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 67
    move-object v1, p1

    check-cast v1, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;

    .line 68
    .local v1, "that":Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;
    iget-object v3, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedFormats:Ljava/util/Set;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;->getAffectedFormats()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedApiLevels:Landroid/util/Range;

    .line 69
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;->getAffectedApiLevels()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->excludedSizes:Ljava/util/List;

    .line 70
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;->getExcludedSizes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 68
    :goto_0
    return v0

    .line 72
    .end local v1    # "that":Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;
    :cond_2
    return v2
.end method

.method public getAffectedApiLevels()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedApiLevels:Landroid/util/Range;

    return-object v0
.end method

.method public getAffectedFormats()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedFormats:Ljava/util/Set;

    return-object v0
.end method

.method public getExcludedSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->excludedSizes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 77
    const/4 v0, 0x1

    .line 78
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 79
    iget-object v2, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedFormats:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 80
    mul-int/2addr v0, v1

    .line 81
    iget-object v2, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedApiLevels:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 82
    mul-int/2addr v0, v1

    .line 83
    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->excludedSizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 84
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExcludedSizeConstraint{affectedFormats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedFormats:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", affectedApiLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedApiLevels:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", excludedSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->excludedSizes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
