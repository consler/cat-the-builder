.class public Lorg/catrobat/catroid/ui/dragndrop/BrickListView;
.super Landroid/widget/ListView;
.source "BrickListView.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final SMOOTH_SCROLL_BY:I = 0xf


# instance fields
.field private brickAdapterInterface:Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;

.field private brickPositionsToHighlight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private brickToMove:Lorg/catrobat/catroid/content/bricks/Brick;

.field private currentPositionOfHoveringBrick:I

.field private downY:F

.field private hoveringDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private invalidateHoveringItem:Z

.field private lowerScrollBound:I

.field private motionEventId:I

.field private offsetToCenter:I

.field private translucentBlack:I

.field private upperScrollBound:I

.field private viewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->viewBounds:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickPositionsToHighlight:Ljava/util/List;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->motionEventId:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->downY:F

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->offsetToCenter:I

    .line 76
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->invalidateHoveringItem:Z

    .line 80
    const/16 v1, 0x80

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->translucentBlack:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->viewBounds:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickPositionsToHighlight:Ljava/util/List;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->motionEventId:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->downY:F

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->offsetToCenter:I

    .line 76
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->invalidateHoveringItem:Z

    .line 80
    const/16 v1, 0x80

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->translucentBlack:I

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->viewBounds:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickPositionsToHighlight:Ljava/util/List;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->motionEventId:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->downY:F

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->offsetToCenter:I

    .line 76
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->invalidateHoveringItem:Z

    .line 80
    const/16 v1, 0x80

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->translucentBlack:I

    .line 92
    return-void
.end method

