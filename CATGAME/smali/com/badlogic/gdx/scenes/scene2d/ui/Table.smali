.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
    }
.end annotation


# static fields
.field public static backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field static final cellPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private static columnWeightedWidth:[F

.field public static debugActorColor:Lcom/badlogic/gdx/graphics/Color;

.field public static debugCellColor:Lcom/badlogic/gdx/graphics/Color;

.field public static debugTableColor:Lcom/badlogic/gdx/graphics/Color;

.field private static rowWeightedHeight:[F


# instance fields
.field align:I

.field background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private final cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private final cells:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private clip:Z

.field private final columnDefaults:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private columnMinWidth:[F

.field private columnPrefWidth:[F

.field private columnWidth:[F

.field private columns:I

.field debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field debugRects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;",
            ">;"
        }
    .end annotation
.end field

.field private expandHeight:[F

.field private expandWidth:[F

.field private implicitEndRow:Z

.field padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field round:Z

.field private rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private rowHeight:[F

.field private rowMinHeight:[F

.field private rowPrefHeight:[F

.field private rows:I

.field private sizeInvalid:Z

.field private skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private tableMinHeight:F

.field private tableMinWidth:F

.field private tablePrefHeight:F

.field private tablePrefWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugCellColor:Lcom/badlogic/gdx/graphics/Color;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugActorColor:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    .line 1276
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$2;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1285
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$3;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1294
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$4;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1303
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$5;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$5;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 2
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 85
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 55
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 68
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 69
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 71
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 77
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    .line 86
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 88
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTransform(Z)V

    .line 91
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 92
    return-void
.end method

.method private addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 1206
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    .line 1207
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;

    .line 1208
    .local v0, "rect":Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
    iput-object p5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 1209
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v1

    sub-float/2addr v1, p2

    sub-float/2addr v1, p4

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 1210
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 1211
    return-void
.end method

.method private clearDebugRects()V
    .locals 2

    .line 1200
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    return-void

    .line 1201
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 1202
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 1203
    return-void
.end method

.method private computeSize()V
    .locals 37

    .line 794
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 796
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 797
    .local v1, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 800
    .local v2, "cellCount":I
    const/4 v3, 0x1

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-nez v4, :cond_0

    .line 801
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->endRow()V

    .line 802
    iput-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 805
    :cond_0
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .local v4, "columns":I
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 806
    .local v5, "rows":I
    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    invoke-direct {v0, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v6

    iput-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    .line 807
    .local v6, "columnMinWidth":[F
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    invoke-direct {v0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v7

    iput-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    .line 808
    .local v7, "rowMinHeight":[F
    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    invoke-direct {v0, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v8

    iput-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    .line 809
    .local v8, "columnPrefWidth":[F
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    invoke-direct {v0, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v9

    iput-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    .line 810
    .local v9, "rowPrefHeight":[F
    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    invoke-direct {v0, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v10

    iput-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    .line 811
    .local v10, "columnWidth":[F
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    invoke-direct {v0, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v11

    iput-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    .line 812
    .local v11, "rowHeight":[F
    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    invoke-direct {v0, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v12

    iput-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    .line 813
    .local v12, "expandWidth":[F
    iget-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    invoke-direct {v0, v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v13

    iput-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    .line 815
    .local v13, "expandHeight":[F
    const/4 v14, 0x0

    .line 816
    .local v14, "spaceRightLast":F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v2, :cond_c

    .line 817
    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 818
    .local v3, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    move-object/from16 v16, v10

    .end local v10    # "columnWidth":[F
    .local v16, "columnWidth":[F
    iget v10, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    move-object/from16 v18, v11

    .end local v11    # "rowHeight":[F
    .local v10, "column":I
    .local v18, "rowHeight":[F
    iget v11, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    .local v11, "row":I
    iget-object v0, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 819
    .local v0, "colspan":I
    move/from16 v19, v2

    .end local v2    # "cellCount":I
    .local v19, "cellCount":I
    iget-object v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 822
    .local v2, "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    move/from16 v20, v15

    .end local v15    # "i":I
    .local v20, "i":I
    iget-object v15, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eqz v15, :cond_1

    aget v15, v13, v11

    const/16 v17, 0x0

    cmpl-float v15, v15, v17

    if-nez v15, :cond_1

    iget-object v15, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-float v15, v15

    aput v15, v13, v11

    .line 823
    :cond_1
    const/4 v15, 0x1

    if-ne v0, v15, :cond_2

    iget-object v15, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eqz v15, :cond_2

    aget v15, v12, v10

    const/16 v17, 0x0

    cmpl-float v15, v15, v17

    if-nez v15, :cond_2

    iget-object v15, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-float v15, v15

    aput v15, v12, v10

    .line 827
    :cond_2
    iget-object v15, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v15

    move-object/from16 v21, v13

    if-nez v10, :cond_3

    move/from16 v22, v14

    const/4 v13, 0x0

    goto :goto_1

    .end local v13    # "expandHeight":[F
    .local v21, "expandHeight":[F
    :cond_3
    iget-object v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    sub-float/2addr v13, v14

    move/from16 v22, v14

    const/4 v14, 0x0

    .end local v14    # "spaceRightLast":F
    .local v22, "spaceRightLast":F
    invoke-static {v14, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    :goto_1
    add-float/2addr v15, v13

    iput v15, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    .line 828
    iget-object v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    iput v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    .line 829
    iget v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    .line 830
    iget v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 831
    .local v13, "above":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v14, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget-object v15, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v15

    move-object/from16 v23, v12

    .end local v12    # "expandWidth":[F
    .local v23, "expandWidth":[F
    iget-object v12, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    sub-float/2addr v15, v12

    const/4 v12, 0x0

    invoke-static {v12, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    add-float/2addr v14, v15

    iput v14, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    goto :goto_2

    .line 829
    .end local v13    # "above":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v23    # "expandWidth":[F
    .restart local v12    # "expandWidth":[F
    :cond_4
    move-object/from16 v23, v12

    .line 833
    .end local v12    # "expandWidth":[F
    .restart local v23    # "expandWidth":[F
    :goto_2
    iget-object v12, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    .line 834
    .local v12, "spaceRight":F
    iget-object v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    add-int v14, v10, v0

    if-ne v14, v4, :cond_5

    const/4 v14, 0x0

    goto :goto_3

    :cond_5
    move v14, v12

    :goto_3
    add-float/2addr v13, v14

    iput v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    .line 835
    iget-object v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    add-int/lit8 v14, v5, -0x1

    if-ne v11, v14, :cond_6

    const/4 v14, 0x0

    goto :goto_4

    :cond_6
    iget-object v14, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v14

    :goto_4
    add-float/2addr v13, v14

    iput v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    .line 836
    move v14, v12

    .line 839
    .end local v22    # "spaceRightLast":F
    .restart local v14    # "spaceRightLast":F
    iget-object v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    .line 840
    .local v13, "prefWidth":F
    iget-object v15, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v15

    .line 841
    .local v15, "prefHeight":F
    move/from16 v24, v12

    .end local v12    # "spaceRight":F
    .local v24, "spaceRight":F
    iget-object v12, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    .line 842
    .local v12, "minWidth":F
    move/from16 v22, v14

    .end local v14    # "spaceRightLast":F
    .restart local v22    # "spaceRightLast":F
    iget-object v14, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v14

    .line 843
    .local v14, "minHeight":F
    move/from16 v25, v5

    .end local v5    # "rows":I
    .local v25, "rows":I
    iget-object v5, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    .line 844
    .local v5, "maxWidth":F
    move/from16 v26, v4

    .end local v4    # "columns":I
    .local v26, "columns":I
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    .line 845
    .local v4, "maxHeight":F
    cmpg-float v27, v13, v12

    if-gez v27, :cond_7

    move v13, v12

    .line 846
    :cond_7
    cmpg-float v27, v15, v14

    if-gez v27, :cond_8

    move v15, v14

    .line 847
    :cond_8
    const/16 v17, 0x0

    cmpl-float v27, v5, v17

    if-lez v27, :cond_9

    cmpl-float v27, v13, v5

    if-lez v27, :cond_9

    move v13, v5

    .line 848
    :cond_9
    const/16 v17, 0x0

    cmpl-float v17, v4, v17

    if-lez v17, :cond_a

    cmpl-float v17, v15, v4

    if-lez v17, :cond_a

    move v15, v4

    .line 850
    :cond_a
    move-object/from16 v17, v2

    const/4 v2, 0x1

    .end local v2    # "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .local v17, "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-ne v0, v2, :cond_b

    .line 851
    iget v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    move/from16 v27, v0

    .end local v0    # "colspan":I
    .local v27, "colspan":I
    iget v0, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v2, v0

    .line 852
    .local v2, "hpadding":F
    aget v0, v8, v10

    move/from16 v28, v4

    .end local v4    # "maxHeight":F
    .local v28, "maxHeight":F
    add-float v4, v13, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v8, v10

    .line 853
    aget v0, v6, v10

    add-float v4, v12, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v6, v10

    goto :goto_5

    .line 850
    .end local v2    # "hpadding":F
    .end local v27    # "colspan":I
    .end local v28    # "maxHeight":F
    .restart local v0    # "colspan":I
    .restart local v4    # "maxHeight":F
    :cond_b
    move/from16 v27, v0

    move/from16 v28, v4

    .line 855
    .end local v0    # "colspan":I
    .end local v4    # "maxHeight":F
    .restart local v27    # "colspan":I
    .restart local v28    # "maxHeight":F
    :goto_5
    iget v0, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    add-float/2addr v0, v2

    .line 856
    .local v0, "vpadding":F
    aget v2, v9, v11

    add-float v4, v15, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v9, v11

    .line 857
    aget v2, v7, v11

    add-float v4, v14, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v7, v11

    .line 816
    .end local v0    # "vpadding":F
    .end local v3    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v5    # "maxWidth":F
    .end local v10    # "column":I
    .end local v11    # "row":I
    .end local v12    # "minWidth":F
    .end local v13    # "prefWidth":F
    .end local v14    # "minHeight":F
    .end local v15    # "prefHeight":F
    .end local v17    # "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v24    # "spaceRight":F
    .end local v27    # "colspan":I
    .end local v28    # "maxHeight":F
    add-int/lit8 v15, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v10, v16

    move-object/from16 v11, v18

    move/from16 v2, v19

    move-object/from16 v13, v21

    move/from16 v14, v22

    move-object/from16 v12, v23

    move/from16 v5, v25

    move/from16 v4, v26

    const/4 v3, 0x1

    .end local v20    # "i":I
    .local v15, "i":I
    goto/16 :goto_0

    .end local v16    # "columnWidth":[F
    .end local v18    # "rowHeight":[F
    .end local v19    # "cellCount":I
    .end local v21    # "expandHeight":[F
    .end local v22    # "spaceRightLast":F
    .end local v23    # "expandWidth":[F
    .end local v25    # "rows":I
    .end local v26    # "columns":I
    .local v2, "cellCount":I
    .local v4, "columns":I
    .local v5, "rows":I
    .local v10, "columnWidth":[F
    .local v11, "rowHeight":[F
    .local v12, "expandWidth":[F
    .local v13, "expandHeight":[F
    .local v14, "spaceRightLast":F
    :cond_c
    move/from16 v19, v2

    move/from16 v26, v4

    move/from16 v25, v5

    move-object/from16 v16, v10

    move-object/from16 v18, v11

    move-object/from16 v23, v12

    move-object/from16 v21, v13

    move/from16 v22, v14

    move/from16 v20, v15

    .line 860
    .end local v2    # "cellCount":I
    .end local v4    # "columns":I
    .end local v5    # "rows":I
    .end local v10    # "columnWidth":[F
    .end local v11    # "rowHeight":[F
    .end local v12    # "expandWidth":[F
    .end local v13    # "expandHeight":[F
    .end local v14    # "spaceRightLast":F
    .end local v15    # "i":I
    .restart local v16    # "columnWidth":[F
    .restart local v18    # "rowHeight":[F
    .restart local v19    # "cellCount":I
    .restart local v21    # "expandHeight":[F
    .restart local v22    # "spaceRightLast":F
    .restart local v23    # "expandWidth":[F
    .restart local v25    # "rows":I
    .restart local v26    # "columns":I
    const/4 v0, 0x0

    .local v0, "uniformMinWidth":F
    const/4 v2, 0x0

    .line 861
    .local v2, "uniformMinHeight":F
    const/4 v3, 0x0

    .local v3, "uniformPrefWidth":F
    const/4 v4, 0x0

    .line 862
    .local v4, "uniformPrefHeight":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    move/from16 v10, v19

    .end local v19    # "cellCount":I
    .local v10, "cellCount":I
    if-ge v5, v10, :cond_13

    .line 863
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 864
    .local v11, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 867
    .local v12, "column":I
    iget-object v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 869
    .local v13, "expandX":I
    if-eqz v13, :cond_10

    .line 870
    iget-object v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v12

    .line 871
    .local v14, "nn":I
    move v15, v12

    .local v15, "ii":I
    :goto_7
    if-ge v15, v14, :cond_e

    .line 872
    aget v19, v23, v15

    const/16 v17, 0x0

    cmpl-float v19, v19, v17

    if-eqz v19, :cond_d

    goto :goto_9

    .line 871
    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 873
    .end local v15    # "ii":I
    :cond_e
    move v15, v12

    .restart local v15    # "ii":I
    :goto_8
    if-ge v15, v14, :cond_f

    .line 874
    move/from16 v19, v14

    .end local v14    # "nn":I
    .local v19, "nn":I
    int-to-float v14, v13

    aput v14, v23, v15

    .line 873
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v19

    goto :goto_8

    .end local v19    # "nn":I
    .restart local v14    # "nn":I
    :cond_f
    move/from16 v19, v14

    .line 878
    .end local v14    # "nn":I
    .end local v15    # "ii":I
    :cond_10
    :goto_9
    iget-object v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v14, v15, :cond_11

    iget-object v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_11

    .line 879
    iget v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v14, v15

    .line 880
    .local v14, "hpadding":F
    aget v15, v6, v12

    sub-float/2addr v15, v14

    invoke-static {v0, v15}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 881
    aget v15, v8, v12

    sub-float/2addr v15, v14

    invoke-static {v3, v15}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 883
    .end local v14    # "hpadding":F
    :cond_11
    iget-object v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v14, v15, :cond_12

    .line 884
    iget v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    add-float/2addr v14, v15

    .line 885
    .local v14, "vpadding":F
    iget v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v15, v7, v15

    sub-float/2addr v15, v14

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 886
    iget v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v15, v9, v15

    sub-float/2addr v15, v14

    invoke-static {v4, v15}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 862
    .end local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v12    # "column":I
    .end local v13    # "expandX":I
    .end local v14    # "vpadding":F
    :cond_12
    add-int/lit8 v5, v5, 0x1

    move/from16 v19, v10

    goto :goto_6

    .line 891
    .end local v5    # "i":I
    :cond_13
    const/4 v5, 0x0

    cmpl-float v11, v3, v5

    if-gtz v11, :cond_14

    cmpl-float v11, v4, v5

    if-lez v11, :cond_17

    .line 892
    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_a
    if-ge v5, v10, :cond_17

    .line 893
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 894
    .restart local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    const/4 v12, 0x0

    cmpl-float v13, v3, v12

    if-lez v13, :cond_15

    iget-object v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v12, v13, :cond_15

    iget-object v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_15

    .line 895
    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v12, v13

    .line 896
    .local v12, "hpadding":F
    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    add-float v14, v0, v12

    aput v14, v6, v13

    .line 897
    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    add-float v14, v3, v12

    aput v14, v8, v13

    .line 899
    .end local v12    # "hpadding":F
    :cond_15
    const/4 v12, 0x0

    cmpl-float v13, v4, v12

    if-lez v13, :cond_16

    iget-object v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v12, v13, :cond_16

    .line 900
    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    add-float/2addr v12, v13

    .line 901
    .local v12, "vpadding":F
    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    add-float v14, v2, v12

    aput v14, v7, v13

    .line 902
    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    add-float v14, v4, v12

    aput v14, v9, v13

    .line 892
    .end local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v12    # "vpadding":F
    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 908
    .end local v5    # "i":I
    :cond_17
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_b
    if-ge v5, v10, :cond_1e

    .line 909
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 910
    .restart local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 911
    .local v12, "colspan":I
    const/4 v13, 0x1

    if-ne v12, v13, :cond_18

    move/from16 v19, v0

    move-object/from16 v20, v1

    move/from16 v27, v2

    move/from16 v29, v3

    move/from16 v31, v4

    goto/16 :goto_f

    .line 912
    :cond_18
    iget v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 914
    .local v14, "column":I
    iget-object v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 915
    .local v15, "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    .line 916
    .local v13, "minWidth":F
    move/from16 v19, v0

    .end local v0    # "uniformMinWidth":F
    .local v19, "uniformMinWidth":F
    iget-object v0, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 917
    .local v0, "prefWidth":F
    move-object/from16 v20, v1

    .end local v1    # "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    .local v20, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    iget-object v1, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 918
    .local v1, "maxWidth":F
    cmpg-float v24, v0, v13

    if-gez v24, :cond_19

    move v0, v13

    .line 919
    :cond_19
    const/16 v17, 0x0

    cmpl-float v24, v1, v17

    if-lez v24, :cond_1a

    cmpl-float v24, v0, v1

    if-lez v24, :cond_1a

    move v0, v1

    .line 921
    :cond_1a
    move/from16 v24, v1

    .end local v1    # "maxWidth":F
    .local v24, "maxWidth":F
    iget v1, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    move/from16 v27, v2

    .end local v2    # "uniformMinHeight":F
    .local v27, "uniformMinHeight":F
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v1, v2

    neg-float v1, v1

    .local v1, "spannedMinWidth":F
    move v2, v1

    .line 922
    .local v2, "spannedPrefWidth":F
    const/16 v28, 0x0

    .line 923
    .local v28, "totalExpandWidth":F
    move/from16 v29, v14

    move/from16 v30, v1

    .end local v1    # "spannedMinWidth":F
    .local v29, "ii":I
    .local v30, "spannedMinWidth":F
    add-int v1, v29, v12

    move/from16 v36, v29

    move/from16 v29, v3

    move/from16 v3, v36

    .local v1, "nn":I
    .local v3, "ii":I
    .local v29, "uniformPrefWidth":F
    :goto_c
    if-ge v3, v1, :cond_1b

    .line 924
    aget v31, v6, v3

    add-float v30, v30, v31

    .line 925
    aget v31, v8, v3

    add-float v2, v2, v31

    .line 926
    aget v31, v23, v3

    add-float v28, v28, v31

    .line 923
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 929
    .end local v1    # "nn":I
    .end local v3    # "ii":I
    :cond_1b
    sub-float v1, v13, v30

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 930
    .local v1, "extraMinWidth":F
    move/from16 v31, v4

    .end local v4    # "uniformPrefHeight":F
    .local v31, "uniformPrefHeight":F
    sub-float v4, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 931
    .local v4, "extraPrefWidth":F
    move/from16 v17, v14

    .local v17, "ii":I
    add-int v3, v17, v12

    move/from16 v33, v0

    move/from16 v0, v17

    .end local v17    # "ii":I
    .local v0, "ii":I
    .local v3, "nn":I
    .local v33, "prefWidth":F
    :goto_d
    if-ge v0, v3, :cond_1d

    .line 932
    const/16 v17, 0x0

    cmpl-float v32, v28, v17

    if-nez v32, :cond_1c

    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v34, v2

    .end local v2    # "spannedPrefWidth":F
    .local v34, "spannedPrefWidth":F
    int-to-float v2, v12

    div-float v32, v32, v2

    goto :goto_e

    .end local v34    # "spannedPrefWidth":F
    .restart local v2    # "spannedPrefWidth":F
    :cond_1c
    move/from16 v34, v2

    .end local v2    # "spannedPrefWidth":F
    .restart local v34    # "spannedPrefWidth":F
    aget v2, v23, v0

    div-float v32, v2, v28

    :goto_e
    move/from16 v2, v32

    .line 933
    .local v2, "ratio":F
    aget v32, v6, v0

    mul-float v35, v1, v2

    add-float v32, v32, v35

    aput v32, v6, v0

    .line 934
    aget v32, v8, v0

    mul-float v35, v4, v2

    add-float v32, v32, v35

    aput v32, v8, v0

    .line 931
    .end local v2    # "ratio":F
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v34

    goto :goto_d

    .end local v34    # "spannedPrefWidth":F
    .local v2, "spannedPrefWidth":F
    :cond_1d
    move/from16 v34, v2

    .line 908
    .end local v0    # "ii":I
    .end local v1    # "extraMinWidth":F
    .end local v2    # "spannedPrefWidth":F
    .end local v3    # "nn":I
    .end local v4    # "extraPrefWidth":F
    .end local v11    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v12    # "colspan":I
    .end local v13    # "minWidth":F
    .end local v14    # "column":I
    .end local v15    # "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v24    # "maxWidth":F
    .end local v28    # "totalExpandWidth":F
    .end local v30    # "spannedMinWidth":F
    .end local v33    # "prefWidth":F
    :goto_f
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v27

    move/from16 v3, v29

    move/from16 v4, v31

    goto/16 :goto_b

    .end local v19    # "uniformMinWidth":F
    .end local v20    # "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    .end local v27    # "uniformMinHeight":F
    .end local v29    # "uniformPrefWidth":F
    .end local v31    # "uniformPrefHeight":F
    .local v0, "uniformMinWidth":F
    .local v1, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    .local v2, "uniformMinHeight":F
    .local v3, "uniformPrefWidth":F
    .local v4, "uniformPrefHeight":F
    :cond_1e
    move/from16 v19, v0

    move-object/from16 v20, v1

    move/from16 v27, v2

    move/from16 v29, v3

    move/from16 v31, v4

    .line 939
    .end local v0    # "uniformMinWidth":F
    .end local v1    # "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    .end local v2    # "uniformMinHeight":F
    .end local v3    # "uniformPrefWidth":F
    .end local v4    # "uniformPrefHeight":F
    .end local v5    # "i":I
    .restart local v19    # "uniformMinWidth":F
    .restart local v20    # "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    .restart local v27    # "uniformMinHeight":F
    .restart local v29    # "uniformPrefWidth":F
    .restart local v31    # "uniformPrefHeight":F
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    .line 940
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    .line 941
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 942
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    .line 943
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    move/from16 v2, v26

    .end local v26    # "columns":I
    .local v2, "columns":I
    if-ge v1, v2, :cond_1f

    .line 944
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    aget v4, v6, v1

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    .line 945
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    aget v4, v8, v1

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 943
    add-int/lit8 v1, v1, 0x1

    move/from16 v26, v2

    goto :goto_10

    .line 947
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_11
    move/from16 v3, v25

    .end local v25    # "rows":I
    .local v3, "rows":I
    if-ge v1, v3, :cond_20

    .line 948
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    aget v5, v7, v1

    add-float/2addr v4, v5

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    .line 949
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    aget v5, v7, v1

    aget v11, v9, v1

    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    .line 947
    add-int/lit8 v1, v1, 0x1

    move/from16 v25, v3

    goto :goto_11

    .line 951
    .end local v1    # "i":I
    :cond_20
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    add-float/2addr v1, v4

    .line 952
    .local v1, "hpadding":F
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    add-float/2addr v4, v5

    .line 953
    .local v4, "vpadding":F
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    add-float/2addr v5, v1

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    .line 954
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    add-float/2addr v11, v4

    iput v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    .line 955
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    add-float/2addr v11, v1

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 956
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    add-float/2addr v5, v4

    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    .line 957
    return-void
.end method

.method private drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 9
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 1243
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getDebug()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1244
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 1245
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1246
    :cond_1
    const/4 v0, 0x0

    .local v0, "x":F
    const/4 v1, 0x0

    .line 1247
    .local v1, "y":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1248
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v0

    .line 1249
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getY()F

    move-result v1

    .line 1251
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1252
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;

    .line 1253
    .local v4, "debugRect":Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1254
    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->x:F

    add-float/2addr v5, v0

    iget v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->y:F

    add-float/2addr v6, v1

    iget v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->width:F

    iget v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->height:F

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    .line 1251
    .end local v4    # "debugRect":Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1256
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_3
    return-void

    .line 1243
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_4
    :goto_1
    return-void
.end method

.method private endRow()V
    .locals 6

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 361
    .local v0, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    const/4 v1, 0x0

    .line 362
    .local v1, "rowColumns":I
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 363
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 364
    .local v4, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-boolean v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v5, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v1, v5

    .line 362
    .end local v4    # "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 367
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .line 368
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 369
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iput-boolean v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    .line 370
    return-void
.end method

.method private ensureSize([FI)[F
    .locals 3
    .param p1, "array"    # [F
    .param p2, "size"    # I

    .line 751
    if-eqz p1, :cond_2

    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_1

    .line 752
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 753
    const/4 v2, 0x0

    aput v2, p1, v0

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 754
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-object p1

    .line 751
    :cond_2
    :goto_1
    new-array v0, p2, [F

    return-object v0
.end method

.method private layout(FFFF)V
    .locals 37
    .param p1, "layoutX"    # F
    .param p2, "layoutY"    # F
    .param p3, "layoutWidth"    # F
    .param p4, "layoutHeight"    # F

    .line 962
    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 963
    .local v7, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 965
    .local v8, "cellCount":I
    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 967
    :cond_0
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v9

    .line 968
    .local v9, "padLeft":F
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    add-float v10, v9, v0

    .line 969
    .local v10, "hpadding":F
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v11

    .line 970
    .local v11, "padTop":F
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    add-float v12, v11, v0

    .line 972
    .local v12, "vpadding":F
    iget v13, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .local v13, "columns":I
    iget v14, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 973
    .local v14, "rows":I
    iget-object v15, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    .local v15, "expandWidth":[F
    iget-object v5, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    .line 974
    .local v5, "expandHeight":[F
    iget-object v4, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    .local v4, "columnWidth":[F
    iget-object v3, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    .line 976
    .local v3, "rowHeight":[F
    const/4 v0, 0x0

    .local v0, "totalExpandWidth":F
    const/4 v1, 0x0

    .line 977
    .local v1, "totalExpandHeight":F
    const/4 v2, 0x0

    move/from16 v16, v0

    .end local v0    # "totalExpandWidth":F
    .local v2, "i":I
    .local v16, "totalExpandWidth":F
    :goto_0
    if-ge v2, v13, :cond_1

    .line 978
    aget v0, v15, v2

    add-float v16, v16, v0

    .line 977
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 979
    .end local v2    # "i":I
    :cond_1
    const/4 v0, 0x0

    move/from16 v17, v1

    .end local v1    # "totalExpandHeight":F
    .local v0, "i":I
    .local v17, "totalExpandHeight":F
    :goto_1
    if-ge v0, v14, :cond_2

    .line 980
    aget v1, v5, v0

    add-float v17, v17, v1

    .line 979
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 984
    .end local v0    # "i":I
    :cond_2
    iget v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    iget v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    sub-float v2, v0, v1

    .line 985
    .local v2, "totalGrowWidth":F
    const/4 v0, 0x0

    cmpl-float v18, v2, v0

    if-nez v18, :cond_3

    .line 986
    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    move-object/from16 v22, v5

    move/from16 v20, v9

    move/from16 v19, v11

    move-object v9, v1

    .local v1, "columnWeightedWidth":[F
    goto :goto_3

    .line 988
    .end local v1    # "columnWeightedWidth":[F
    :cond_3
    sub-float v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 989
    .local v1, "extraWidth":F
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWeightedWidth:[F

    invoke-direct {v6, v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWeightedWidth:[F

    .line 990
    .local v0, "columnWeightedWidth":[F
    move/from16 v19, v11

    .end local v11    # "padTop":F
    .local v19, "padTop":F
    iget-object v11, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    move/from16 v20, v9

    .end local v9    # "padLeft":F
    .local v11, "columnMinWidth":[F
    .local v20, "padLeft":F
    iget-object v9, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    .line 991
    .local v9, "columnPrefWidth":[F
    const/16 v21, 0x0

    move-object/from16 v22, v5

    move/from16 v5, v21

    .local v5, "i":I
    .local v22, "expandHeight":[F
    :goto_2
    if-ge v5, v13, :cond_4

    .line 992
    aget v21, v9, v5

    aget v23, v11, v5

    sub-float v21, v21, v23

    .line 993
    .local v21, "growWidth":F
    div-float v23, v21, v2

    .line 994
    .local v23, "growRatio":F
    aget v24, v11, v5

    mul-float v25, v1, v23

    add-float v24, v24, v25

    aput v24, v0, v5

    .line 991
    .end local v21    # "growWidth":F
    .end local v23    # "growRatio":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move-object v9, v0

    .line 999
    .end local v0    # "columnWeightedWidth":[F
    .end local v1    # "extraWidth":F
    .end local v5    # "i":I
    .end local v11    # "columnMinWidth":[F
    .local v9, "columnWeightedWidth":[F
    :goto_3
    iget v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    iget v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    sub-float v11, v0, v1

    .line 1000
    .local v11, "totalGrowHeight":F
    const/4 v0, 0x0

    cmpl-float v1, v11, v0

    if-nez v1, :cond_5

    .line 1001
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    move-object v6, v0

    move/from16 v21, v2

    .local v0, "rowWeightedHeight":[F
    goto :goto_5

    .line 1003
    .end local v0    # "rowWeightedHeight":[F
    :cond_5
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowWeightedHeight:[F

    invoke-direct {v6, v0, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowWeightedHeight:[F

    .line 1004
    .restart local v0    # "rowWeightedHeight":[F
    iget v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    sub-float v1, p4, v1

    const/4 v5, 0x0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1005
    .local v1, "extraHeight":F
    iget-object v5, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    move/from16 v21, v2

    .end local v2    # "totalGrowWidth":F
    .local v5, "rowMinHeight":[F
    .local v21, "totalGrowWidth":F
    iget-object v2, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    .line 1006
    .local v2, "rowPrefHeight":[F
    const/16 v23, 0x0

    move/from16 v6, v23

    .local v6, "i":I
    :goto_4
    if-ge v6, v14, :cond_6

    .line 1007
    aget v23, v2, v6

    aget v24, v5, v6

    sub-float v23, v23, v24

    .line 1008
    .local v23, "growHeight":F
    div-float v24, v23, v11

    .line 1009
    .local v24, "growRatio":F
    aget v25, v5, v6

    mul-float v26, v1, v24

    add-float v25, v25, v26

    aput v25, v0, v6

    .line 1006
    .end local v23    # "growHeight":F
    .end local v24    # "growRatio":F
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    move-object v6, v0

    .line 1014
    .end local v0    # "rowWeightedHeight":[F
    .end local v1    # "extraHeight":F
    .end local v2    # "rowPrefHeight":[F
    .end local v5    # "rowMinHeight":[F
    .local v6, "rowWeightedHeight":[F
    :goto_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v8, :cond_d

    .line 1015
    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1016
    .local v2, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v5, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .local v5, "column":I
    iget v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    .line 1017
    .local v1, "row":I
    move/from16 v24, v11

    .end local v11    # "totalGrowHeight":F
    .local v24, "totalGrowHeight":F
    iget-object v11, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 1019
    .local v11, "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/16 v25, 0x0

    .line 1020
    .local v25, "spannedWeightedWidth":F
    move-object/from16 v26, v7

    .end local v7    # "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    .local v26, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    iget-object v7, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1021
    .local v7, "colspan":I
    move/from16 v27, v5

    move/from16 v28, v8

    .end local v8    # "cellCount":I
    .local v27, "ii":I
    .local v28, "cellCount":I
    add-int v8, v27, v7

    move/from16 v29, v14

    move/from16 v14, v25

    move/from16 v25, v12

    move/from16 v12, v27

    .end local v27    # "ii":I
    .local v8, "nn":I
    .local v12, "ii":I
    .local v14, "spannedWeightedWidth":F
    .local v25, "vpadding":F
    .local v29, "rows":I
    :goto_7
    if-ge v12, v8, :cond_7

    .line 1022
    aget v27, v9, v12

    add-float v14, v14, v27

    .line 1021
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1023
    .end local v8    # "nn":I
    .end local v12    # "ii":I
    :cond_7
    aget v8, v6, v1

    .line 1025
    .local v8, "weightedHeight":F
    iget-object v12, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    .line 1026
    .local v12, "prefWidth":F
    move-object/from16 v27, v6

    .end local v6    # "rowWeightedHeight":[F
    .local v27, "rowWeightedHeight":[F
    iget-object v6, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v6

    .line 1027
    .local v6, "prefHeight":F
    move-object/from16 v30, v9

    .end local v9    # "columnWeightedWidth":[F
    .local v30, "columnWeightedWidth":[F
    iget-object v9, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v9

    .line 1028
    .local v9, "minWidth":F
    move-object/from16 v31, v15

    .end local v15    # "expandWidth":[F
    .local v31, "expandWidth":[F
    iget-object v15, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v15, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v15

    .line 1029
    .local v15, "minHeight":F
    move/from16 v32, v13

    .end local v13    # "columns":I
    .local v32, "columns":I
    iget-object v13, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    .line 1030
    .local v13, "maxWidth":F
    move/from16 v33, v10

    .end local v10    # "hpadding":F
    .local v33, "hpadding":F
    iget-object v10, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v10

    .line 1031
    .local v10, "maxHeight":F
    cmpg-float v34, v12, v9

    if-gez v34, :cond_8

    move v12, v9

    .line 1032
    :cond_8
    cmpg-float v34, v6, v15

    if-gez v34, :cond_9

    move v6, v15

    .line 1033
    :cond_9
    const/16 v18, 0x0

    cmpl-float v34, v13, v18

    if-lez v34, :cond_a

    cmpl-float v34, v12, v13

    if-lez v34, :cond_a

    move v12, v13

    .line 1034
    :cond_a
    const/16 v18, 0x0

    cmpl-float v34, v10, v18

    if-lez v34, :cond_b

    cmpl-float v34, v6, v10

    if-lez v34, :cond_b

    move v6, v10

    .line 1036
    :cond_b
    move/from16 v34, v9

    .end local v9    # "minWidth":F
    .local v34, "minWidth":F
    iget v9, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    sub-float v9, v14, v9

    move/from16 v35, v10

    .end local v10    # "maxHeight":F
    .local v35, "maxHeight":F
    iget v10, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    sub-float/2addr v9, v10

    invoke-static {v9, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 1037
    iget v9, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float v9, v8, v9

    iget v10, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v9, v10

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 1039
    const/4 v9, 0x1

    if-ne v7, v9, :cond_c

    aget v9, v4, v5

    invoke-static {v9, v14}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aput v9, v4, v5

    .line 1040
    :cond_c
    aget v9, v3, v1

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aput v9, v3, v1

    .line 1014
    .end local v1    # "row":I
    .end local v2    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v5    # "column":I
    .end local v6    # "prefHeight":F
    .end local v7    # "colspan":I
    .end local v8    # "weightedHeight":F
    .end local v11    # "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v12    # "prefWidth":F
    .end local v13    # "maxWidth":F
    .end local v14    # "spannedWeightedWidth":F
    .end local v15    # "minHeight":F
    .end local v34    # "minWidth":F
    .end local v35    # "maxHeight":F
    add-int/lit8 v0, v0, 0x1

    move/from16 v11, v24

    move/from16 v12, v25

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    move/from16 v8, v28

    move/from16 v14, v29

    move-object/from16 v9, v30

    move-object/from16 v15, v31

    move/from16 v13, v32

    move/from16 v10, v33

    goto/16 :goto_6

    .end local v24    # "totalGrowHeight":F
    .end local v25    # "vpadding":F
    .end local v26    # "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    .end local v27    # "rowWeightedHeight":[F
    .end local v28    # "cellCount":I
    .end local v29    # "rows":I
    .end local v30    # "columnWeightedWidth":[F
    .end local v31    # "expandWidth":[F
    .end local v32    # "columns":I
    .end local v33    # "hpadding":F
    .local v6, "rowWeightedHeight":[F
    .local v7, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    .local v8, "cellCount":I
    .local v9, "columnWeightedWidth":[F
    .local v10, "hpadding":F
    .local v11, "totalGrowHeight":F
    .local v12, "vpadding":F
    .local v13, "columns":I
    .local v14, "rows":I
    .local v15, "expandWidth":[F
    :cond_d
    move-object/from16 v27, v6

    move-object/from16 v26, v7

    move/from16 v28, v8

    move-object/from16 v30, v9

    move/from16 v33, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v32, v13

    move/from16 v29, v14

    move-object/from16 v31, v15

    .line 1044
    .end local v0    # "i":I
    .end local v6    # "rowWeightedHeight":[F
    .end local v7    # "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    .end local v8    # "cellCount":I
    .end local v9    # "columnWeightedWidth":[F
    .end local v10    # "hpadding":F
    .end local v11    # "totalGrowHeight":F
    .end local v12    # "vpadding":F
    .end local v13    # "columns":I
    .end local v14    # "rows":I
    .end local v15    # "expandWidth":[F
    .restart local v24    # "totalGrowHeight":F
    .restart local v25    # "vpadding":F
    .restart local v26    # "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    .restart local v27    # "rowWeightedHeight":[F
    .restart local v28    # "cellCount":I
    .restart local v29    # "rows":I
    .restart local v30    # "columnWeightedWidth":[F
    .restart local v31    # "expandWidth":[F
    .restart local v32    # "columns":I
    .restart local v33    # "hpadding":F
    const/4 v0, 0x0

    cmpl-float v1, v16, v0

    if-lez v1, :cond_11

    .line 1045
    sub-float v0, p3, v33

    .line 1046
    .local v0, "extra":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    move/from16 v6, v32

    .end local v32    # "columns":I
    .local v6, "columns":I
    if-ge v1, v6, :cond_e

    .line 1047
    aget v2, v4, v1

    sub-float/2addr v0, v2

    .line 1046
    add-int/lit8 v1, v1, 0x1

    move/from16 v32, v6

    goto :goto_8

    .line 1048
    .end local v1    # "i":I
    :cond_e
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_12

    .line 1049
    const/4 v1, 0x0

    .line 1050
    .local v1, "used":F
    const/4 v2, 0x0

    .line 1051
    .local v2, "lastIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9
    if-ge v5, v6, :cond_10

    .line 1052
    aget v7, v31, v5

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_f

    goto :goto_a

    .line 1053
    :cond_f
    aget v7, v31, v5

    mul-float/2addr v7, v0

    div-float v7, v7, v16

    .line 1054
    .local v7, "amount":F
    aget v8, v4, v5

    add-float/2addr v8, v7

    aput v8, v4, v5

    .line 1055
    add-float/2addr v1, v7

    .line 1056
    move v2, v5

    .line 1051
    .end local v7    # "amount":F
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 1058
    .end local v5    # "i":I
    :cond_10
    aget v5, v4, v2

    sub-float v7, v0, v1

    add-float/2addr v5, v7

    aput v5, v4, v2

    goto :goto_b

    .line 1044
    .end local v0    # "extra":F
    .end local v1    # "used":F
    .end local v2    # "lastIndex":I
    .end local v6    # "columns":I
    .restart local v32    # "columns":I
    :cond_11
    move/from16 v6, v32

    .line 1061
    .end local v32    # "columns":I
    .restart local v6    # "columns":I
    :cond_12
    :goto_b
    const/4 v0, 0x0

    cmpl-float v1, v17, v0

    if-lez v1, :cond_16

    .line 1062
    sub-float v0, p4, v25

    .line 1063
    .restart local v0    # "extra":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    move/from16 v7, v29

    .end local v29    # "rows":I
    .local v7, "rows":I
    if-ge v1, v7, :cond_13

    .line 1064
    aget v2, v3, v1

    sub-float/2addr v0, v2

    .line 1063
    add-int/lit8 v1, v1, 0x1

    move/from16 v29, v7

    goto :goto_c

    .line 1065
    .end local v1    # "i":I
    :cond_13
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_17

    .line 1066
    const/4 v1, 0x0

    .line 1067
    .local v1, "used":F
    const/4 v2, 0x0

    .line 1068
    .restart local v2    # "lastIndex":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_d
    if-ge v5, v7, :cond_15

    .line 1069
    aget v8, v22, v5

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_14

    goto :goto_e

    .line 1070
    :cond_14
    aget v8, v22, v5

    mul-float/2addr v8, v0

    div-float v8, v8, v17

    .line 1071
    .local v8, "amount":F
    aget v9, v3, v5

    add-float/2addr v9, v8

    aput v9, v3, v5

    .line 1072
    add-float/2addr v1, v8

    .line 1073
    move v2, v5

    .line 1068
    .end local v8    # "amount":F
    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1075
    .end local v5    # "i":I
    :cond_15
    aget v5, v3, v2

    sub-float v8, v0, v1

    add-float/2addr v5, v8

    aput v5, v3, v2

    goto :goto_f

    .line 1061
    .end local v0    # "extra":F
    .end local v1    # "used":F
    .end local v2    # "lastIndex":I
    .end local v7    # "rows":I
    .restart local v29    # "rows":I
    :cond_16
    move/from16 v7, v29

    .line 1080
    .end local v29    # "rows":I
    .restart local v7    # "rows":I
    :cond_17
    :goto_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    move/from16 v8, v28

    .end local v28    # "cellCount":I
    .local v8, "cellCount":I
    if-ge v0, v8, :cond_1b

    .line 1081
    move-object/from16 v9, v26

    .end local v26    # "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    .local v9, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1082
    .local v1, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1083
    .local v2, "colspan":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_18

    goto :goto_13

    .line 1085
    :cond_18
    const/4 v10, 0x0

    .line 1086
    .local v10, "extraWidth":F
    iget v11, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .local v11, "column":I
    add-int v12, v11, v2

    .local v12, "nn":I
    :goto_11
    if-ge v11, v12, :cond_19

    .line 1087
    aget v13, v30, v11

    aget v14, v4, v11

    sub-float/2addr v13, v14

    add-float/2addr v10, v13

    .line 1086
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 1088
    .end local v11    # "column":I
    .end local v12    # "nn":I
    :cond_19
    iget v11, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v11, v12

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    sub-float/2addr v10, v11

    .line 1090
    int-to-float v11, v2

    div-float/2addr v10, v11

    .line 1091
    cmpl-float v11, v10, v12

    if-lez v11, :cond_1a

    .line 1092
    iget v11, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .restart local v11    # "column":I
    add-int v12, v11, v2

    .restart local v12    # "nn":I
    :goto_12
    if-ge v11, v12, :cond_1a

    .line 1093
    aget v13, v4, v11

    add-float/2addr v13, v10

    aput v13, v4, v11

    .line 1092
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 1080
    .end local v1    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v2    # "colspan":I
    .end local v10    # "extraWidth":F
    .end local v11    # "column":I
    .end local v12    # "nn":I
    :cond_1a
    :goto_13
    add-int/lit8 v0, v0, 0x1

    move/from16 v28, v8

    move-object/from16 v26, v9

    goto :goto_10

    .end local v9    # "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    .restart local v26    # "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    :cond_1b
    move-object/from16 v9, v26

    .line 1098
    .end local v0    # "i":I
    .end local v26    # "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    .restart local v9    # "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    move/from16 v0, v33

    .local v0, "tableWidth":F
    move/from16 v1, v25

    .line 1099
    .local v1, "tableHeight":F
    const/4 v2, 0x0

    move v10, v0

    .end local v0    # "tableWidth":F
    .local v2, "i":I
    .local v10, "tableWidth":F
    :goto_14
    if-ge v2, v6, :cond_1c

    .line 1100
    aget v0, v4, v2

    add-float/2addr v10, v0

    .line 1099
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1101
    .end local v2    # "i":I
    :cond_1c
    const/4 v0, 0x0

    move v11, v1

    .end local v1    # "tableHeight":F
    .local v0, "i":I
    .local v11, "tableHeight":F
    :goto_15
    if-ge v0, v7, :cond_1d

    .line 1102
    aget v1, v3, v0

    add-float/2addr v11, v1

    .line 1101
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1105
    .end local v0    # "i":I
    :cond_1d
    move-object/from16 v12, p0

    iget v0, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 1106
    .local v0, "align":I
    add-float v1, p1, v20

    .line 1107
    .local v1, "x":F
    and-int/lit8 v2, v0, 0x10

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_1e

    .line 1108
    sub-float v2, p3, v10

    add-float/2addr v1, v2

    move v13, v1

    goto :goto_16

    .line 1109
    :cond_1e
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_1f

    .line 1110
    sub-float v2, p3, v10

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    move v13, v1

    goto :goto_16

    .line 1109
    :cond_1f
    move v13, v1

    .line 1112
    .end local v1    # "x":F
    .local v13, "x":F
    :goto_16
    add-float v1, p2, v19

    .line 1113
    .local v1, "y":F
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_20

    .line 1114
    sub-float v2, p4, v11

    add-float/2addr v1, v2

    move v14, v1

    goto :goto_17

    .line 1115
    :cond_20
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_21

    .line 1116
    sub-float v2, p4, v11

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    move v14, v1

    goto :goto_17

    .line 1115
    :cond_21
    move v14, v1

    .line 1119
    .end local v1    # "y":F
    .local v14, "y":F
    :goto_17
    move v1, v13

    .local v1, "currentX":F
    move v2, v14

    .line 1120
    .local v2, "currentY":F
    const/4 v15, 0x0

    move/from16 v36, v15

    move v15, v0

    move/from16 v0, v36

    .local v0, "i":I
    .local v15, "align":I
    :goto_18
    if-ge v0, v8, :cond_2c

    .line 1121
    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v5, v23

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1123
    .local v5, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    const/16 v23, 0x0

    .line 1124
    .local v23, "spannedCellWidth":F
    move/from16 v32, v6

    .end local v6    # "columns":I
    .restart local v32    # "columns":I
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    move/from16 v29, v7

    .end local v7    # "rows":I
    .local v6, "column":I
    .restart local v29    # "rows":I
    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v6

    .local v7, "nn":I
    :goto_19
    if-ge v6, v7, :cond_22

    .line 1125
    aget v28, v4, v6

    add-float v23, v23, v28

    .line 1124
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 1126
    .end local v6    # "column":I
    .end local v7    # "nn":I
    :cond_22
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v6, v7

    sub-float v23, v23, v6

    .line 1128
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    add-float/2addr v1, v6

    .line 1130
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .local v6, "fillX":F
    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 1131
    .local v7, "fillY":F
    const/16 v18, 0x0

    cmpl-float v28, v6, v18

    if-lez v28, :cond_23

    .line 1132
    move-object/from16 v28, v4

    .end local v4    # "columnWidth":[F
    .local v28, "columnWidth":[F
    mul-float v4, v23, v6

    move/from16 v34, v6

    .end local v6    # "fillX":F
    .local v34, "fillX":F
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move/from16 v35, v15

    .end local v15    # "align":I
    .local v35, "align":I
    iget-object v15, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 1133
    iget-object v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    .line 1134
    .local v4, "maxWidth":F
    const/4 v6, 0x0

    cmpl-float v15, v4, v6

    if-lez v15, :cond_24

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    goto :goto_1a

    .line 1131
    .end local v28    # "columnWidth":[F
    .end local v34    # "fillX":F
    .end local v35    # "align":I
    .local v4, "columnWidth":[F
    .restart local v6    # "fillX":F
    .restart local v15    # "align":I
    :cond_23
    move-object/from16 v28, v4

    move/from16 v34, v6

    move/from16 v35, v15

    .line 1136
    .end local v4    # "columnWidth":[F
    .end local v6    # "fillX":F
    .end local v15    # "align":I
    .restart local v28    # "columnWidth":[F
    .restart local v34    # "fillX":F
    .restart local v35    # "align":I
    :cond_24
    :goto_1a
    const/4 v4, 0x0

    cmpl-float v6, v7, v4

    if-lez v6, :cond_25

    .line 1137
    iget v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v4, v3, v4

    mul-float/2addr v4, v7

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float/2addr v4, v6

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v4, v6

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v15, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 1138
    iget-object v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    .line 1139
    .local v4, "maxHeight":F
    const/4 v6, 0x0

    cmpl-float v15, v4, v6

    if-lez v15, :cond_26

    iget v15, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    invoke-static {v15, v4}, Ljava/lang/Math;->min(FF)F

    move-result v15

    iput v15, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    goto :goto_1b

    .line 1136
    .end local v4    # "maxHeight":F
    :cond_25
    const/4 v6, 0x0

    .line 1142
    :cond_26
    :goto_1b
    iget-object v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1143
    .end local v35    # "align":I
    .restart local v15    # "align":I
    and-int/lit8 v4, v15, 0x8

    if-eqz v4, :cond_27

    .line 1144
    iput v1, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    goto :goto_1c

    .line 1145
    :cond_27
    and-int/lit8 v4, v15, 0x10

    if-eqz v4, :cond_28

    .line 1146
    add-float v4, v1, v23

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    sub-float/2addr v4, v6

    iput v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    goto :goto_1c

    .line 1148
    :cond_28
    iget v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    sub-float v4, v23, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v4, v1

    iput v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    .line 1150
    :goto_1c
    and-int/lit8 v4, v15, 0x2

    if-eqz v4, :cond_29

    .line 1151
    iget v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float/2addr v4, v2

    iput v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_1d

    .line 1152
    :cond_29
    and-int/lit8 v4, v15, 0x4

    if-eqz v4, :cond_2a

    .line 1153
    iget v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v4, v3, v4

    add-float/2addr v4, v2

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sub-float/2addr v4, v6

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v4, v6

    iput v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_1d

    .line 1155
    :cond_2a
    iget v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v4, v3, v4

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sub-float/2addr v4, v6

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float/2addr v4, v6

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v4, v2

    iput v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    .line 1157
    :goto_1d
    iget-boolean v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v4, :cond_2b

    .line 1158
    move v1, v13

    .line 1159
    iget v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v4, v3, v4

    add-float/2addr v2, v4

    goto :goto_1e

    .line 1161
    :cond_2b
    iget v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float v4, v23, v4

    add-float/2addr v1, v4

    .line 1120
    .end local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v7    # "fillY":F
    .end local v23    # "spannedCellWidth":F
    .end local v34    # "fillX":F
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    move v5, v6

    move-object/from16 v4, v28

    move/from16 v7, v29

    move/from16 v6, v32

    goto/16 :goto_18

    .end local v28    # "columnWidth":[F
    .end local v29    # "rows":I
    .end local v32    # "columns":I
    .local v4, "columnWidth":[F
    .local v6, "columns":I
    .local v7, "rows":I
    :cond_2c
    move-object/from16 v28, v4

    move/from16 v32, v6

    move/from16 v29, v7

    move/from16 v35, v15

    .line 1165
    .end local v0    # "i":I
    .end local v4    # "columnWidth":[F
    .end local v6    # "columns":I
    .end local v7    # "rows":I
    .end local v15    # "align":I
    .restart local v28    # "columnWidth":[F
    .restart local v29    # "rows":I
    .restart local v32    # "columns":I
    .restart local v35    # "align":I
    iget-object v0, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v4, :cond_2d

    return-void

    .line 1166
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearDebugRects()V

    .line 1167
    move v6, v13

    .line 1168
    .end local v1    # "currentX":F
    .local v6, "currentX":F
    move v7, v14

    .line 1169
    .end local v2    # "currentY":F
    .local v7, "currentY":F
    iget-object v0, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_2f

    iget-object v0, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v1, :cond_2e

    goto :goto_1f

    :cond_2e
    move-object/from16 v18, v3

    move/from16 v15, v21

    move-object/from16 v21, v28

    goto :goto_20

    .line 1170
    :cond_2f
    :goto_1f
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v15, v21

    .end local v21    # "totalGrowWidth":F
    .local v15, "totalGrowWidth":F
    move/from16 v2, p2

    move-object/from16 v18, v3

    .end local v3    # "rowHeight":[F
    .local v18, "rowHeight":[F
    move/from16 v3, p3

    move-object/from16 v21, v28

    .end local v28    # "columnWidth":[F
    .local v21, "columnWidth":[F
    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1171
    sub-float v3, v10, v33

    sub-float v4, v11, v25

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    move v1, v13

    move v2, v14

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1173
    :goto_20
    const/4 v0, 0x0

    move/from16 v23, v7

    move v7, v6

    move v6, v0

    .local v6, "i":I
    .local v7, "currentX":F
    .local v23, "currentY":F
    :goto_21
    if-ge v6, v8, :cond_36

    .line 1174
    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1177
    .restart local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v0, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_31

    iget-object v0, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v1, :cond_30

    goto :goto_22

    :cond_30
    move/from16 v28, v8

    move-object v8, v5

    goto :goto_23

    .line 1178
    :cond_31
    :goto_22
    iget v1, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    iget v2, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    iget v3, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    iget v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sget-object v26, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugActorColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    move/from16 v28, v8

    move-object v8, v5

    .end local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .local v8, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .local v28, "cellCount":I
    move-object/from16 v5, v26

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1181
    :goto_23
    const/4 v0, 0x0

    .line 1182
    .local v0, "spannedCellWidth":F
    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .local v1, "column":I
    iget-object v2, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    .local v2, "nn":I
    :goto_24
    if-ge v1, v2, :cond_32

    .line 1183
    aget v3, v21, v1

    add-float/2addr v0, v3

    .line 1182
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 1184
    .end local v1    # "column":I
    .end local v2    # "nn":I
    :cond_32
    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v2, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v1, v2

    sub-float v26, v0, v1

    .line 1185
    .end local v0    # "spannedCellWidth":F
    .local v26, "spannedCellWidth":F
    iget v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    add-float/2addr v7, v0

    .line 1186
    iget-object v0, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_33

    iget-object v0, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v1, :cond_34

    .line 1187
    :cond_33
    iget v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float v2, v23, v0

    iget v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v0, v18, v0

    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float/2addr v0, v1

    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float v4, v0, v1

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugCellColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v3, v26

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1191
    :cond_34
    iget-boolean v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v0, :cond_35

    .line 1192
    move v0, v13

    .line 1193
    .end local v7    # "currentX":F
    .local v0, "currentX":F
    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v1, v18, v1

    add-float v23, v23, v1

    move v7, v0

    goto :goto_25

    .line 1195
    .end local v0    # "currentX":F
    .restart local v7    # "currentX":F
    :cond_35
    iget v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float v0, v26, v0

    add-float/2addr v7, v0

    .line 1173
    .end local v8    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v26    # "spannedCellWidth":F
    :goto_25
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v28

    goto/16 :goto_21

    .line 1197
    .end local v6    # "i":I
    .end local v28    # "cellCount":I
    .local v8, "cellCount":I
    :cond_36
    return-void
.end method

.method private obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    .line 95
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 96
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setTable(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    .line 97
    return-object v0
.end method


# virtual methods
.method public add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    .line 280
    const/4 v0, 0x0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TT;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 195
    .local p1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 196
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 199
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 200
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 201
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 202
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iput-boolean v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 206
    .local v1, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 207
    .local v3, "cellCount":I
    if-lez v3, :cond_5

    .line 209
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 210
    .local v4, "lastCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-boolean v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-nez v5, :cond_1

    .line 211
    iget v2, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 212
    iget v2, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    goto :goto_0

    .line 214
    :cond_1
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 215
    iget v2, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    .line 218
    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    if-lez v2, :cond_4

    .line 220
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 221
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 222
    .local v5, "other":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .local v6, "column":I
    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v6

    .local v7, "nn":I
    :goto_2
    if-ge v6, v7, :cond_3

    .line 223
    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    if-ne v6, v8, :cond_2

    .line 224
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    .line 225
    goto :goto_3

    .line 222
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 220
    .end local v5    # "other":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v6    # "column":I
    .end local v7    # "nn":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 230
    .end local v2    # "i":I
    .end local v4    # "lastCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_4
    :goto_3
    goto :goto_4

    .line 231
    :cond_5
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 232
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    .line 234
    :goto_4
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 236
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 237
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_6

    .line 238
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 239
    .local v2, "columnCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    if-eqz v2, :cond_6

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->merge(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 241
    .end local v2    # "columnCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_6
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->merge(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 243
    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 245
    :cond_7
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "labelStyleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "colorName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v3, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs add([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 3
    .param p1, "actors"    # [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 250
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-object p0
.end method

.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0
    .param p1, "align"    # I

    .line 535
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 536
    return-object p0
.end method

.method public background(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0
    .param p1, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 154
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 155
    return-object p0
.end method

.method public background(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0
    .param p1, "drawableName"    # Ljava/lang/String;

    .line 160
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Ljava/lang/String;)V

    .line 161
    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .line 561
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 562
    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 563
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .line 541
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 542
    return-object p0
.end method

.method public clearChildren()V
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 308
    .local v0, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 309
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 310
    .local v2, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 311
    .local v3, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 308
    .end local v2    # "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v3    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 313
    .end local v1    # "i":I
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 314
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 315
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 316
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .line 317
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v2, :cond_2

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 318
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 319
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 321
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->clearChildren()V

    .line 322
    return-void
.end method

.method public columnDefaults(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 4
    .param p1, "column"    # I

    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 376
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :goto_0
    if-nez v0, :cond_3

    .line 377
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->clear()V

    .line 379
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v2, :cond_2

    .line 380
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_1

    .line 381
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 382
    .end local v2    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 384
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    .line 386
    :cond_3
    :goto_2
    return-object v0
.end method

.method public bridge synthetic debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method public debug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .line 578
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 579
    return-object p0
.end method

.method public debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .param p1, "debug"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 619
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 620
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, p1, :cond_2

    .line 621
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 622
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne p1, v0, :cond_1

    .line 623
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearDebugRects()V

    goto :goto_1

    .line 625
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 627
    :cond_2
    :goto_1
    return-object p0
.end method

.method public debugActor()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2

    .line 609
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_0

    .line 611
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 612
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 614
    :cond_0
    return-object p0
.end method

.method public bridge synthetic debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method public debugAll()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .line 583
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 584
    return-object p0
.end method

.method public debugCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2

    .line 599
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 600
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_0

    .line 601
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 602
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 604
    :cond_0
    return-object p0
.end method

.method public debugTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2

    .line 589
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 590
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_0

    .line 591
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 592
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 594
    :cond_0
    return-object p0
.end method

.method public defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 5
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .line 101
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->validate()V

    .line 102
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 105
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .local v0, "padLeft":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 108
    .local v1, "padBottom":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 109
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 108
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipBegin(FFFF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 111
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 112
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipEnd()V

    .line 114
    .end local v0    # "padLeft":F
    .end local v1    # "padBottom":F
    :cond_0
    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 116
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getY()F

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 119
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 121
    :goto_1
    return-void
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V
    .locals 11
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 128
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 129
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v9

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v10

    move-object v6, p1

    move v7, p3

    move v8, p4

    invoke-interface/range {v5 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 130
    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 5
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 1214
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1215
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1216
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1217
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v0, :cond_2

    .line 1218
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    .line 1219
    const/4 v0, 0x0

    .local v0, "x":F
    const/4 v1, 0x0

    .local v1, "y":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v2

    .local v2, "width":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v3

    .line 1220
    .local v3, "height":F
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v4, :cond_0

    .line 1221
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 1222
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 1223
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    add-float/2addr v4, v0

    sub-float/2addr v2, v4

    .line 1224
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    add-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 1226
    :cond_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipBegin(FFFF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1227
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1228
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipEnd()V

    .line 1230
    .end local v0    # "x":F
    .end local v1    # "y":F
    .end local v2    # "width":F
    .end local v3    # "height":F
    :cond_1
    goto :goto_0

    .line 1231
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1232
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    goto :goto_1

    .line 1234
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1235
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1237
    :goto_1
    return-void
.end method

.method protected drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 0
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 1240
    return-void
.end method

.method public getAlign()I
    .locals 1

    .line 677
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return v0
.end method

.method public getBackground()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TT;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 391
    .local p1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 392
    .local v0, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 393
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 394
    .local v3, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v4, p1, :cond_0

    return-object v3

    .line 392
    .end local v3    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCells()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getClip()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    return v0
.end method

.method public getColumnMinWidth(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    .line 740
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    aget v0, v0, p1

    return v0
.end method

.method public getColumnPrefWidth(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    .line 746
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    aget v0, v0, p1

    return v0
.end method

.method public getColumnWidth(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    .line 734
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 735
    :cond_0
    aget v0, v0, p1

    return v0
.end method

.method public getColumns()I
    .locals 1

    .line 711
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 425
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 420
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    return v0
.end method

.method public getPadBottom()F
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    .line 412
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 413
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    .line 414
    .local v0, "height":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 415
    :cond_1
    return v0
.end method

.method public getPrefWidth()F
    .locals 2

    .line 405
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 406
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 407
    .local v0, "width":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 408
    :cond_1
    return v0
.end method

.method public getRow(F)I
    .locals 8
    .param p1, "y"    # F

    .line 683
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 684
    .local v0, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    const/4 v1, 0x0

    .line 685
    .local v1, "row":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v2

    add-float/2addr p1, v2

    .line 686
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 687
    .local v3, "n":I
    if-nez v3, :cond_0

    const/4 v4, -0x1

    return v4

    .line 688
    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v4, 0x0

    return v4

    .line 689
    :cond_1
    :goto_0
    if-ge v2, v3, :cond_4

    .line 690
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 691
    .local v2, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v6, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    iget v7, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float/2addr v6, v7

    cmpg-float v6, v6, p1

    if-gez v6, :cond_2

    move v2, v5

    goto :goto_1

    .line 692
    :cond_2
    iget-boolean v6, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 693
    .end local v2    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_3
    move v2, v5

    goto :goto_0

    .line 694
    .end local v5    # "i":I
    .local v2, "i":I
    :cond_4
    :goto_1
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    sub-int/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method public getRowHeight(I)F
    .locals 1
    .param p1, "rowIndex"    # I

    .line 716
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 717
    :cond_0
    aget v0, v0, p1

    return v0
.end method

.method public getRowMinHeight(I)F
    .locals 1
    .param p1, "rowIndex"    # I

    .line 722
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    aget v0, v0, p1

    return v0
.end method

.method public getRowPrefHeight(I)F
    .locals 1
    .param p1, "rowIndex"    # I

    .line 728
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    aget v0, v0, p1

    return v0
.end method

.method public getRows()I
    .locals 1

    .line 707
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    return v0
.end method

.method public getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 1

    .line 1260
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v0
.end method

.method public getTableDebug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    return-object v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "touchable"    # Z

    .line 169
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v0, :cond_2

    .line 170
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 171
    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v2

    cmpl-float v2, p1, v2

    if-gez v2, :cond_1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2

    :cond_1
    return-object v0

    .line 173
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 190
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 191
    return-void
.end method

.method public layout()V
    .locals 11

    .line 758
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v0

    .line 759
    .local v0, "width":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v1

    .line 761
    .local v1, "height":F
    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout(FFFF)V

    .line 763
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 764
    .local v2, "cells":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;>;"
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    if-eqz v3, :cond_2

    .line 765
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 766
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 767
    .local v5, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 768
    .local v6, "actorWidth":F
    iget v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 769
    .local v7, "actorHeight":F
    iget v8, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 770
    .local v8, "actorX":F
    iget v9, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v1, v9

    sub-float/2addr v9, v7

    .line 771
    .local v9, "actorY":F
    invoke-virtual {v5, v8, v9, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setActorBounds(FFFF)V

    .line 772
    iget-object v10, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 773
    .local v10, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v10, :cond_0

    invoke-virtual {v10, v8, v9, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 765
    .end local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v6    # "actorWidth":F
    .end local v7    # "actorHeight":F
    .end local v8    # "actorX":F
    .end local v9    # "actorY":F
    .end local v10    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_1
    goto :goto_2

    .line 776
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v4    # "n":I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 777
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 778
    .restart local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 779
    .local v6, "actorHeight":F
    iget v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    sub-float v7, v1, v7

    sub-float/2addr v7, v6

    .line 780
    .local v7, "actorY":F
    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setActorY(F)V

    .line 781
    iget-object v8, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 782
    .local v8, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v8, :cond_3

    iget v9, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    iget v10, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    invoke-virtual {v8, v9, v7, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 776
    .end local v5    # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v6    # "actorHeight":F
    .end local v7    # "actorY":F
    .end local v8    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 786
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v3

    .line 787
    .local v3, "children":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v5, "n":I
    :goto_3
    if-ge v4, v5, :cond_6

    .line 788
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 789
    .local v6, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v7, v6, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v7, :cond_5

    move-object v7, v6

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 787
    .end local v6    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 791
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_6
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .line 554
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 555
    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 556
    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .param p1, "pad"    # F

    .line 491
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 492
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .param p1, "top"    # F
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F

    .line 496
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 497
    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 498
    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 499
    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 501
    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2
    .param p1, "pad"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 435
    if-eqz p1, :cond_0

    .line 436
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 437
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 438
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 439
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 441
    return-object p0

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2
    .param p1, "top"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "left"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p3, "bottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p4, "right"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 445
    if-eqz p1, :cond_3

    .line 446
    if-eqz p2, :cond_2

    .line 447
    if-eqz p3, :cond_1

    .line 448
    if-eqz p4, :cond_0

    .line 449
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 450
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 451
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 452
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 454
    return-object p0

    .line 448
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "right cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "top cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .param p1, "padBottom"    # F

    .line 520
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 522
    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2
    .param p1, "padBottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 475
    if-eqz p1, :cond_0

    .line 476
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 478
    return-object p0

    .line 475
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padBottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .param p1, "padLeft"    # F

    .line 513
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 515
    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2
    .param p1, "padLeft"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 467
    if-eqz p1, :cond_0

    .line 468
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 470
    return-object p0

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padLeft cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .param p1, "padRight"    # F

    .line 527
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 529
    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2
    .param p1, "padRight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 483
    if-eqz p1, :cond_0

    .line 484
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 486
    return-object p0

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padRight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .param p1, "padTop"    # F

    .line 506
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 508
    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2
    .param p1, "padTop"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 459
    if-eqz p1, :cond_0

    .line 460
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 462
    return-object p0

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padTop cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result v0

    return v0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "unfocus"    # Z

    .line 299
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 300
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 301
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 302
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public reset()V
    .locals 4

    .line 327
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearChildren()V

    .line 328
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 329
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 330
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 331
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 332
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 333
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->reset()V

    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 336
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 337
    .local v2, "columnCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 335
    .end local v2    # "columnCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 340
    return-void
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .line 568
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 569
    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 570
    return-object p0
.end method

.method public row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_2

    .line 346
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    if-nez v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->endRow()V

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 352
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 354
    :cond_3
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 355
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->clear()V

    .line 356
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 10
    .param p1, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v0

    .local v0, "padTopOld":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result v1

    .local v1, "padLeftOld":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadBottom()F

    move-result v2

    .local v2, "padBottomOld":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v3

    .line 144
    .local v3, "padRightOld":F
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 145
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v4

    .local v4, "padTopNew":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result v5

    .local v5, "padLeftNew":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadBottom()F

    move-result v6

    .local v6, "padBottomNew":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v7

    .line 146
    .local v7, "padRightNew":F
    add-float v8, v0, v2

    add-float v9, v4, v6

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    add-float v8, v1, v3

    add-float v9, v5, v7

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    cmpl-float v8, v0, v4

    if-nez v8, :cond_2

    cmpl-float v8, v1, v5

    if-nez v8, :cond_2

    cmpl-float v8, v2, v6

    if-nez v8, :cond_2

    cmpl-float v8, v3, v7

    if-eqz v8, :cond_4

    .line 149
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    goto :goto_1

    .line 147
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidateHierarchy()V

    .line 150
    :cond_4
    :goto_1
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 2
    .param p1, "drawableName"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 138
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClip(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 179
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    .line 180
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTransform(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 182
    return-void
.end method

.method public setDebug(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 574
    if-eqz p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 575
    return-void
.end method

.method public setRound(Z)V
    .locals 0
    .param p1, "round"    # Z

    .line 703
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    .line 704
    return-void
.end method

.method public setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 698
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 699
    return-void
.end method

.method public varargs stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 4
    .param p1, "actors"    # [Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    .line 287
    .local v0, "stack":Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
    if-eqz p1, :cond_0

    .line 288
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 289
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    return-object v1
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .line 547
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 548
    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 549
    return-object p0
.end method
