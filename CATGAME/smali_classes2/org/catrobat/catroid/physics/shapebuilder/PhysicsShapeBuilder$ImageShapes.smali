.class Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;
.super Ljava/lang/Object;
.source "PhysicsShapeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageShapes"
.end annotation


# static fields
.field private static final MAX_ORIGINAL_PIXMAP_SIZE:I = 0x200


# instance fields
.field private pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

.field private shapeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lcom/badlogic/gdx/physics/box2d/Shape;",
            ">;"
        }
    .end annotation
.end field

.field private sizeAdjustmentScaleFactor:F

.field final synthetic this$0:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 3
    .param p2, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 119
    iput-object p1, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->this$0:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->shapeMap:Ljava/util/Map;

    .line 117
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->sizeAdjustmentScaleFactor:F

    .line 120
    if-eqz p2, :cond_3

    .line 123
    iput-object p2, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 124
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result p1

    .line 125
    .local p1, "width":I
    iget-object v0, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    .line 126
    .local v0, "height":I
    const/16 v1, 0x200

    if-gt p1, v1, :cond_0

    if-le v0, v1, :cond_2

    .line 127
    :cond_0
    const/high16 v1, 0x44000000    # 512.0f

    if-le p1, v0, :cond_1

    .line 128
    int-to-float v2, p1

    div-float/2addr v1, v2

    iput v1, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->sizeAdjustmentScaleFactor:F

    goto :goto_0

    .line 130
    :cond_1
    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->sizeAdjustmentScaleFactor:F

    .line 133
    :cond_2
    :goto_0
    return-void

    .line 121
    .end local v0    # "height":I
    .end local p1    # "width":I
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Pixmap must not null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private computeNewShape(F)[Lcom/badlogic/gdx/physics/box2d/Shape;
    .locals 16
    .param p1, "accuracy"    # F

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    .line 141
    .local v1, "width":I
    iget-object v2, v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v12

    .line 142
    .local v12, "height":I
    int-to-float v2, v1

    iget v3, v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->sizeAdjustmentScaleFactor:F

    mul-float/2addr v2, v3

    mul-float v2, v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 143
    .local v2, "scaledWidth":I
    int-to-float v3, v12

    iget v4, v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->sizeAdjustmentScaleFactor:F

    mul-float/2addr v3, v4

    mul-float v3, v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 145
    .local v3, "scaledHeight":I
    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    .line 146
    const/4 v2, 0x1

    move v13, v2

    goto :goto_0

    .line 145
    :cond_0
    move v13, v2

    .line 148
    .end local v2    # "scaledWidth":I
    .local v13, "scaledWidth":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 149
    const/4 v3, 0x1

    move v14, v3

    goto :goto_1

    .line 148
    :cond_1
    move v14, v3

    .line 152
    .end local v3    # "scaledHeight":I
    .local v14, "scaledHeight":I
    :goto_1
    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v3, v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    invoke-direct {v2, v13, v14, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v15, v2

    .line 153
    .local v15, "scaledPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->NearestNeighbour:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setFilter(Lcom/badlogic/gdx/graphics/Pixmap$Filter;)V

    .line 154
    iget-object v3, v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v15

    move v6, v1

    move v7, v12

    move v10, v13

    move v11, v14

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 155
    iget-object v2, v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->this$0:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;

    invoke-static {v2}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->access$000(Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;)Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategy;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v2, v15, v3}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategy;->build(Lcom/badlogic/gdx/graphics/Pixmap;F)[Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v2

    .line 157
    .local v2, "scaledShapes":[Lcom/badlogic/gdx/physics/box2d/Shape;
    iget v4, v0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->sizeAdjustmentScaleFactor:F

    mul-float v4, v4, p1

    invoke-static {v2, v3, v4}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeScaleUtils;->scaleShapes([Lcom/badlogic/gdx/physics/box2d/Shape;FF)[Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v3

    return-object v3
.end method

.method private getShapeKey(F)Ljava/lang/String;
    .locals 1
    .param p1, "accuracyLevel"    # F

    .line 136
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getShapes(F)[Lcom/badlogic/gdx/physics/box2d/Shape;
    .locals 3
    .param p1, "accuracyLevel"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->getShapeKey(F)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "shapeKey":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->shapeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->computeNewShape(F)[Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v1

    .line 165
    .local v1, "shapes":[Lcom/badlogic/gdx/physics/box2d/Shape;
    if-nez v1, :cond_0

    .line 166
    const/4 v2, 0x0

    return-object v2

    .line 168
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->shapeMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v1    # "shapes":[Lcom/badlogic/gdx/physics/box2d/Shape;
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder$ImageShapes;->shapeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/physics/box2d/Shape;

    return-object v1
.end method
