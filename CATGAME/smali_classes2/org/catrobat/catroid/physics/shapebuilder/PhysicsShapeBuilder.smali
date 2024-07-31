.class public final Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;
.super Ljava/lang/Object;
.source "PhysicsShapeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;
    }
.end annotation


# static fields
.field private static final ACCURACY_LEVELS:[F

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;


# instance fields
.field private imageShapesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;",
            ">;"
        }
    .end annotation
.end field

.field private strategy:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->ACCURACY_LEVELS:[F

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->instance:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;

    return-void

    :array_0
    .array-data 4
        0x3e000000    # 0.125f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategyFastHull;

    invoke-direct {v0}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategyFastHull;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->strategy:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategy;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->imageShapesMap:Ljava/util/Map;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;)Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategy;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->strategy:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategy;

    return-object v0
.end method

.method private static getAccuracyLevel(F)F
    .locals 5
    .param p0, "scaleFactor"    # F

    .line 91
    sget-object v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->ACCURACY_LEVELS:[F

    array-length v1, v0

    if-nez v1, :cond_0

    .line 92
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 96
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 99
    :cond_1
    const/4 v0, 0x0

    .local v0, "accuracyIdx":I
    :goto_0
    sget-object v1, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->ACCURACY_LEVELS:[F

    array-length v3, v1

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_3

    .line 100
    aget v3, v1, v0

    aget v4, v1, v0

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 101
    .local v3, "average":F
    cmpg-float v4, p0, v3

    if-gez v4, :cond_2

    .line 102
    aget v1, v1, v0

    return v1

    .line 99
    .end local v3    # "average":F
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "accuracyIdx":I
    :cond_3
    array-length v0, v1

    sub-int/2addr v0, v2

    aget v0, v1, v0

    return v0
.end method

.method public static getInstance()Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;
    .locals 1

    .line 44
    sget-object v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->instance:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;

    invoke-direct {v0}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->instance:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;

    .line 47
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->instance:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getScaledShapes(Lorg/catrobat/catroid/common/LookData;F)[Lcom/badlogic/gdx/physics/box2d/Shape;
    .locals 7
    .param p1, "lookData"    # Lorg/catrobat/catroid/common/LookData;
    .param p2, "scaleFactor"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    monitor-enter p0

    .line 62
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_4

    .line 64
    if-eqz p1, :cond_3

    .line 68
    :try_start_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getPixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    .line 69
    .local v0, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 70
    sget-object v2, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->TAG:Ljava/lang/String;

    const-string v3, "pixmap should not be null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-object v1

    .line 74
    .end local p0    # "this":Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/utils/Utils;->md5Checksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "imageIdentifier":Ljava/lang/String;
    iget-object v3, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->imageShapesMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    iget-object v3, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->imageShapesMap:Ljava/util/Map;

    new-instance v4, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;

    invoke-direct {v4, p0, v0}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;-><init>(Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_1
    invoke-static {p2}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->getAccuracyLevel(F)F

    move-result v3

    .line 80
    .local v3, "accuracyLevel":F
    iget-object v4, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->imageShapesMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;

    invoke-virtual {v4, v3}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->getShapes(F)[Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v4

    .line 82
    .local v4, "shapes":[Lcom/badlogic/gdx/physics/box2d/Shape;
    if-nez v4, :cond_2

    .line 83
    sget-object v5, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->TAG:Ljava/lang/String;

    const-string v6, "shapes should not be null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    monitor-exit p0

    return-object v1

    .line 87
    :cond_2
    :try_start_2
    invoke-static {v4, p2}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeScaleUtils;->scaleShapes([Lcom/badlogic/gdx/physics/box2d/Shape;F)[Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 65
    .end local v0    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v2    # "imageIdentifier":Ljava/lang/String;
    .end local v3    # "accuracyLevel":F
    .end local v4    # "shapes":[Lcom/badlogic/gdx/physics/box2d/Shape;
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "get shape for null lookData not possible"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "scaleFactor can not be smaller than 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    .end local p1    # "lookData":Lorg/catrobat/catroid/common/LookData;
    .end local p2    # "scaleFactor":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reset()V
    .locals 1

    .line 57
    new-instance v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategyFastHull;

    invoke-direct {v0}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategyFastHull;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->strategy:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategy;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->imageShapesMap:Ljava/util/Map;

    .line 59
    return-void
.end method
