.class final Landroidx/camera/camera2/internal/SupportedSizeConstraints;
.super Ljava/lang/Object;
.source "SupportedSizeConstraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;,
        Landroidx/camera/camera2/internal/SupportedSizeConstraints$Constraint;
    }
.end annotation


# static fields
.field private static final ALL_API_LEVELS:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALL_MODELS:Ljava/lang/String; = "allmodels"

.field private static final EXCLUDED_SIZES_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/internal/CameraDeviceId;",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 44
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Landroidx/camera/camera2/internal/SupportedSizeConstraints;->ALL_API_LEVELS:Landroid/util/Range;

    .line 55
    new-instance v0, Ljava/util/TreeMap;

    new-instance v2, Landroidx/camera/camera2/internal/SupportedSizeConstraints$1;

    invoke-direct {v2}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$1;-><init>()V

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Landroidx/camera/camera2/internal/SupportedSizeConstraints;->EXCLUDED_SIZES_MAP:Ljava/util/Map;

    .line 91
    const-string v2, "OnePlus"

    const-string v3, "OnePlus6T"

    const-string v4, "allmodels"

    const-string v5, "0"

    invoke-static {v2, v3, v4, v5}, Landroidx/camera/camera2/internal/CameraDeviceId;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/camera2/internal/CameraDeviceId;

    move-result-object v3

    .line 93
    const/16 v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    sget-object v8, Landroidx/camera/camera2/internal/SupportedSizeConstraints;->ALL_API_LEVELS:Landroid/util/Range;

    const/4 v9, 0x2

    new-array v10, v9, [Landroid/util/Size;

    new-instance v11, Landroid/util/Size;

    const/16 v12, 0x1040

    const/16 v13, 0xc30

    invoke-direct {v11, v12, v13}, Landroid/util/Size;-><init>(II)V

    aput-object v11, v10, v1

    new-instance v11, Landroid/util/Size;

    const/16 v14, 0xfa0

    const/16 v15, 0xbb8

    invoke-direct {v11, v14, v15}, Landroid/util/Size;-><init>(II)V

    const/16 v16, 0x1

    aput-object v11, v10, v16

    .line 95
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 93
    invoke-static {v7, v8, v10}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;->create(Ljava/util/Set;Landroid/util/Range;Ljava/util/List;)Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;

    move-result-object v7

    .line 92
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 91
    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Landroidx/camera/camera2/internal/SupportedSizeConstraints;->EXCLUDED_SIZES_MAP:Ljava/util/Map;

    const-string v3, "OnePlus6"

    invoke-static {v2, v3, v4, v5}, Landroidx/camera/camera2/internal/CameraDeviceId;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/camera2/internal/CameraDeviceId;

    move-result-object v2

    .line 98
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    sget-object v4, Landroidx/camera/camera2/internal/SupportedSizeConstraints;->ALL_API_LEVELS:Landroid/util/Range;

    new-array v5, v9, [Landroid/util/Size;

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v12, v13}, Landroid/util/Size;-><init>(II)V

    aput-object v6, v5, v1

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v14, v15}, Landroid/util/Size;-><init>(II)V

    aput-object v1, v5, v16

    .line 100
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 98
    invoke-static {v3, v4, v1}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;->create(Ljava/util/Set;Landroid/util/Range;Ljava/util/List;)Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;

    move-result-object v1

    .line 97
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 96
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method static getExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .param p0, "cameraId"    # Ljava/lang/String;
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 112
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Landroidx/camera/camera2/internal/CameraDeviceId;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/camera2/internal/CameraDeviceId;

    move-result-object v0

    .line 115
    .local v0, "cameraDeviceId":Landroidx/camera/camera2/internal/CameraDeviceId;
    sget-object v1, Landroidx/camera/camera2/internal/SupportedSizeConstraints;->EXCLUDED_SIZES_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v1, "excludedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    sget-object v2, Landroidx/camera/camera2/internal/SupportedSizeConstraints;->EXCLUDED_SIZES_MAP:Ljava/util/Map;

    .line 118
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 120
    .local v2, "excludedSizeConstraintList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;

    .line 121
    .local v4, "constraint":Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;
    invoke-virtual {v4}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;->getAffectedFormats()Ljava/util/Set;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    invoke-virtual {v4}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;->getAffectedApiLevels()Landroid/util/Range;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    invoke-virtual {v4}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;->getExcludedSizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    .end local v4    # "constraint":Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;
    :cond_0
    goto :goto_0

    .line 127
    :cond_1
    return-object v1

    .line 130
    .end local v1    # "excludedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v2    # "excludedSizeConstraintList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;>;"
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
