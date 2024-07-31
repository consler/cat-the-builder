.class abstract Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;
.super Ljava/lang/Object;
.source "SupportedSizeConstraints.java"

# interfaces
.implements Landroidx/camera/camera2/internal/SupportedSizeConstraints$Constraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/SupportedSizeConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ExcludedSizeConstraint"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method public static create(Ljava/util/Set;Landroid/util/Range;Ljava/util/List;)Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;
    .locals 1
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
            ">;)",
            "Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;"
        }
    .end annotation

    .line 149
    .local p0, "affectedFormats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p1, "affectedApiLevels":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local p2, "exclusedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;-><init>(Ljava/util/Set;Landroid/util/Range;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract getAffectedApiLevels()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAffectedFormats()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExcludedSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method
