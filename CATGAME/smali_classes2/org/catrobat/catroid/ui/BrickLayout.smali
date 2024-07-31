.class public Lorg/catrobat/catroid/ui/BrickLayout;
.super Landroid/view/ViewGroup;
.source "BrickLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;,
        Lorg/catrobat/catroid/ui/BrickLayout$ElementData;,
        Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field protected debugDraw:Z

.field private final elementsToAllocatePerLine:I

.field private horizontalSpacing:I

.field private layoutDirection:I

.field protected lines:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/catrobat/catroid/ui/BrickLayout$LineData;",
            ">;"
        }
    .end annotation
.end field

.field private final linesToAllocate:I

.field private final minTextFieldWidthDp:I

.field private orientation:I

.field protected usePng:Z

.field protected userBrick:Z

.field private verticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 59
    const/16 v0, 0x64

    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->minTextFieldWidthDp:I

    .line 60
    const/16 v0, 0xa

    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->linesToAllocate:I

    .line 61
    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->elementsToAllocatePerLine:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->layoutDirection:I

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->horizontalSpacing:I

    .line 65
    iput v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->verticalSpacing:I

    .line 66
    iput v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->orientation:I

    .line 67
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->debugDraw:Z

    .line 68
    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->userBrick:Z

    .line 69
    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->usePng:Z

    .line 75
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/BrickLayout;->setLayoutDirection(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BrickLayout;->allocateLineData()V

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/ui/BrickLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/16 v0, 0x64

    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->minTextFieldWidthDp:I

    .line 60
    const/16 v0, 0xa

    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->linesToAllocate:I

    .line 61
    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->elementsToAllocatePerLine:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->layoutDirection:I

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->horizontalSpacing:I

    .line 65
    iput v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->verticalSpacing:I

    .line 66
    iput v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->orientation:I

    .line 67
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->debugDraw:Z

    .line 68
    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->userBrick:Z

    .line 69
    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->usePng:Z

    .line 82
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/BrickLayout;->setLayoutDirection(Landroid/content/Context;)V

    .line 83
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BrickLayout;->allocateLineData()V

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/ui/BrickLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/16 v0, 0x64

    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->minTextFieldWidthDp:I

    .line 60
    const/16 v0, 0xa

    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->linesToAllocate:I

    .line 61
    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->elementsToAllocatePerLine:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->layoutDirection:I

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->horizontalSpacing:I

    .line 65
    iput v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->verticalSpacing:I

    .line 66
    iput v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->orientation:I

    .line 67
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->debugDraw:Z

    .line 68
    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->userBrick:Z

    .line 69
    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->usePng:Z

    .line 89
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/BrickLayout;->setLayoutDirection(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BrickLayout;->allocateLineData()V

    .line 91
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/ui/BrickLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method private applyLayoutDirection()V
    .locals 7

    .line 362
    iget v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->layoutDirection:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/BrickLayout;->setScaleX(F)V

    .line 363
    iget-object v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->lines:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/BrickLayout$LineData;

    .line 364
    .local v1, "line":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    iget-object v2, v1, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->elements:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;

    .line 365
    .local v3, "element":Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
    iget-object v4, v3, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->view:Landroid/view/View;

    .line 366
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 367
    iget v5, p0, Lorg/catrobat/catroid/ui/BrickLayout;->layoutDirection:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    .line 369
    .end local v3    # "element":Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    goto :goto_1

    .line 370
    .end local v1    # "line":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    :cond_1
    goto :goto_0

    .line 371
    :cond_2
    return-void
.end method

.method private preLayoutMeasureWidth(Landroid/view/View;IIII)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "sizeWidth"    # I
    .param p3, "sizeHeight"    # I
    .param p4, "modeWidth"    # I
    .param p5, "modeHeight"    # I

    .line 374
    instance-of v0, p1, Landroid/widget/Spinner;

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 375
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    if-ne p5, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, p5

    :goto_0
    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 378
    :cond_1
    if-ne p4, v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, p4

    :goto_1
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    if-ne p5, v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, p5

    .line 379
    :goto_2
    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 378
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 383
    :goto_3
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BrickLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 384
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 386
    .local v1, "layoutParams":Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 387
    .local v2, "childWidth":I
    invoke-static {v1}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$200(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 388
    const/4 v3, 0x1

    const/high16 v4, 0x42c80000    # 100.0f

    .line 389
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 388
    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v2, v3

    .line 391
    :cond_4
    instance-of v3, p1, Landroid/widget/Spinner;

    if-eqz v3, :cond_5

    .line 392
    move v2, p2

    .line 394
    :cond_5
    return v2
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 476
    sget-object v0, Lorg/catrobat/catroid/R$styleable;->BrickLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 478
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->horizontalSpacing:I

    .line 479
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->verticalSpacing:I

    .line 480
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->orientation:I

    .line 481
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->debugDraw:Z

    .line 482
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->userBrick:Z

    .line 483
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->usePng:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 486
    nop

    .line 487
    return-void

    .line 485
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 486
    throw v1
.end method

.method private setLayoutDirection(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->layoutDirection:I

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method protected allocateLineData()V
    .locals 2

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->lines:Ljava/util/LinkedList;

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BrickLayout;->allocateNewLine()Lorg/catrobat/catroid/ui/BrickLayout$LineData;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected allocateNewLine()Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .locals 11

    .line 108
    new-instance v0, Lorg/catrobat/catroid/ui/BrickLayout$LineData;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/BrickLayout$LineData;-><init>(Lorg/catrobat/catroid/ui/BrickLayout;)V

    .line 109
    .local v0, "lineData":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 110
    iget-object v2, v0, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->elements:Ljava/util/LinkedList;

    new-instance v10, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;-><init>(Lorg/catrobat/catroid/ui/BrickLayout;Landroid/view/View;IIII)V

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->lines:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 113
    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 457
    instance-of v0, p1, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    return v0
.end method

.method protected createPaint(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "color"    # I

    .line 546
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 547
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 548
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 550
    return-object v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 450
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 451
    .local v0, "more":Z
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/BrickLayout;->drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 452
    return v0
.end method

.method public drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;

    .line 490
    move-object v0, p0

    iget-boolean v1, v0, Lorg/catrobat/catroid/ui/BrickLayout;->debugDraw:Z

    if-nez v1, :cond_0

    .line 491
    return-void

    .line 494
    :cond_0
    const/16 v1, -0x100

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/BrickLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    .line 495
    .local v1, "childPaint":Landroid/graphics/Paint;
    const v2, -0xff0100

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/BrickLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v9

    .line 496
    .local v9, "layoutPaint":Landroid/graphics/Paint;
    const/high16 v2, -0x10000

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/BrickLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v10

    .line 498
    .local v10, "newLinePaint":Landroid/graphics/Paint;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 500
    .local v11, "layoutParams":Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    invoke-static {v11}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$300(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v2

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v13, 0x40800000    # 4.0f

    if-lez v2, :cond_1

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v8, v2

    .line 502
    .local v8, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v12

    add-float v14, v2, v3

    .line 503
    .local v14, "y":F
    invoke-static {v11}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$300(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v5, v8, v2

    move-object/from16 v2, p1

    move v3, v8

    move v4, v14

    move v6, v14

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 504
    invoke-static {v11}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$300(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v8

    sub-float v3, v2, v13

    sub-float v4, v14, v13

    invoke-static {v11}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$300(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v5, v8, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 506
    invoke-static {v11}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$300(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v8

    sub-float v3, v2, v13

    add-float v4, v14, v13

    invoke-static {v11}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$300(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v5, v8, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .end local v8    # "x":F
    .end local v14    # "y":F
    goto :goto_0

    .line 508
    :cond_1
    iget v2, v0, Lorg/catrobat/catroid/ui/BrickLayout;->horizontalSpacing:I

    if-lez v2, :cond_2

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    .line 510
    .local v2, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v12

    add-float v14, v3, v4

    .line 511
    .restart local v14    # "y":F
    iget v3, v0, Lorg/catrobat/catroid/ui/BrickLayout;->horizontalSpacing:I

    int-to-float v3, v3

    add-float v6, v2, v3

    move-object/from16 v3, p1

    move v4, v2

    move v5, v14

    move v7, v14

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 512
    iget v3, v0, Lorg/catrobat/catroid/ui/BrickLayout;->horizontalSpacing:I

    int-to-float v4, v3

    add-float/2addr v4, v2

    sub-float/2addr v4, v13

    sub-float v5, v14, v13

    int-to-float v3, v3

    add-float v6, v2, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 513
    iget v3, v0, Lorg/catrobat/catroid/ui/BrickLayout;->horizontalSpacing:I

    int-to-float v4, v3

    add-float/2addr v4, v2

    sub-float/2addr v4, v13

    add-float v5, v14, v13

    int-to-float v3, v3

    add-float v6, v2, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 508
    .end local v2    # "x":F
    .end local v14    # "y":F
    :cond_2
    :goto_0
    nop

    .line 516
    :goto_1
    invoke-static {v11}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$400(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v2

    if-lez v2, :cond_3

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v12

    add-float v8, v2, v3

    .line 518
    .restart local v8    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v14, v2

    .line 519
    .restart local v14    # "y":F
    invoke-static {v11}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$400(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v6, v14, v2

    move-object/from16 v2, p1

    move v3, v8

    move v4, v14

    move v5, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 520
    sub-float v3, v8, v13

    invoke-static {v11}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$400(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v14

    sub-float v4, v2, v13

    invoke-static {v11}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$400(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v6, v14, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 522
    add-float v3, v8, v13

    invoke-static {v11}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$400(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v14

    sub-float v4, v2, v13

    invoke-static {v11}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$400(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v6, v14, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .end local v8    # "x":F
    .end local v14    # "y":F
    goto :goto_2

    .line 524
    :cond_3
    iget v2, v0, Lorg/catrobat/catroid/ui/BrickLayout;->verticalSpacing:I

    if-lez v2, :cond_4

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v12

    add-float/2addr v2, v3

    .line 526
    .restart local v2    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v14, v3

    .line 527
    .restart local v14    # "y":F
    iget v3, v0, Lorg/catrobat/catroid/ui/BrickLayout;->verticalSpacing:I

    int-to-float v3, v3

    add-float v7, v14, v3

    move-object/from16 v3, p1

    move v4, v2

    move v5, v14

    move v6, v2

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 528
    sub-float v4, v2, v13

    iget v3, v0, Lorg/catrobat/catroid/ui/BrickLayout;->verticalSpacing:I

    int-to-float v5, v3

    add-float/2addr v5, v14

    sub-float/2addr v5, v13

    int-to-float v3, v3

    add-float v7, v14, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 529
    add-float v4, v2, v13

    iget v3, v0, Lorg/catrobat/catroid/ui/BrickLayout;->verticalSpacing:I

    int-to-float v5, v3

    add-float/2addr v5, v14

    sub-float/2addr v5, v13

    int-to-float v3, v3

    add-float v7, v14, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 524
    .end local v2    # "x":F
    .end local v14    # "y":F
    :cond_4
    :goto_2
    nop

    .line 532
    :goto_3
    invoke-static {v11}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$000(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 533
    iget v2, v0, Lorg/catrobat/catroid/ui/BrickLayout;->orientation:I

    const/high16 v3, 0x40c00000    # 6.0f

    if-nez v2, :cond_5

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 535
    .restart local v2    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v12

    add-float v12, v4, v5

    .line 536
    .local v12, "y":F
    sub-float v5, v12, v3

    add-float v7, v12, v3

    move-object/from16 v3, p1

    move v4, v2

    move v6, v2

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 537
    .end local v2    # "x":F
    .end local v12    # "y":F
    goto :goto_4

    .line 538
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v12

    add-float/2addr v2, v4

    .line 539
    .restart local v2    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v12, v4

    .line 540
    .restart local v12    # "y":F
    sub-float v4, v2, v3

    add-float v6, v2, v3

    move-object/from16 v3, p1

    move v5, v12

    move v7, v12

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 543
    .end local v2    # "x":F
    .end local v12    # "y":F
    :cond_6
    :goto_4
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BrickLayout;->generateDefaultLayoutParams()Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    .locals 2

    .line 462
    new-instance v0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/BrickLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/BrickLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    .locals 2
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;

    .line 467
    new-instance v0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BrickLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    .locals 1
    .param p1, "layoutParameters"    # Landroid/view/ViewGroup$LayoutParams;

    .line 472
    new-instance v0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getElement(Lorg/catrobat/catroid/ui/BrickLayout$LineData;I)Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
    .locals 8
    .param p1, "currentLine"    # Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .param p2, "elementInLineIndex"    # I

    .line 407
    iget-object v0, p1, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 408
    iget-object v0, p1, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;

    return-object v0

    .line 410
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;-><init>(Lorg/catrobat/catroid/ui/BrickLayout;Landroid/view/View;IIII)V

    .line 411
    .local v0, "elementData":Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
    iget-object v1, p1, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 412
    return-object v0
.end method

.method protected getHorizontalSpacing(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I
    .locals 1
    .param p1, "layoutParams"    # Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 418
    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->horizontalSpacingSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-static {p1}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$300(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v0

    .local v0, "horizontalSpacing":I
    goto :goto_0

    .line 421
    .end local v0    # "horizontalSpacing":I
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->horizontalSpacing:I

    .line 423
    .restart local v0    # "horizontalSpacing":I
    :goto_0
    return v0
.end method

.method protected getNextLine(Lorg/catrobat/catroid/ui/BrickLayout$LineData;)Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .locals 2
    .param p1, "currentLine"    # Lorg/catrobat/catroid/ui/BrickLayout$LineData;

    .line 398
    iget-object v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->lines:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 399
    .local v0, "index":I
    iget-object v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->lines:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 400
    iget-object v1, p0, Lorg/catrobat/catroid/ui/BrickLayout;->lines:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/BrickLayout$LineData;

    return-object v1

    .line 402
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BrickLayout;->allocateNewLine()Lorg/catrobat/catroid/ui/BrickLayout$LineData;

    move-result-object v1

    return-object v1
.end method

.method public getPaddingLeft(I)I
    .locals 5
    .param p1, "widthMeasureSpec"    # I

    .line 117
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->usePng:Z

    if-nez v0, :cond_0

    .line 118
    invoke-super {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fc1eb851eb851ecL    # 0.14

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    .line 120
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method protected getVerticalSpacing(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I
    .locals 1
    .param p1, "layoutParams"    # Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 428
    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->verticalSpacingSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {p1}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$400(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v0

    .local v0, "verticalSpacing":I
    goto :goto_0

    .line 431
    .end local v0    # "verticalSpacing":I
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/BrickLayout;->verticalSpacing:I

    .line 433
    .restart local v0    # "verticalSpacing":I
    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 438
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BrickLayout;->getChildCount()I

    move-result v0

    .line 439
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 440
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/BrickLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 441
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 442
    .local v3, "layoutParams":Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    invoke-static {v3}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$500(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v4

    invoke-static {v3}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$600(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v5

    .line 443
    invoke-static {v3}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$500(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 444
    invoke-static {v3}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$600(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 442
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 439
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "layoutParams":Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 36
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 126
    move-object/from16 v6, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/BrickLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p1}, Lorg/catrobat/catroid/ui/BrickLayout;->getPaddingLeft(I)I

    move-result v1

    sub-int v7, v0, v1

    .line 127
    .local v7, "sizeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/BrickLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/BrickLayout;->getPaddingBottom()I

    move-result v1

    sub-int v8, v0, v1

    .line 129
    .local v8, "sizeHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 130
    .local v9, "modeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 132
    .local v10, "modeHeight":I
    const/4 v11, 0x0

    .line 133
    .local v11, "lineHeightWithVerticalSpacing":I
    const/4 v12, 0x0

    .line 134
    .local v12, "lineHeight":I
    const/4 v13, 0x0

    .line 135
    .local v13, "lineLengthWithHorizontalSpacing":I
    const/4 v14, 0x0

    .line 137
    .local v14, "lineLength":I
    const/4 v15, 0x0

    .line 139
    .local v15, "prevLinePosition":I
    const/16 v16, 0x0

    .line 140
    .local v16, "controlMaxLength":I
    const/16 v17, 0x0

    .line 142
    .local v17, "controlMaxHeight":I
    iget-object v0, v6, Lorg/catrobat/catroid/ui/BrickLayout;->lines:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/BrickLayout$LineData;

    .line 143
    .local v1, "lineData":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    iput v5, v1, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->allowableTextFieldWidth:I

    .line 144
    iput v5, v1, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->height:I

    .line 145
    iput v5, v1, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->numberOfTextFields:I

    .line 146
    iput v5, v1, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->totalTextFieldWidth:I

    .line 147
    iget-object v2, v1, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->elements:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;

    .line 148
    .local v3, "elementData":Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
    iput v5, v3, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->height:I

    .line 149
    iput v5, v3, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->width:I

    .line 150
    iput v5, v3, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->posY:I

    .line 151
    iput v5, v3, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->posX:I

    .line 152
    const/4 v4, 0x0

    iput-object v4, v3, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->view:Landroid/view/View;

    .line 153
    .end local v3    # "elementData":Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
    goto :goto_1

    .line 154
    .end local v1    # "lineData":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    :cond_0
    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, v6, Lorg/catrobat/catroid/ui/BrickLayout;->lines:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lorg/catrobat/catroid/ui/BrickLayout$LineData;

    .line 163
    .local v18, "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/BrickLayout;->getChildCount()I

    move-result v4

    .line 164
    .local v4, "count":I
    const/16 v19, 0x0

    .line 166
    .local v19, "elementInLineIndex":I
    const/4 v0, 0x0

    .line 167
    .local v0, "totalLengthOfContent":I
    const/4 v1, 0x0

    move/from16 v20, v0

    move v3, v1

    .end local v0    # "totalLengthOfContent":I
    .local v3, "i":I
    .local v20, "totalLengthOfContent":I
    :goto_2
    const/16 v2, 0x8

    if-ge v3, v4, :cond_3

    .line 168
    invoke-virtual {v6, v3}, Lorg/catrobat/catroid/ui/BrickLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 169
    .local v21, "child":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 170
    move/from16 v24, v3

    move/from16 v26, v5

    move/from16 v25, v11

    move v11, v4

    goto :goto_3

    .line 173
    :cond_2
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    invoke-virtual {v6, v0}, Lorg/catrobat/catroid/ui/BrickLayout;->getHorizontalSpacing(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v22

    .line 175
    .local v22, "childSpacing":I
    iget v0, v6, Lorg/catrobat/catroid/ui/BrickLayout;->horizontalSpacing:I

    add-int v23, v0, v22

    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v7

    move/from16 v24, v3

    .end local v3    # "i":I
    .local v24, "i":I
    move v3, v8

    move/from16 v25, v11

    move v11, v4

    .end local v4    # "count":I
    .local v11, "count":I
    .local v25, "lineHeightWithVerticalSpacing":I
    move v4, v9

    move/from16 v26, v5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/ui/BrickLayout;->preLayoutMeasureWidth(Landroid/view/View;IIII)I

    move-result v0

    add-int v23, v23, v0

    add-int v20, v20, v23

    .line 167
    .end local v21    # "child":Landroid/view/View;
    .end local v22    # "childSpacing":I
    :goto_3
    add-int/lit8 v3, v24, 0x1

    move v4, v11

    move/from16 v11, v25

    move/from16 v5, v26

    .end local v24    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .end local v25    # "lineHeightWithVerticalSpacing":I
    .restart local v4    # "count":I
    .local v11, "lineHeightWithVerticalSpacing":I
    :cond_3
    move/from16 v24, v3

    move/from16 v26, v5

    move/from16 v25, v11

    move v11, v4

    .line 179
    .end local v3    # "i":I
    .end local v4    # "count":I
    .local v11, "count":I
    .restart local v25    # "lineHeightWithVerticalSpacing":I
    const/4 v0, 0x0

    .line 180
    .local v0, "childSpacing":I
    const/4 v1, 0x0

    .line 181
    .local v1, "combinedLengthOfPreviousLines":I
    const/4 v3, 0x0

    move-object/from16 v5, v18

    move/from16 v21, v19

    move/from16 v18, v13

    move/from16 v19, v14

    move v13, v1

    move v14, v3

    .end local v1    # "combinedLengthOfPreviousLines":I
    .local v5, "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .local v13, "combinedLengthOfPreviousLines":I
    .local v14, "i":I
    .local v18, "lineLengthWithHorizontalSpacing":I
    .local v19, "lineLength":I
    .local v21, "elementInLineIndex":I
    :goto_4
    if-ge v14, v11, :cond_10

    .line 182
    invoke-virtual {v6, v14}, Lorg/catrobat/catroid/ui/BrickLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 183
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 184
    move/from16 v23, v11

    move/from16 v28, v12

    goto/16 :goto_d

    .line 187
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 188
    .local v3, "layoutParams":Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    invoke-virtual {v6, v3}, Lorg/catrobat/catroid/ui/BrickLayout;->getHorizontalSpacing(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v22

    .line 191
    .end local v0    # "childSpacing":I
    .restart local v22    # "childSpacing":I
    iget-boolean v0, v6, Lorg/catrobat/catroid/ui/BrickLayout;->userBrick:Z

    if-eqz v0, :cond_5

    .line 192
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    move-object/from16 v24, v3

    move/from16 v23, v11

    move/from16 v28, v12

    move-object v11, v4

    move-object v12, v5

    .local v0, "childWidth":I
    goto :goto_5

    .line 194
    .end local v0    # "childWidth":I
    :cond_5
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v23, v11

    move v11, v2

    .end local v11    # "count":I
    .local v23, "count":I
    move v2, v7

    move-object/from16 v24, v3

    .end local v3    # "layoutParams":Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    .local v24, "layoutParams":Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    move v3, v8

    move-object v11, v4

    .end local v4    # "child":Landroid/view/View;
    .local v11, "child":Landroid/view/View;
    move v4, v9

    move/from16 v28, v12

    move-object v12, v5

    .end local v5    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .local v12, "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .local v28, "lineHeight":I
    move v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/ui/BrickLayout;->preLayoutMeasureWidth(Landroid/view/View;IIII)I

    move-result v0

    .line 197
    .restart local v0    # "childWidth":I
    :goto_5
    add-int v0, v0, v22

    .line 198
    add-int v1, v18, v0

    .line 199
    .end local v19    # "lineLength":I
    .local v1, "lineLength":I
    iget v2, v6, Lorg/catrobat/catroid/ui/BrickLayout;->horizontalSpacing:I

    add-int/2addr v2, v1

    .line 202
    .end local v18    # "lineLengthWithHorizontalSpacing":I
    .local v2, "lineLengthWithHorizontalSpacing":I
    iget-boolean v3, v6, Lorg/catrobat/catroid/ui/BrickLayout;->userBrick:Z

    if-eqz v3, :cond_7

    .line 203
    if-lt v2, v7, :cond_6

    const/4 v3, 0x1

    goto :goto_6

    :cond_6
    move/from16 v3, v26

    .local v3, "newLine":Z
    :goto_6
    goto :goto_7

    .line 205
    .end local v3    # "newLine":Z
    :cond_7
    invoke-static/range {v24 .. v24}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$000(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_8

    sub-int v3, v20, v13

    if-le v3, v7, :cond_8

    const/4 v3, 0x1

    goto :goto_7

    :cond_8
    move/from16 v3, v26

    .line 208
    .restart local v3    # "newLine":Z
    :goto_7
    if-nez v3, :cond_a

    invoke-static/range {v24 .. v24}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$100(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_8

    :cond_9
    move/from16 v4, v26

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v4, 0x1

    :goto_9
    move v3, v4

    .line 210
    const/4 v4, 0x0

    .line 211
    .local v4, "lastChildWasSpinner":Z
    if-lez v14, :cond_b

    .line 212
    add-int/lit8 v5, v14, -0x1

    invoke-virtual {v6, v5}, Lorg/catrobat/catroid/ui/BrickLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v4, v5, Landroid/widget/Spinner;

    .line 215
    :cond_b
    if-nez v3, :cond_d

    instance-of v5, v11, Landroid/widget/Spinner;

    if-nez v5, :cond_d

    if-eqz v4, :cond_c

    goto :goto_a

    :cond_c
    move/from16 v5, v26

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v5, 0x1

    :goto_b
    move v3, v5

    .line 217
    if-eqz v3, :cond_e

    .line 218
    iget v5, v6, Lorg/catrobat/catroid/ui/BrickLayout;->horizontalSpacing:I

    add-int/2addr v5, v0

    move/from16 v19, v2

    .end local v2    # "lineLengthWithHorizontalSpacing":I
    .local v19, "lineLengthWithHorizontalSpacing":I
    iget v2, v12, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->totalTextFieldWidth:I

    add-int/2addr v5, v2

    sub-int v2, v1, v5

    .line 219
    .local v2, "endingWidthOfLineMinusFields":I
    sub-int v5, v7, v2

    int-to-float v5, v5

    move/from16 v29, v2

    .end local v2    # "endingWidthOfLineMinusFields":I
    .local v29, "endingWidthOfLineMinusFields":I
    iget v2, v12, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->numberOfTextFields:I

    int-to-float v2, v2

    div-float/2addr v5, v2

    .line 220
    .local v5, "allowableWidth":F
    move/from16 v30, v3

    .end local v3    # "newLine":Z
    .local v30, "newLine":Z
    float-to-double v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int v2, v2, v22

    iput v2, v12, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->allowableTextFieldWidth:I

    .line 222
    invoke-virtual {v6, v12}, Lorg/catrobat/catroid/ui/BrickLayout;->getNextLine(Lorg/catrobat/catroid/ui/BrickLayout$LineData;)Lorg/catrobat/catroid/ui/BrickLayout$LineData;

    move-result-object v2

    .line 224
    .end local v12    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .local v2, "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    iget v3, v6, Lorg/catrobat/catroid/ui/BrickLayout;->horizontalSpacing:I

    add-int v12, v0, v3

    sub-int v12, v1, v12

    add-int/2addr v13, v12

    .line 225
    move v1, v0

    .line 226
    add-int/2addr v3, v1

    .line 228
    .end local v19    # "lineLengthWithHorizontalSpacing":I
    .local v3, "lineLengthWithHorizontalSpacing":I
    const/16 v21, 0x0

    move-object v5, v2

    move v2, v3

    move/from16 v3, v21

    goto :goto_c

    .line 217
    .end local v5    # "allowableWidth":F
    .end local v29    # "endingWidthOfLineMinusFields":I
    .end local v30    # "newLine":Z
    .local v2, "lineLengthWithHorizontalSpacing":I
    .local v3, "newLine":Z
    .restart local v12    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    :cond_e
    move/from16 v19, v2

    move/from16 v30, v3

    .end local v2    # "lineLengthWithHorizontalSpacing":I
    .end local v3    # "newLine":Z
    .restart local v19    # "lineLengthWithHorizontalSpacing":I
    .restart local v30    # "newLine":Z
    move-object v5, v12

    move/from16 v3, v21

    .line 231
    .end local v12    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .end local v19    # "lineLengthWithHorizontalSpacing":I
    .end local v21    # "elementInLineIndex":I
    .restart local v2    # "lineLengthWithHorizontalSpacing":I
    .local v3, "elementInLineIndex":I
    .local v5, "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    :goto_c
    invoke-virtual {v6, v5, v3}, Lorg/catrobat/catroid/ui/BrickLayout;->getElement(Lorg/catrobat/catroid/ui/BrickLayout$LineData;I)Lorg/catrobat/catroid/ui/BrickLayout$ElementData;

    move-result-object v12

    iput-object v11, v12, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->view:Landroid/view/View;

    .line 232
    const/4 v12, 0x1

    add-int/2addr v3, v12

    .line 234
    invoke-static/range {v24 .. v24}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$200(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 235
    iget v12, v5, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->totalTextFieldWidth:I

    add-int/2addr v12, v0

    iput v12, v5, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->totalTextFieldWidth:I

    .line 236
    iget v12, v5, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->numberOfTextFields:I

    const/16 v18, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v5, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->numberOfTextFields:I

    .line 181
    .end local v0    # "childWidth":I
    .end local v4    # "lastChildWasSpinner":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v24    # "layoutParams":Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    .end local v30    # "newLine":Z
    :cond_f
    move/from16 v19, v1

    move/from16 v18, v2

    move/from16 v21, v3

    move/from16 v0, v22

    .end local v1    # "lineLength":I
    .end local v2    # "lineLengthWithHorizontalSpacing":I
    .end local v3    # "elementInLineIndex":I
    .end local v22    # "childSpacing":I
    .local v0, "childSpacing":I
    .restart local v18    # "lineLengthWithHorizontalSpacing":I
    .local v19, "lineLength":I
    .restart local v21    # "elementInLineIndex":I
    :goto_d
    add-int/lit8 v14, v14, 0x1

    move/from16 v11, v23

    move/from16 v12, v28

    const/16 v2, 0x8

    goto/16 :goto_4

    .end local v23    # "count":I
    .end local v28    # "lineHeight":I
    .local v11, "count":I
    .local v12, "lineHeight":I
    :cond_10
    move/from16 v23, v11

    move/from16 v28, v12

    move-object v12, v5

    .line 240
    .end local v5    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .end local v11    # "count":I
    .end local v14    # "i":I
    .local v12, "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .restart local v23    # "count":I
    .restart local v28    # "lineHeight":I
    iget v1, v12, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->totalTextFieldWidth:I

    sub-int v1, v19, v1

    .line 241
    .local v1, "endingWidthOfLineMinusFields":I
    sub-int v2, v7, v1

    int-to-float v2, v2

    iget v3, v12, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->numberOfTextFields:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 242
    .local v2, "allowableWidth":F
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v3, v0

    iput v3, v12, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->allowableTextFieldWidth:I

    .line 244
    iget-object v3, v6, Lorg/catrobat/catroid/ui/BrickLayout;->lines:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/ui/BrickLayout$LineData;

    .line 245
    .local v4, "lineData":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    iget-object v5, v4, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->elements:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;

    .line 246
    .local v11, "elementData":Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
    iget-object v14, v11, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->view:Landroid/view/View;

    if-eqz v14, :cond_13

    .line 247
    iget-object v14, v11, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->view:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 248
    .local v14, "layoutParams":Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    invoke-static {v14}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$200(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)Z

    move-result v22

    if-eqz v22, :cond_12

    move/from16 v22, v0

    .end local v0    # "childSpacing":I
    .restart local v22    # "childSpacing":I
    iget v0, v4, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->allowableTextFieldWidth:I

    if-lez v0, :cond_11

    .line 249
    iget-object v0, v11, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    move/from16 v24, v1

    .end local v1    # "endingWidthOfLineMinusFields":I
    .local v24, "endingWidthOfLineMinusFields":I
    iget v1, v4, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->allowableTextFieldWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_10

    .line 248
    .end local v24    # "endingWidthOfLineMinusFields":I
    .restart local v1    # "endingWidthOfLineMinusFields":I
    :cond_11
    move/from16 v24, v1

    .end local v1    # "endingWidthOfLineMinusFields":I
    .restart local v24    # "endingWidthOfLineMinusFields":I
    goto :goto_10

    .end local v22    # "childSpacing":I
    .end local v24    # "endingWidthOfLineMinusFields":I
    .restart local v0    # "childSpacing":I
    .restart local v1    # "endingWidthOfLineMinusFields":I
    :cond_12
    move/from16 v22, v0

    move/from16 v24, v1

    .end local v0    # "childSpacing":I
    .end local v1    # "endingWidthOfLineMinusFields":I
    .restart local v22    # "childSpacing":I
    .restart local v24    # "endingWidthOfLineMinusFields":I
    goto :goto_10

    .line 246
    .end local v14    # "layoutParams":Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    .end local v22    # "childSpacing":I
    .end local v24    # "endingWidthOfLineMinusFields":I
    .restart local v0    # "childSpacing":I
    .restart local v1    # "endingWidthOfLineMinusFields":I
    :cond_13
    move/from16 v22, v0

    move/from16 v24, v1

    .line 252
    .end local v0    # "childSpacing":I
    .end local v1    # "endingWidthOfLineMinusFields":I
    .end local v11    # "elementData":Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
    .restart local v22    # "childSpacing":I
    .restart local v24    # "endingWidthOfLineMinusFields":I
    :goto_10
    move/from16 v0, v22

    move/from16 v1, v24

    goto :goto_f

    .line 245
    .end local v22    # "childSpacing":I
    .end local v24    # "endingWidthOfLineMinusFields":I
    .restart local v0    # "childSpacing":I
    .restart local v1    # "endingWidthOfLineMinusFields":I
    :cond_14
    move/from16 v22, v0

    move/from16 v24, v1

    .line 253
    .end local v0    # "childSpacing":I
    .end local v1    # "endingWidthOfLineMinusFields":I
    .end local v4    # "lineData":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .restart local v22    # "childSpacing":I
    .restart local v24    # "endingWidthOfLineMinusFields":I
    goto :goto_e

    .line 256
    .end local v22    # "childSpacing":I
    .end local v24    # "endingWidthOfLineMinusFields":I
    .restart local v0    # "childSpacing":I
    .restart local v1    # "endingWidthOfLineMinusFields":I
    :cond_15
    move/from16 v22, v0

    move/from16 v24, v1

    .end local v0    # "childSpacing":I
    .end local v1    # "endingWidthOfLineMinusFields":I
    .restart local v22    # "childSpacing":I
    .restart local v24    # "endingWidthOfLineMinusFields":I
    const/4 v0, 0x0

    .line 258
    .end local v18    # "lineLengthWithHorizontalSpacing":I
    .local v0, "lineLengthWithHorizontalSpacing":I
    iget-object v1, v6, Lorg/catrobat/catroid/ui/BrickLayout;->lines:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/BrickLayout$LineData;

    .line 260
    .end local v12    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .local v1, "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    const/4 v3, 0x1

    .line 261
    .local v3, "firstLine":Z
    iget-object v4, v6, Lorg/catrobat/catroid/ui/BrickLayout;->lines:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v11, v25

    move/from16 v12, v28

    .end local v25    # "lineHeightWithVerticalSpacing":I
    .end local v28    # "lineHeight":I
    .local v11, "lineHeightWithVerticalSpacing":I
    .local v12, "lineHeight":I
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/ui/BrickLayout$LineData;

    .line 262
    .local v5, "line":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    xor-int/lit8 v14, v3, 0x1

    .line 263
    .local v14, "newLine":Z
    move/from16 v18, v0

    .end local v0    # "lineLengthWithHorizontalSpacing":I
    .restart local v18    # "lineLengthWithHorizontalSpacing":I
    iget-object v0, v5, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move/from16 v25, v2

    move/from16 v2, v16

    .end local v16    # "controlMaxLength":I
    .local v2, "controlMaxLength":I
    .local v25, "allowableWidth":F
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    check-cast v0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;

    .line 264
    .local v0, "element":Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
    move/from16 v28, v3

    .end local v3    # "firstLine":Z
    .local v28, "firstLine":Z
    iget-object v3, v0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->view:Landroid/view/View;

    .line 265
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1c

    move-object/from16 v29, v4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    move-object/from16 v30, v5

    const/16 v5, 0x8

    .end local v5    # "line":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .local v30, "line":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    if-ne v4, v5, :cond_16

    .line 266
    move/from16 v31, v7

    move/from16 v32, v8

    goto/16 :goto_18

    .line 269
    :cond_16
    instance-of v4, v3, Landroid/widget/Spinner;

    const/high16 v16, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_18

    .line 270
    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    if-ne v10, v5, :cond_17

    move/from16 v5, v16

    goto :goto_13

    :cond_17
    move v5, v10

    .line 271
    :goto_13
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 270
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_16

    .line 274
    :cond_18
    if-ne v9, v5, :cond_19

    move/from16 v4, v16

    goto :goto_14

    :cond_19
    move v4, v9

    :goto_14
    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    if-ne v10, v5, :cond_1a

    move/from16 v5, v16

    goto :goto_15

    :cond_1a
    move v5, v10

    .line 276
    :goto_15
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 274
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 280
    :goto_16
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 282
    .local v4, "layoutParams":Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    invoke-virtual {v6, v4}, Lorg/catrobat/catroid/ui/BrickLayout;->getHorizontalSpacing(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v5

    .line 283
    .local v5, "horizontalSpacing":I
    invoke-virtual {v6, v4}, Lorg/catrobat/catroid/ui/BrickLayout;->getVerticalSpacing(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I

    move-result v16

    .line 285
    .local v16, "verticalSpacing":I
    move/from16 v31, v7

    .end local v7    # "sizeWidth":I
    .local v31, "sizeWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 286
    .local v7, "childWidth":I
    move/from16 v32, v8

    .end local v8    # "sizeHeight":I
    .local v32, "sizeHeight":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 288
    .local v8, "childHeight":I
    add-int v19, v18, v7

    .line 289
    add-int v18, v19, v5

    .line 291
    if-eqz v14, :cond_1b

    .line 292
    const/4 v14, 0x0

    .line 293
    add-int/2addr v15, v11

    .line 295
    invoke-virtual {v6, v1}, Lorg/catrobat/catroid/ui/BrickLayout;->getNextLine(Lorg/catrobat/catroid/ui/BrickLayout$LineData;)Lorg/catrobat/catroid/ui/BrickLayout$LineData;

    move-result-object v1

    .line 297
    move v12, v8

    .line 298
    move/from16 v19, v7

    .line 299
    add-int v11, v8, v16

    .line 300
    add-int v18, v19, v5

    move-object/from16 v33, v3

    move/from16 v3, v19

    goto :goto_17

    .line 291
    :cond_1b
    move-object/from16 v33, v3

    move/from16 v3, v19

    .line 303
    .end local v19    # "lineLength":I
    .local v3, "lineLength":I
    .local v33, "child":Landroid/view/View;
    :goto_17
    move/from16 v34, v5

    .end local v5    # "horizontalSpacing":I
    .local v34, "horizontalSpacing":I
    add-int v5, v8, v16

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 304
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 306
    iput v12, v1, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->height:I

    .line 308
    invoke-virtual/range {p0 .. p1}, Lorg/catrobat/catroid/ui/BrickLayout;->getPaddingLeft(I)I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v5, v7

    .line 309
    .local v5, "posX":I
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/BrickLayout;->getPaddingTop()I

    move-result v19

    move-object/from16 v35, v1

    .end local v1    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .local v35, "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    add-int v1, v19, v15

    .line 311
    .local v1, "posY":I
    iput v5, v0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->posX:I

    .line 312
    iput v1, v0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->posY:I

    .line 313
    iput v7, v0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->width:I

    .line 314
    iput v8, v0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->height:I

    .line 315
    move/from16 v19, v1

    .end local v1    # "posY":I
    .local v19, "posY":I
    invoke-static {v4}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->access$200(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->editText:Z

    .line 317
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 318
    add-int v17, v15, v12

    .line 319
    .end local v0    # "element":Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
    .end local v4    # "layoutParams":Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    .end local v5    # "posX":I
    .end local v7    # "childWidth":I
    .end local v8    # "childHeight":I
    .end local v16    # "verticalSpacing":I
    .end local v19    # "posY":I
    .end local v33    # "child":Landroid/view/View;
    .end local v34    # "horizontalSpacing":I
    move/from16 v19, v3

    move-object/from16 v0, v26

    move/from16 v3, v28

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move/from16 v7, v31

    move/from16 v8, v32

    move-object/from16 v1, v35

    goto/16 :goto_12

    .line 265
    .end local v30    # "line":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .end local v31    # "sizeWidth":I
    .end local v32    # "sizeHeight":I
    .end local v35    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .restart local v0    # "element":Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
    .local v1, "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .local v3, "child":Landroid/view/View;
    .local v5, "line":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .local v7, "sizeWidth":I
    .local v8, "sizeHeight":I
    .local v19, "lineLength":I
    :cond_1c
    move-object/from16 v33, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move/from16 v31, v7

    move/from16 v32, v8

    .line 263
    .end local v0    # "element":Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "line":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .end local v7    # "sizeWidth":I
    .end local v8    # "sizeHeight":I
    .restart local v30    # "line":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .restart local v31    # "sizeWidth":I
    .restart local v32    # "sizeHeight":I
    :goto_18
    move-object/from16 v0, v26

    move/from16 v3, v28

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move/from16 v7, v31

    move/from16 v8, v32

    goto/16 :goto_12

    .line 320
    .end local v28    # "firstLine":Z
    .end local v30    # "line":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .end local v31    # "sizeWidth":I
    .end local v32    # "sizeHeight":I
    .local v3, "firstLine":Z
    .restart local v5    # "line":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .restart local v7    # "sizeWidth":I
    .restart local v8    # "sizeHeight":I
    :cond_1d
    move/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move/from16 v31, v7

    move/from16 v32, v8

    .end local v3    # "firstLine":Z
    .end local v5    # "line":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .end local v7    # "sizeWidth":I
    .end local v8    # "sizeHeight":I
    .restart local v28    # "firstLine":Z
    .restart local v30    # "line":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .restart local v31    # "sizeWidth":I
    .restart local v32    # "sizeHeight":I
    const/4 v3, 0x0

    .line 321
    .end local v14    # "newLine":Z
    .end local v28    # "firstLine":Z
    .end local v30    # "line":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .restart local v3    # "firstLine":Z
    move/from16 v16, v2

    move/from16 v0, v18

    move/from16 v2, v25

    goto/16 :goto_11

    .line 323
    .end local v18    # "lineLengthWithHorizontalSpacing":I
    .end local v25    # "allowableWidth":F
    .end local v31    # "sizeWidth":I
    .end local v32    # "sizeHeight":I
    .local v0, "lineLengthWithHorizontalSpacing":I
    .local v2, "allowableWidth":F
    .restart local v7    # "sizeWidth":I
    .restart local v8    # "sizeHeight":I
    .local v16, "controlMaxLength":I
    :cond_1e
    move/from16 v18, v0

    move/from16 v25, v2

    move/from16 v28, v3

    move/from16 v31, v7

    move/from16 v32, v8

    .end local v0    # "lineLengthWithHorizontalSpacing":I
    .end local v2    # "allowableWidth":F
    .end local v3    # "firstLine":Z
    .end local v7    # "sizeWidth":I
    .end local v8    # "sizeHeight":I
    .restart local v18    # "lineLengthWithHorizontalSpacing":I
    .restart local v25    # "allowableWidth":F
    .restart local v28    # "firstLine":Z
    .restart local v31    # "sizeWidth":I
    .restart local v32    # "sizeHeight":I
    move/from16 v0, v16

    .line 324
    .local v0, "x":I
    move/from16 v2, v17

    .line 326
    .local v2, "y":I
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/BrickLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/BrickLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 328
    const/4 v3, 0x0

    .line 329
    .local v3, "centerVertically":I
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/BrickLayout;->getSuggestedMinimumHeight()I

    move-result v4

    if-ge v2, v4, :cond_1f

    .line 330
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/BrickLayout;->getSuggestedMinimumHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v3, v4, 0x2

    .line 333
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/BrickLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 335
    iget-object v4, v6, Lorg/catrobat/catroid/ui/BrickLayout;->lines:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/ui/BrickLayout$LineData;

    .line 336
    .local v5, "lineData":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    iget-object v7, v5, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->elements:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;

    .line 337
    .local v8, "elementData":Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
    iget-object v14, v8, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->view:Landroid/view/View;

    if-eqz v14, :cond_22

    .line 338
    const/4 v14, 0x0

    .line 340
    .local v14, "centerVerticallyWithinLine":I
    move-object/from16 v26, v1

    .end local v1    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .local v26, "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    iget-boolean v1, v8, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->editText:Z

    const/high16 v27, 0x3f000000    # 0.5f

    if-eqz v1, :cond_20

    iget-object v1, v8, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_20

    .line 341
    iget-object v1, v8, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 342
    .local v1, "editText":Landroid/widget/TextView;
    move-object/from16 v29, v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v27

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v14

    goto :goto_1b

    .line 340
    .end local v1    # "editText":Landroid/widget/TextView;
    :cond_20
    move-object/from16 v29, v4

    .line 344
    :goto_1b
    iget v1, v8, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->height:I

    iget v4, v5, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->height:I

    if-ge v1, v4, :cond_21

    .line 345
    iget v1, v5, Lorg/catrobat/catroid/ui/BrickLayout$LineData;->height:I

    iget v4, v8, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->height:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float v1, v1, v27

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 348
    :cond_21
    iget v1, v8, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->posY:I

    add-int v4, v3, v14

    add-int/2addr v1, v4

    iput v1, v8, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->posY:I

    .line 349
    iget-object v1, v8, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 350
    .local v1, "layoutParams":Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
    iget v4, v8, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->posX:I

    move/from16 v27, v3

    .end local v3    # "centerVertically":I
    .local v27, "centerVertically":I
    iget v3, v8, Lorg/catrobat/catroid/ui/BrickLayout$ElementData;->posY:I

    invoke-virtual {v1, v4, v3}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->setPosition(II)V

    goto :goto_1c

    .line 337
    .end local v14    # "centerVerticallyWithinLine":I
    .end local v26    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .end local v27    # "centerVertically":I
    .local v1, "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .restart local v3    # "centerVertically":I
    :cond_22
    move-object/from16 v26, v1

    move/from16 v27, v3

    move-object/from16 v29, v4

    .line 352
    .end local v1    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .end local v3    # "centerVertically":I
    .end local v8    # "elementData":Lorg/catrobat/catroid/ui/BrickLayout$ElementData;
    .restart local v26    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .restart local v27    # "centerVertically":I
    :goto_1c
    move-object/from16 v1, v26

    move/from16 v3, v27

    move-object/from16 v4, v29

    goto :goto_1a

    .line 336
    .end local v26    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .end local v27    # "centerVertically":I
    .restart local v1    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .restart local v3    # "centerVertically":I
    :cond_23
    move-object/from16 v26, v1

    move/from16 v27, v3

    move-object/from16 v29, v4

    .line 353
    .end local v1    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .end local v3    # "centerVertically":I
    .end local v5    # "lineData":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .restart local v26    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .restart local v27    # "centerVertically":I
    goto/16 :goto_19

    .line 355
    .end local v26    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .end local v27    # "centerVertically":I
    .restart local v1    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .restart local v3    # "centerVertically":I
    :cond_24
    move-object/from16 v26, v1

    move/from16 v27, v3

    .end local v1    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .end local v3    # "centerVertically":I
    .restart local v26    # "currentLine":Lorg/catrobat/catroid/ui/BrickLayout$LineData;
    .restart local v27    # "centerVertically":I
    move/from16 v1, p1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/BrickLayout;->resolveSize(II)I

    move-result v3

    move/from16 v4, p2

    invoke-static {v2, v4}, Lorg/catrobat/catroid/ui/BrickLayout;->resolveSize(II)I

    move-result v5

    invoke-virtual {v6, v3, v5}, Lorg/catrobat/catroid/ui/BrickLayout;->setMeasuredDimension(II)V

    .line 356
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/catroid/ui/BrickLayout;->applyLayoutDirection()V

    .line 357
    return-void
.end method
