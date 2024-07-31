.class public final Lorg/catrobat/catroid/utils/TouchUtil;
.super Ljava/lang/Object;
.source "TouchUtil.java"


# static fields
.field private static currentlyTouchingPointersToTouchIndex:Landroid/util/SparseIntArray;

.field private static isTouching:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static touches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->currentlyTouchingPointersToTouchIndex:Landroid/util/SparseIntArray;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->touches:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->isTouching:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static fireTouchEvent()V
    .locals 3

    .line 117
    new-instance v0, Lorg/catrobat/catroid/content/EventWrapper;

    new-instance v1, Lorg/catrobat/catroid/content/eventids/EventId;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/eventids/EventId;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/content/EventWrapper;-><init>(Lorg/catrobat/catroid/content/eventids/EventId;Z)V

    .line 118
    .local v0, "event":Lorg/catrobat/catroid/content/EventWrapper;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Project;->fireToAllSprites(Lorg/catrobat/catroid/content/EventWrapper;)V

    .line 119
    return-void
.end method

.method public static getCurrentTouchingPoints()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/catrobat/catroid/utils/TouchUtil;->currentlyTouchingPointersToTouchIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 124
    sget-object v2, Lorg/catrobat/catroid/utils/TouchUtil;->currentlyTouchingPointersToTouchIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 125
    .local v2, "index":I
    sget-object v3, Lorg/catrobat/catroid/utils/TouchUtil;->touches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v2    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getIndexOfCurrentTouch(I)I
    .locals 3
    .param p0, "index"    # I

    .line 135
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    sget-object v1, Lorg/catrobat/catroid/utils/TouchUtil;->currentlyTouchingPointersToTouchIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-le p0, v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/utils/TouchUtil;->currentlyTouchingPointersToTouchIndex:Landroid/util/SparseIntArray;

    add-int/lit8 v2, p0, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 136
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getLastTouchIndex()I
    .locals 1

    .line 92
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->touches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getNumberOfCurrentTouches()I
    .locals 1

    .line 131
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->currentlyTouchingPointersToTouchIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public static getX(I)F
    .locals 2
    .param p0, "index"    # I

    .line 96
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->isTouching:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->touches:Ljava/util/ArrayList;

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0

    .line 97
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getY(I)F
    .locals 2
    .param p0, "index"    # I

    .line 104
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->isTouching:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->touches:Ljava/util/ArrayList;

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0

    .line 105
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isFingerTouching(I)Z
    .locals 2
    .param p0, "index"    # I

    .line 85
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->isTouching:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->isTouching:Ljava/util/ArrayList;

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 86
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isTouching()D
    .locals 3

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/catrobat/catroid/utils/TouchUtil;->isTouching:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 77
    sget-object v1, Lorg/catrobat/catroid/utils/TouchUtil;->isTouching:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    return-wide v1

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "i":I
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static reset()V
    .locals 1

    .line 46
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->currentlyTouchingPointersToTouchIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 47
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->touches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 48
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->isTouching:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    return-void
.end method

.method public static setDummyTouchForTest(FF)V
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 112
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->touches:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->isTouching:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public static touchDown(FFI)V
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "pointer"    # I

    .line 57
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->currentlyTouchingPointersToTouchIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->currentlyTouchingPointersToTouchIndex:Landroid/util/SparseIntArray;

    sget-object v1, Lorg/catrobat/catroid/utils/TouchUtil;->touches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->touches:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->isTouching:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {}, Lorg/catrobat/catroid/utils/TouchUtil;->fireTouchEvent()V

    .line 64
    return-void
.end method

.method public static touchUp(I)V
    .locals 3
    .param p0, "pointer"    # I

    .line 67
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->currentlyTouchingPointersToTouchIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->currentlyTouchingPointersToTouchIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 71
    .local v0, "index":I
    sget-object v1, Lorg/catrobat/catroid/utils/TouchUtil;->isTouching:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lorg/catrobat/catroid/utils/TouchUtil;->currentlyTouchingPointersToTouchIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 73
    return-void
.end method

.method public static updatePosition(FFI)V
    .locals 3
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "pointer"    # I

    .line 52
    sget-object v0, Lorg/catrobat/catroid/utils/TouchUtil;->currentlyTouchingPointersToTouchIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 53
    .local v0, "index":I
    sget-object v1, Lorg/catrobat/catroid/utils/TouchUtil;->touches:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