.method private getChildAtVisiblePosition(I)Landroid/view/View;
    .locals 1
    .param p1, "positionInAdapter"    # I

    .line 329
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private isPositionValid(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 333
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private prepareHoveringItem(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 245
    if-nez p1, :cond_0

    .line 246
    return-void

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 250
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 252
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->viewBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 254
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 255
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->viewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 256
    iput-object v1, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->hoveringDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 258
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->viewBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->setOffsetToCenter(Landroid/graphics/Rect;)V

    .line 259
    return-void
.end method

.method private scrollWhileDragging()V
    .locals 3

    .line 321
    iget v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->downY:F

    iget v1, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->lowerScrollBound:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 322
    const/16 v0, 0xf

    invoke-virtual {p0, v0, v2}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 323
    :cond_0
    iget v1, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->upperScrollBound:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 324
    const/16 v0, -0xf

    invoke-virtual {p0, v0, v2}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->smoothScrollBy(II)V

    .line 326
    :cond_1
    :goto_0
    return-void
.end method

.method private setOffsetToCenter(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "viewBounds"    # Landroid/graphics/Rect;

    .line 262
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->offsetToCenter:I

    .line 263
    return-void
.end method

.method private swapListItems()V
    .locals 13

    .line 266
    iget v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->currentPositionOfHoveringBrick:I

    add-int/lit8 v1, v0, -0x1

    .line 267
    .local v1, "itemPositionAbove":I
    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 269
    .local v0, "itemPositionBelow":I
    const/4 v3, 0x0

    .line 270
    .local v3, "itemBelow":Landroid/view/View;
    const/4 v4, 0x0

    .line 272
    .local v4, "itemAbove":Landroid/view/View;
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->isPositionValid(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 273
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getChildAtVisiblePosition(I)Landroid/view/View;

    move-result-object v4

    .line 276
    :cond_0
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->isPositionValid(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 277
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getChildAtVisiblePosition(I)Landroid/view/View;

    move-result-object v3

    .line 280
    :cond_1
    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget v6, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->downY:F

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    move v6, v2

    goto :goto_0

    :cond_2
    move v6, v5

    .line 281
    .local v6, "isAbove":Z
    :goto_0
    if-eqz v4, :cond_3

    iget v7, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->downY:F

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    move v7, v5

    .line 283
    .local v7, "isBelow":Z
    :goto_1
    if-nez v6, :cond_4

    if-eqz v7, :cond_8

    .line 284
    :cond_4
    if-eqz v6, :cond_5

    move v8, v0

    goto :goto_2

    :cond_5
    move v8, v1

    .line 285
    .local v8, "swapWith":I
    :goto_2
    iget-object v9, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->viewBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eqz v6, :cond_6

    rsub-int/lit8 v9, v9, 0xa

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v9, -0xa

    .line 287
    .local v9, "translationY":I
    :goto_3
    iget-object v10, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickAdapterInterface:Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;

    iget v11, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->currentPositionOfHoveringBrick:I

    invoke-interface {v10, v11, v8}, Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;->onItemMove(II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 289
    iget-object v10, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickAdapterInterface:Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;

    iget v11, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->currentPositionOfHoveringBrick:I

    invoke-interface {v10, v11, v2}, Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;->setItemVisible(IZ)V

    .line 290
    iput v8, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->currentPositionOfHoveringBrick:I

    .line 291
    iget-object v10, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickAdapterInterface:Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;

    invoke-interface {v10, v8, v5}, Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;->setItemVisible(IZ)V

    .line 293
    if-eqz v6, :cond_7

    move-object v10, v3

    goto :goto_4

    :cond_7
    move-object v10, v4

    .line 295
    .local v10, "viewToSwapWith":Landroid/view/View;
    :goto_4
    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    int-to-float v12, v9

    aput v12, v2, v5

    invoke-static {v10, v11, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 296
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v11, 0xfa

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 297
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 298
    new-instance v5, Lorg/catrobat/catroid/ui/dragndrop/BrickListView$1;

    invoke-direct {v5, p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView$1;-><init>(Lorg/catrobat/catroid/ui/dragndrop/BrickListView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 318
    .end local v2    # "animator":Landroid/animation/ObjectAnimator;
    .end local v8    # "swapWith":I
    .end local v9    # "translationY":I
    .end local v10    # "viewToSwapWith":Landroid/view/View;
    :cond_8
    return-void
.end method


# virtual methods
.method public cancelHighlighting()V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickPositionsToHighlight:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->invalidate()V

    .line 118
    return-void
.end method

.method public cancelMove()V
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickAdapterInterface:Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;->setAllPositionsVisible()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickToMove:Lorg/catrobat/catroid/content/bricks/Brick;

    .line 163
    iput-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->hoveringDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->motionEventId:I

    .line 165
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 205
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 207
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickToMove:Lorg/catrobat/catroid/content/bricks/Brick;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickPositionsToHighlight:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->translucentBlack:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 211
    :cond_1
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->invalidateHoveringItem:Z

    if-eqz v0, :cond_2

    .line 212
    iget v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->currentPositionOfHoveringBrick:I

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getChildAtVisiblePosition(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "childAtVisiblePosition":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 214
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->invalidateHoveringItem:Z

    .line 215
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->prepareHoveringItem(Landroid/view/View;)V

    .line 219
    .end local v0    # "childAtVisiblePosition":Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->hoveringDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 220
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 223
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickPositionsToHighlight:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 224
    .local v1, "pos":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v1, v2, :cond_4

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getLastVisiblePosition()I

    move-result v2

    if-gt v1, v2, :cond_4

    .line 225
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getChildAtVisiblePosition(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->drawHighlightedItem(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 227
    .end local v1    # "pos":I
    :cond_4
    goto :goto_0

    .line 228
    :cond_5
    return-void
.end method

.method public drawHighlightedItem(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 232
    if-nez p1, :cond_0

    .line 233
    return-void

    .line 236
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 237
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 239
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 240
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 241
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 242
    return-void
.end method

.method public getBrickPositionsToHighlight()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickPositionsToHighlight:Ljava/util/List;

    return-object v0
.end method

.method public highlightControlStructureBricks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->cancelHighlighting()V

    .line 122
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickPositionsToHighlight:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->invalidate()V

    .line 124
    return-void
.end method

.method public highlightMovingItem()V
    .locals 4

    .line 107
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->hoveringDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 108
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 109
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 110
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 111
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 112
    new-instance v1, Lorg/catrobat/catroid/ui/dragndrop/-$$Lambda$BrickListView$mafai00gOXf1WTvxvGodznbIaBQ;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/dragndrop/-$$Lambda$BrickListView$mafai00gOXf1WTvxvGodznbIaBQ;-><init>(Lorg/catrobat/catroid/ui/dragndrop/BrickListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    return-void

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public isCurrentlyHighlighted()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickPositionsToHighlight:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isCurrentlyMoving()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->hoveringDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$highlightMovingItem$0$BrickListView(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 112
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 169
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->hoveringDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 170
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    .line 196
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->motionEventId:I

    if-ne v2, v3, :cond_5

    .line 197
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->stopMoving()V

    goto :goto_0

    .line 183
    .end local v0    # "pointerIndex":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->downY:F

    sub-float/2addr v0, v2

    .line 184
    .local v0, "dY":F
    add-float/2addr v2, v0

    iput v2, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->downY:F

    .line 185
    iget v3, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->offsetToCenter:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->downY:F

    .line 187
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->viewBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->downY:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 188
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->hoveringDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->viewBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 190
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->invalidate()V

    .line 191
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->swapListItems()V

    .line 192
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->scrollWhileDragging()V

    .line 193
    goto :goto_0

    .line 176
    .end local v0    # "dY":F
    :cond_3
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->stopMoving()V

    .line 177
    goto :goto_0

    .line 179
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->downY:F

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->motionEventId:I

    .line 181
    nop

    .line 200
    :cond_5
    :goto_0
    return v1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 56
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 338
    instance-of v0, p1, Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;

    if-eqz v0, :cond_0

    .line 341
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 342
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickAdapterInterface:Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;

    .line 343
    return-void

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter has to implement the BrickListView.AdapterInterface."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startMoving(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 4
    .param p1, "brickToMove"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 127
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->cancelMove()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 132
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq p1, v2, :cond_0

    .line 133
    return-void

    .line 136
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    iput-object v2, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickToMove:Lorg/catrobat/catroid/content/bricks/Brick;

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->upperScrollBound:I

    .line 140
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v2, v2, 0x6

    iput v2, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->lowerScrollBound:I

    .line 142
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickAdapterInterface:Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickToMove:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v2, v3}, Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;->getPosition(Lorg/catrobat/catroid/content/bricks/Brick;)I

    move-result v2

    iput v2, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->currentPositionOfHoveringBrick:I

    .line 144
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->invalidateHoveringItem:Z

    .line 146
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getChildAtVisiblePosition(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->prepareHoveringItem(Landroid/view/View;)V

    .line 148
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickAdapterInterface:Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;

    iget v3, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->currentPositionOfHoveringBrick:I

    invoke-interface {v2, v3, v1}, Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;->setItemVisible(IZ)V

    .line 150
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickAdapterInterface:Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;->removeItems(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->invalidateViews()V

    .line 153
    :cond_1
    return-void
.end method

.method public stopMoving()V
    .locals 3

    .line 156
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickAdapterInterface:Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;

    iget v1, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->currentPositionOfHoveringBrick:I

    iget-object v2, p0, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->brickToMove:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0, v1, v2}, Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;->moveItemTo(ILorg/catrobat/catroid/content/bricks/Brick;)V

    .line 157
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->cancelMove()V

    .line 158
    return-void
.end method
