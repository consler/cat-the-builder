.class public final Lorg/catrobat/catroid/utils/TextBlockUtil;
.super Ljava/lang/Object;
.source "TextBlockUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0004J\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/catrobat/catroid/utils/TextBlockUtil;",
        "",
        "()V",
        "MAX_TEXT_SIZE",
        "",
        "TRUSTED_THRESHOLD",
        "",
        "imageHeight",
        "imageWidth",
        "textBlockBoundingBoxes",
        "",
        "Landroid/graphics/Rect;",
        "textBlockLanguages",
        "",
        "",
        "textBlocks",
        "getCenterCoordinates",
        "Landroid/graphics/Point;",
        "index",
        "getSize",
        "",
        "getTextBlock",
        "getTextBlockLanguage",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/catroid/utils/TextBlockUtil;

.field private static final MAX_TEXT_SIZE:I = 0x64

.field private static final TRUSTED_THRESHOLD:F = 0.01f

.field private static imageHeight:I

.field private static imageWidth:I

.field private static textBlockBoundingBoxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static textBlockLanguages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static textBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/catrobat/catroid/utils/TextBlockUtil;

    invoke-direct {v0}, Lorg/catrobat/catroid/utils/TextBlockUtil;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/utils/TextBlockUtil;->INSTANCE:Lorg/catrobat/catroid/utils/TextBlockUtil;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lorg/catrobat/catroid/utils/TextBlockUtil;->textBlocks:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lorg/catrobat/catroid/utils/TextBlockUtil;->textBlockBoundingBoxes:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/catrobat/catroid/utils/TextBlockUtil;->textBlockLanguages:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCenterCoordinates(I)Landroid/graphics/Point;
    .locals 19
    .param p1, "index"    # I

    .line 93
    sget-object v0, Lorg/catrobat/catroid/utils/TextBlockUtil;->textBlockBoundingBoxes:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 94
    .local v0, "textBlockBounds":Landroid/graphics/Rect;
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getActiveCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/catrobat/catroid/camera/CameraManager;->isCameraFacingFront()Z

    move-result v1

    .line 95
    .local v1, "isCameraFacingFront":Z
    sget v2, Lorg/catrobat/catroid/utils/TextBlockUtil;->imageWidth:I

    int-to-double v2, v2

    sget v4, Lorg/catrobat/catroid/utils/TextBlockUtil;->imageHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 97
    .local v2, "aspectRatio":D
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v4

    const-string v5, "ProjectManager.getInstance()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/ProjectManager;->isCurrentProjectLandscapeMode()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    float-to-double v6, v4

    sget v4, Lorg/catrobat/catroid/utils/TextBlockUtil;->imageWidth:I

    int-to-double v8, v4

    div-double/2addr v6, v8

    .line 99
    .local v6, "relativeX":D
    if-eqz v1, :cond_0

    int-to-double v8, v5

    sub-double/2addr v8, v6

    move-wide v11, v8

    goto :goto_0

    :cond_0
    move-wide v11, v6

    .line 100
    .end local v6    # "relativeX":D
    .local v11, "relativeX":D
    :goto_0
    sget-object v10, Lorg/catrobat/catroid/camera/VisualDetectionHandler;->INSTANCE:Lorg/catrobat/catroid/camera/VisualDetectionHandler;

    .line 101
    nop

    .line 102
    sget v4, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    int-to-double v13, v4

    .line 103
    int-to-double v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    float-to-double v6, v6

    sget v8, Lorg/catrobat/catroid/utils/TextBlockUtil;->imageHeight:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    sub-double v15, v4, v6

    .line 104
    sget v4, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    int-to-float v4, v4

    float-to-double v4, v4

    div-double v17, v4, v2

    .line 100
    invoke-virtual/range {v10 .. v18}, Lorg/catrobat/catroid/camera/VisualDetectionHandler;->coordinatesFromRelativePosition(DDDD)Landroid/graphics/Point;

    move-result-object v4

    .end local v11    # "relativeX":D
    goto :goto_2

    .line 107
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    float-to-double v6, v4

    sget v4, Lorg/catrobat/catroid/utils/TextBlockUtil;->imageHeight:I

    int-to-double v8, v4

    div-double/2addr v6, v8

    .line 108
    .restart local v6    # "relativeX":D
    if-eqz v1, :cond_2

    int-to-double v8, v5

    sub-double/2addr v8, v6

    move-wide v11, v8

    goto :goto_1

    :cond_2
    move-wide v11, v6

    .line 109
    .end local v6    # "relativeX":D
    .restart local v11    # "relativeX":D
    :goto_1
    sget-object v10, Lorg/catrobat/catroid/camera/VisualDetectionHandler;->INSTANCE:Lorg/catrobat/catroid/camera/VisualDetectionHandler;

    .line 110
    nop

    .line 111
    sget v4, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    int-to-double v6, v4

    div-double v13, v6, v2

    .line 112
    int-to-double v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    float-to-double v6, v6

    sget v8, Lorg/catrobat/catroid/utils/TextBlockUtil;->imageWidth:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    sub-double v15, v4, v6

    .line 113
    sget v4, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    int-to-double v4, v4

    .line 109
    move-wide/from16 v17, v4

    invoke-virtual/range {v10 .. v18}, Lorg/catrobat/catroid/camera/VisualDetectionHandler;->coordinatesFromRelativePosition(DDDD)Landroid/graphics/Point;

    move-result-object v4

    .line 97
    .end local v11    # "relativeX":D
    :goto_2
    return-object v4

    .line 94
    .end local v1    # "isCameraFacingFront":Z
    .end local v2    # "aspectRatio":D
    :cond_3
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    .line 93
    .end local v0    # "textBlockBounds":Landroid/graphics/Rect;
    :cond_4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final getSize(I)D
    .locals 4
    .param p1, "index"    # I

    .line 119
    sget-object v0, Lorg/catrobat/catroid/utils/TextBlockUtil;->textBlockBoundingBoxes:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 120
    .local v0, "textBlockBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/catrobat/catroid/utils/TextBlockUtil;->imageWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 121
    .local v1, "relativeTextBlockSize":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 122
    const/high16 v1, 0x3f800000    # 1.0f

    .line 124
    :cond_0
    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    int-to-double v2, v2

    return-wide v2

    .line 119
    .end local v0    # "textBlockBounds":Landroid/graphics/Rect;
    .end local v1    # "relativeTextBlockSize":F
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getTextBlock(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 88
    sget-object v0, Lorg/catrobat/catroid/utils/TextBlockUtil;->textBlocks:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method public final getTextBlockLanguage(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 90
    sget-object v0, Lorg/catrobat/catroid/utils/TextBlockUtil;->textBlockLanguages:Ljava/util/Map;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method
