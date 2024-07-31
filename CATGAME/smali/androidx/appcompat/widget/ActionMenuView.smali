.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
.implements Landroidx/appcompat/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$LayoutParams;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;,
        Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 81
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 84
    .local v1, "density":F
    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    .line 85
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 86
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 87
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 88
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 15
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .line 405
    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 407
    .local v2, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int v3, v3, p4

    .line 409
    .local v3, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 410
    .local v4, "childHeightMode":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 412
    .local v5, "childHeightSpec":I
    instance-of v6, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_0

    .line 413
    move-object v6, v0

    check-cast v6, Landroidx/appcompat/view/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 414
    .local v6, "itemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    .line 416
    .local v9, "hasText":Z
    :goto_1
    const/4 v10, 0x0

    .line 417
    .local v10, "cellsUsed":I
    if-lez v1, :cond_4

    const/4 v11, 0x2

    if-eqz v9, :cond_2

    if-lt v1, v11, :cond_4

    .line 418
    :cond_2
    mul-int v12, p1, v1

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 420
    .local v12, "childWidthSpec":I
    invoke-virtual {p0, v12, v5}, Landroid/view/View;->measure(II)V

    .line 422
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 423
    .local v13, "measuredWidth":I
    div-int v10, v13, p1

    .line 424
    rem-int v14, v13, p1

    if-eqz v14, :cond_3

    add-int/lit8 v10, v10, 0x1

    .line 425
    :cond_3
    if-eqz v9, :cond_4

    if-ge v10, v11, :cond_4

    const/4 v10, 0x2

    .line 428
    .end local v12    # "childWidthSpec":I
    .end local v13    # "measuredWidth":I
    :cond_4
    iget-boolean v11, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v9, :cond_5

    move v7, v8

    .line 429
    .local v7, "expandable":Z
    :cond_5
    iput-boolean v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 431
    iput v10, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 432
    mul-int v8, v10, p1

    .line 433
    .local v8, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v5}, Landroid/view/View;->measure(II)V

    .line 435
    return v10
.end method

.method private onMeasureExactFormat(II)V
    .locals 40
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 179
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 180
    .local v1, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 181
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 183
    .local v3, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 184
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 186
    .local v5, "heightPadding":I
    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    .line 189
    .local v6, "itemHeightSpec":I
    sub-int/2addr v2, v4

    .line 192
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    div-int v9, v2, v8

    .line 193
    .local v9, "cellCount":I
    rem-int v10, v2, v8

    .line 195
    .local v10, "cellSizeRemaining":I
    const/4 v11, 0x0

    if-nez v9, :cond_0

    .line 197
    invoke-virtual {v0, v2, v11}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 198
    return-void

    .line 201
    :cond_0
    div-int v12, v10, v9

    add-int/2addr v8, v12

    .line 203
    .local v8, "cellSize":I
    move v12, v9

    .line 204
    .local v12, "cellsRemaining":I
    const/4 v13, 0x0

    .line 205
    .local v13, "maxChildHeight":I
    const/4 v14, 0x0

    .line 206
    .local v14, "maxCellsUsed":I
    const/4 v15, 0x0

    .line 207
    .local v15, "expandableItemCount":I
    const/16 v16, 0x0

    .line 208
    .local v16, "visibleItemCount":I
    const/16 v17, 0x0

    .line 211
    .local v17, "hasOverflow":Z
    const-wide/16 v18, 0x0

    .line 213
    .local v18, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v11

    .line 214
    .local v11, "childCount":I
    const/16 v21, 0x0

    move/from16 v38, v16

    move/from16 v16, v3

    move/from16 v3, v38

    move/from16 v39, v21

    move/from16 v21, v4

    move/from16 v4, v39

    .local v3, "visibleItemCount":I
    .local v4, "i":I
    .local v16, "heightSize":I
    .local v21, "widthPadding":I
    :goto_0
    if-ge v4, v11, :cond_8

    .line 215
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 216
    .local v7, "child":Landroid/view/View;
    move/from16 v23, v9

    .end local v9    # "cellCount":I
    .local v23, "cellCount":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v24, v10

    .end local v10    # "cellSizeRemaining":I
    .local v24, "cellSizeRemaining":I
    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    goto/16 :goto_4

    .line 218
    :cond_1
    instance-of v9, v7, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 219
    .local v9, "isGeneratedItem":Z
    add-int/lit8 v3, v3, 0x1

    .line 221
    if-eqz v9, :cond_2

    .line 224
    iget v10, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "visibleItemCount":I
    .local v25, "visibleItemCount":I
    invoke-virtual {v7, v10, v3, v10, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 221
    .end local v25    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_2
    move/from16 v25, v3

    const/4 v3, 0x0

    .line 227
    .end local v3    # "visibleItemCount":I
    .restart local v25    # "visibleItemCount":I
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 228
    .local v10, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iput-boolean v3, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 229
    iput v3, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 230
    iput v3, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 231
    iput-boolean v3, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 232
    iput v3, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 233
    iput v3, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 234
    if-eqz v9, :cond_3

    move-object v3, v7

    check-cast v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 237
    iget-boolean v3, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v12

    .line 239
    .local v3, "cellsAvailable":I
    :goto_3
    move/from16 v26, v9

    .end local v9    # "isGeneratedItem":Z
    .local v26, "isGeneratedItem":Z
    invoke-static {v7, v8, v3, v6, v5}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 242
    .local v9, "cellsUsed":I
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 243
    move/from16 v27, v3

    .end local v3    # "cellsAvailable":I
    .local v27, "cellsAvailable":I
    iget-boolean v3, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v3, :cond_5

    add-int/lit8 v15, v15, 0x1

    .line 244
    :cond_5
    iget-boolean v3, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_6

    const/16 v17, 0x1

    .line 246
    :cond_6
    sub-int/2addr v12, v9

    .line 247
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 248
    .end local v13    # "maxChildHeight":I
    .local v3, "maxChildHeight":I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_7

    shl-int/2addr v13, v4

    move/from16 v28, v9

    move-object/from16 v22, v10

    .end local v9    # "cellsUsed":I
    .end local v10    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .local v22, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .local v28, "cellsUsed":I
    int-to-long v9, v13

    or-long v9, v18, v9

    move v13, v3

    move-wide/from16 v18, v9

    move/from16 v3, v25

    .end local v18    # "smallestItemsAt":J
    .local v9, "smallestItemsAt":J
    goto :goto_4

    .end local v22    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v28    # "cellsUsed":I
    .local v9, "cellsUsed":I
    .restart local v10    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .restart local v18    # "smallestItemsAt":J
    :cond_7
    move/from16 v28, v9

    move-object/from16 v22, v10

    .end local v9    # "cellsUsed":I
    .end local v10    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .restart local v22    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .restart local v28    # "cellsUsed":I
    move v13, v3

    move/from16 v3, v25

    .line 214
    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v25    # "visibleItemCount":I
    .end local v26    # "isGeneratedItem":Z
    .end local v27    # "cellsAvailable":I
    .end local v28    # "cellsUsed":I
    .local v3, "visibleItemCount":I
    .restart local v13    # "maxChildHeight":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, p2

    move/from16 v9, v23

    move/from16 v10, v24

    goto/16 :goto_0

    .end local v23    # "cellCount":I
    .end local v24    # "cellSizeRemaining":I
    .local v9, "cellCount":I
    .local v10, "cellSizeRemaining":I
    :cond_8
    move/from16 v23, v9

    move/from16 v24, v10

    .line 253
    .end local v4    # "i":I
    .end local v9    # "cellCount":I
    .end local v10    # "cellSizeRemaining":I
    .restart local v23    # "cellCount":I
    .restart local v24    # "cellSizeRemaining":I
    const/4 v4, 0x2

    if-eqz v17, :cond_9

    if-ne v3, v4, :cond_9

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    .line 258
    .local v7, "centerSingleExpandedItem":Z
    :goto_5
    const/4 v9, 0x0

    .line 259
    .local v9, "needsExpansion":Z
    :goto_6
    const-wide/16 v25, 0x1

    const-wide/16 v27, 0x0

    if-lez v15, :cond_13

    if-lez v12, :cond_13

    .line 260
    const v10, 0x7fffffff

    .line 261
    .local v10, "minCells":I
    const-wide/16 v29, 0x0

    .line 262
    .local v29, "minCellsAt":J
    const/16 v31, 0x0

    .line 263
    .local v31, "minCellsItemCount":I
    const/16 v32, 0x0

    move/from16 v4, v31

    move/from16 v38, v32

    move/from16 v32, v5

    move/from16 v5, v38

    .end local v31    # "minCellsItemCount":I
    .local v4, "minCellsItemCount":I
    .local v5, "i":I
    .local v32, "heightPadding":I
    :goto_7
    if-ge v5, v11, :cond_d

    .line 264
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    .line 265
    .local v33, "child":Landroid/view/View;
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    move/from16 v35, v9

    .end local v9    # "needsExpansion":Z
    .local v35, "needsExpansion":Z
    move-object/from16 v9, v34

    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 268
    .local v9, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move/from16 v34, v15

    .end local v15    # "expandableItemCount":I
    .local v34, "expandableItemCount":I
    iget-boolean v15, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v15, :cond_a

    goto :goto_8

    .line 271
    :cond_a
    iget v15, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v15, v10, :cond_b

    .line 272
    iget v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 273
    shl-long v29, v25, v5

    .line 274
    const/4 v4, 0x1

    goto :goto_8

    .line 275
    :cond_b
    iget v15, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v15, v10, :cond_c

    .line 276
    shl-long v36, v25, v5

    or-long v29, v29, v36

    .line 277
    add-int/lit8 v4, v4, 0x1

    .line 263
    .end local v9    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v33    # "child":Landroid/view/View;
    :cond_c
    :goto_8
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v34

    move/from16 v9, v35

    goto :goto_7

    .end local v34    # "expandableItemCount":I
    .end local v35    # "needsExpansion":Z
    .local v9, "needsExpansion":Z
    .restart local v15    # "expandableItemCount":I
    :cond_d
    move/from16 v35, v9

    move/from16 v34, v15

    .line 282
    .end local v5    # "i":I
    .end local v9    # "needsExpansion":Z
    .end local v15    # "expandableItemCount":I
    .restart local v34    # "expandableItemCount":I
    .restart local v35    # "needsExpansion":Z
    or-long v18, v18, v29

    .line 284
    if-le v4, v12, :cond_e

    move/from16 v36, v1

    move/from16 v37, v2

    goto/16 :goto_b

    .line 287
    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 289
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9
    if-ge v5, v11, :cond_12

    .line 290
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 291
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 292
    .local v15, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move/from16 v33, v4

    const/16 v22, 0x1

    .end local v4    # "minCellsItemCount":I
    .local v33, "minCellsItemCount":I
    shl-int v4, v22, v5

    move/from16 v36, v1

    move/from16 v37, v2

    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .local v36, "heightMode":I
    .local v37, "widthSize":I
    int-to-long v1, v4

    and-long v1, v29, v1

    cmp-long v1, v1, v27

    if-nez v1, :cond_f

    .line 294
    iget v1, v15, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v1, v10, :cond_11

    shl-int v1, v22, v5

    int-to-long v1, v1

    or-long v18, v18, v1

    goto :goto_a

    .line 298
    :cond_f
    if-eqz v7, :cond_10

    iget-boolean v1, v15, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    if-ne v12, v1, :cond_10

    .line 300
    iget v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int v2, v1, v8

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 302
    :cond_10
    iget v1, v15, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v15, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 303
    iput-boolean v2, v15, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 304
    add-int/lit8 v12, v12, -0x1

    .line 289
    .end local v9    # "child":Landroid/view/View;
    .end local v15    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_11
    :goto_a
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v33

    move/from16 v1, v36

    move/from16 v2, v37

    goto :goto_9

    .end local v33    # "minCellsItemCount":I
    .end local v36    # "heightMode":I
    .end local v37    # "widthSize":I
    .restart local v1    # "heightMode":I
    .restart local v2    # "widthSize":I
    .restart local v4    # "minCellsItemCount":I
    :cond_12
    move/from16 v36, v1

    move/from16 v37, v2

    move/from16 v33, v4

    .line 307
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v4    # "minCellsItemCount":I
    .end local v5    # "i":I
    .restart local v33    # "minCellsItemCount":I
    .restart local v36    # "heightMode":I
    .restart local v37    # "widthSize":I
    const/4 v9, 0x1

    .line 308
    .end local v10    # "minCells":I
    .end local v29    # "minCellsAt":J
    .end local v33    # "minCellsItemCount":I
    .end local v35    # "needsExpansion":Z
    .local v9, "needsExpansion":Z
    move/from16 v5, v32

    move/from16 v15, v34

    const/4 v4, 0x2

    goto/16 :goto_6

    .line 259
    .end local v32    # "heightPadding":I
    .end local v34    # "expandableItemCount":I
    .end local v36    # "heightMode":I
    .end local v37    # "widthSize":I
    .restart local v1    # "heightMode":I
    .restart local v2    # "widthSize":I
    .local v5, "heightPadding":I
    .local v15, "expandableItemCount":I
    :cond_13
    move/from16 v36, v1

    move/from16 v37, v2

    move/from16 v32, v5

    move/from16 v35, v9

    move/from16 v34, v15

    .line 313
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v5    # "heightPadding":I
    .end local v9    # "needsExpansion":Z
    .end local v15    # "expandableItemCount":I
    .restart local v32    # "heightPadding":I
    .restart local v34    # "expandableItemCount":I
    .restart local v35    # "needsExpansion":Z
    .restart local v36    # "heightMode":I
    .restart local v37    # "widthSize":I
    :goto_b
    if-nez v17, :cond_14

    const/4 v1, 0x1

    if-ne v3, v1, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    .line 314
    .local v1, "singleItem":Z
    :goto_c
    if-lez v12, :cond_23

    cmp-long v2, v18, v27

    if-eqz v2, :cond_23

    add-int/lit8 v2, v3, -0x1

    if-lt v12, v2, :cond_16

    if-nez v1, :cond_16

    const/4 v2, 0x1

    if-le v14, v2, :cond_15

    goto :goto_d

    :cond_15
    move v10, v1

    goto/16 :goto_13

    .line 316
    :cond_16
    :goto_d
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    int-to-float v2, v2

    .line 318
    .local v2, "expandCount":F
    if-nez v1, :cond_19

    .line 320
    and-long v4, v18, v25

    cmp-long v4, v4, v27

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_17

    .line 321
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 322
    .local v9, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v10, :cond_18

    sub-float/2addr v2, v5

    goto :goto_e

    .line 320
    .end local v9    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_17
    const/4 v4, 0x0

    .line 324
    :cond_18
    :goto_e
    add-int/lit8 v9, v11, -0x1

    const/4 v10, 0x1

    shl-int v9, v10, v9

    int-to-long v9, v9

    and-long v9, v18, v9

    cmp-long v9, v9, v27

    if-eqz v9, :cond_1a

    .line 325
    add-int/lit8 v9, v11, -0x1

    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 326
    .restart local v9    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v10, :cond_1a

    sub-float/2addr v2, v5

    goto :goto_f

    .line 318
    .end local v9    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_19
    const/4 v4, 0x0

    .line 330
    :cond_1a
    :goto_f
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1b

    .line 331
    mul-int v4, v12, v8

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    goto :goto_10

    :cond_1b
    nop

    .line 333
    .local v4, "extraPixels":I
    :goto_10
    const/4 v5, 0x0

    move/from16 v9, v35

    .end local v35    # "needsExpansion":Z
    .local v5, "i":I
    .local v9, "needsExpansion":Z
    :goto_11
    if-ge v5, v11, :cond_22

    .line 334
    const/4 v10, 0x1

    shl-int v15, v10, v5

    move v10, v1

    move/from16 v20, v2

    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .local v10, "singleItem":Z
    .local v20, "expandCount":F
    int-to-long v1, v15

    and-long v1, v18, v1

    cmp-long v1, v1, v27

    if-nez v1, :cond_1c

    const/16 v25, 0x2

    goto :goto_12

    .line 336
    :cond_1c
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 337
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 338
    .local v2, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    instance-of v15, v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v15, :cond_1e

    .line 340
    iput v4, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 341
    const/4 v15, 0x1

    iput-boolean v15, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 342
    if-nez v5, :cond_1d

    iget-boolean v15, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v15, :cond_1d

    .line 345
    neg-int v15, v4

    const/16 v25, 0x2

    div-int/lit8 v15, v15, 0x2

    iput v15, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 347
    :cond_1d
    const/4 v9, 0x1

    const/16 v25, 0x2

    goto :goto_12

    .line 348
    :cond_1e
    iget-boolean v15, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_1f

    .line 349
    iput v4, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 350
    const/4 v15, 0x1

    iput-boolean v15, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 351
    neg-int v15, v4

    const/16 v25, 0x2

    div-int/lit8 v15, v15, 0x2

    iput v15, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 352
    const/4 v9, 0x1

    goto :goto_12

    .line 357
    :cond_1f
    const/16 v25, 0x2

    if-eqz v5, :cond_20

    .line 358
    div-int/lit8 v15, v4, 0x2

    iput v15, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 360
    :cond_20
    add-int/lit8 v15, v11, -0x1

    if-eq v5, v15, :cond_21

    .line 361
    div-int/lit8 v15, v4, 0x2

    iput v15, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 333
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_21
    :goto_12
    add-int/lit8 v5, v5, 0x1

    move v1, v10

    move/from16 v2, v20

    goto :goto_11

    .end local v10    # "singleItem":Z
    .end local v20    # "expandCount":F
    .local v1, "singleItem":Z
    .local v2, "expandCount":F
    :cond_22
    move v10, v1

    move/from16 v20, v2

    .line 366
    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .end local v5    # "i":I
    .restart local v10    # "singleItem":Z
    .restart local v20    # "expandCount":F
    const/4 v12, 0x0

    goto :goto_14

    .line 314
    .end local v4    # "extraPixels":I
    .end local v9    # "needsExpansion":Z
    .end local v10    # "singleItem":Z
    .end local v20    # "expandCount":F
    .restart local v1    # "singleItem":Z
    .restart local v35    # "needsExpansion":Z
    :cond_23
    move v10, v1

    .line 370
    .end local v1    # "singleItem":Z
    .restart local v10    # "singleItem":Z
    :goto_13
    move/from16 v9, v35

    .end local v35    # "needsExpansion":Z
    .restart local v9    # "needsExpansion":Z
    :goto_14
    if-eqz v9, :cond_26

    .line 371
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v11, :cond_25

    .line 372
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 373
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 375
    .local v5, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v15, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v15, :cond_24

    move/from16 v22, v3

    goto :goto_16

    .line 377
    :cond_24
    iget v15, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v15, v8

    iget v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v15, v1

    .line 378
    .local v15, "width":I
    move/from16 v22, v3

    const/high16 v1, 0x40000000    # 2.0f

    .end local v3    # "visibleItemCount":I
    .local v22, "visibleItemCount":I
    invoke-static {v15, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 371
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v15    # "width":I
    :goto_16
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v22

    goto :goto_15

    .end local v22    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_25
    move/from16 v22, v3

    .end local v3    # "visibleItemCount":I
    .restart local v22    # "visibleItemCount":I
    goto :goto_17

    .line 370
    .end local v2    # "i":I
    .end local v22    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_26
    move/from16 v22, v3

    .line 383
    .end local v3    # "visibleItemCount":I
    .restart local v22    # "visibleItemCount":I
    :goto_17
    move/from16 v1, v36

    const/high16 v2, 0x40000000    # 2.0f

    .end local v36    # "heightMode":I
    .local v1, "heightMode":I
    if-eq v1, v2, :cond_27

    .line 384
    move v3, v13

    .end local v16    # "heightSize":I
    .local v3, "heightSize":I
    goto :goto_18

    .line 383
    .end local v3    # "heightSize":I
    .restart local v16    # "heightSize":I
    :cond_27
    move/from16 v3, v16

    .line 387
    .end local v16    # "heightSize":I
    .restart local v3    # "heightSize":I
    :goto_18
    move/from16 v2, v37

    .end local v37    # "widthSize":I
    .local v2, "widthSize":I
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 388
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 608
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    return v0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 721
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 724
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    .line 581
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 583
    .local v0, "params":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 584
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 589
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 594
    if-eqz p1, :cond_2

    .line 595
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    .line 596
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroidx/appcompat/widget/ActionMenuView$LayoutParams;)V

    goto :goto_0

    .line 597
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    nop

    .line 598
    .local v0, "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_1

    .line 599
    const/16 v1, 0x10

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 601
    :cond_1
    return-object v0

    .line 603
    .end local v0    # "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    .line 614
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 615
    .local v0, "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 616
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .line 649
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    .line 650
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 651
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 652
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 653
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 654
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 655
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_0

    .line 656
    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v2}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    .line 655
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 657
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 658
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 661
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 563
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 564
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 114
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .line 731
    if-nez p1, :cond_0

    .line 732
    const/4 v0, 0x0

    return v0

    .line 734
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 735
    .local v0, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 736
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 737
    .local v2, "result":Z
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 738
    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 740
    :cond_1
    if-lez p1, :cond_2

    instance-of v3, v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 741
    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 743
    :cond_2
    return v2
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 698
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .line 637
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 638
    return-void
.end method

.method public invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 623
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 714
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 708
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 570
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 129
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 134
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 136
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 139
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 542
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 543
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    .line 544
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 440
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-nez v1, :cond_0

    .line 441
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 442
    return-void

    .line 445
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 446
    .local v1, "childCount":I
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    .line 447
    .local v2, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    .line 448
    .local v3, "dividerWidth":I
    const/4 v4, 0x0

    .line 449
    .local v4, "overflowWidth":I
    const/4 v5, 0x0

    .line 450
    .local v5, "nonOverflowCount":I
    sub-int v6, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    .line 451
    .local v6, "widthRemaining":I
    const/4 v7, 0x0

    .line 452
    .local v7, "hasOverflow":Z
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 453
    .local v8, "isLayoutRtl":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v10, 0x8

    if-ge v9, v1, :cond_5

    .line 454
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 455
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-ne v12, v10, :cond_1

    .line 456
    move/from16 v16, v3

    goto :goto_2

    .line 459
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 460
    .local v10, "p":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v12, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v12, :cond_4

    .line 461
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 462
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 463
    add-int/2addr v4, v3

    .line 465
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 468
    .local v12, "height":I
    if-eqz v8, :cond_3

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v13

    iget v14, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    .line 470
    .local v13, "l":I
    add-int v14, v13, v4

    .local v14, "r":I
    goto :goto_1

    .line 472
    .end local v13    # "l":I
    .end local v14    # "r":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    iget v14, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v14, v13, v14

    .line 473
    .restart local v14    # "r":I
    sub-int v13, v14, v4

    .line 475
    .restart local v13    # "l":I
    :goto_1
    div-int/lit8 v15, v12, 0x2

    sub-int v15, v2, v15

    .line 476
    .local v15, "t":I
    move/from16 v16, v3

    .end local v3    # "dividerWidth":I
    .local v16, "dividerWidth":I
    add-int v3, v15, v12

    .line 477
    .local v3, "b":I
    invoke-virtual {v11, v13, v15, v14, v3}, Landroid/view/View;->layout(IIII)V

    .line 479
    sub-int/2addr v6, v4

    .line 480
    const/4 v3, 0x1

    .line 481
    .end local v7    # "hasOverflow":Z
    .end local v12    # "height":I
    .end local v13    # "l":I
    .end local v14    # "r":I
    .end local v15    # "t":I
    .local v3, "hasOverflow":Z
    move v7, v3

    goto :goto_2

    .line 482
    .end local v16    # "dividerWidth":I
    .local v3, "dividerWidth":I
    .restart local v7    # "hasOverflow":Z
    :cond_4
    move/from16 v16, v3

    .end local v3    # "dividerWidth":I
    .restart local v16    # "dividerWidth":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v12, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v12

    iget v12, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v12

    .line 483
    .local v3, "size":I
    sub-int/2addr v6, v3

    .line 484
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    .line 486
    add-int/lit8 v5, v5, 0x1

    .line 453
    .end local v3    # "size":I
    .end local v10    # "p":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v11    # "v":Landroid/view/View;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_0

    .end local v16    # "dividerWidth":I
    .local v3, "dividerWidth":I
    :cond_5
    move/from16 v16, v3

    .line 490
    .end local v3    # "dividerWidth":I
    .end local v9    # "i":I
    .restart local v16    # "dividerWidth":I
    const/4 v3, 0x0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_6

    if-nez v7, :cond_6

    .line 492
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 493
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 494
    .local v9, "width":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 495
    .local v10, "height":I
    sub-int v11, p4, p2

    div-int/lit8 v11, v11, 0x2

    .line 496
    .local v11, "midHorizontal":I
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v11, v12

    .line 497
    .local v12, "l":I
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v2, v13

    .line 498
    .local v13, "t":I
    add-int v14, v12, v9

    add-int v15, v13, v10

    invoke-virtual {v3, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 499
    return-void

    .line 502
    .end local v3    # "v":Landroid/view/View;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "midHorizontal":I
    .end local v12    # "l":I
    .end local v13    # "t":I
    :cond_6
    xor-int/lit8 v9, v7, 0x1

    sub-int v9, v5, v9

    .line 503
    .local v9, "spacerCount":I
    if-lez v9, :cond_7

    div-int v11, v6, v9

    goto :goto_3

    :cond_7
    move v11, v3

    :goto_3
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 505
    .local v3, "spacerSize":I
    if-eqz v8, :cond_b

    .line 506
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    .line 507
    .local v11, "startRight":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    if-ge v12, v1, :cond_a

    .line 508
    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 509
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 510
    .local v14, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v10, :cond_9

    iget-boolean v15, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_8

    .line 511
    move/from16 v18, v4

    move/from16 v19, v5

    goto :goto_5

    .line 514
    :cond_8
    iget v15, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v11, v15

    .line 515
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 516
    .local v15, "width":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 517
    .local v17, "height":I
    div-int/lit8 v18, v17, 0x2

    sub-int v10, v2, v18

    .line 518
    .local v10, "t":I
    move/from16 v18, v4

    .end local v4    # "overflowWidth":I
    .local v18, "overflowWidth":I
    sub-int v4, v11, v15

    move/from16 v19, v5

    .end local v5    # "nonOverflowCount":I
    .local v19, "nonOverflowCount":I
    add-int v5, v10, v17

    invoke-virtual {v13, v4, v10, v11, v5}, Landroid/view/View;->layout(IIII)V

    .line 519
    iget v4, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v4, v15

    add-int/2addr v4, v3

    sub-int/2addr v11, v4

    goto :goto_5

    .line 510
    .end local v10    # "t":I
    .end local v15    # "width":I
    .end local v17    # "height":I
    .end local v18    # "overflowWidth":I
    .end local v19    # "nonOverflowCount":I
    .restart local v4    # "overflowWidth":I
    .restart local v5    # "nonOverflowCount":I
    :cond_9
    move/from16 v18, v4

    move/from16 v19, v5

    .line 507
    .end local v4    # "overflowWidth":I
    .end local v5    # "nonOverflowCount":I
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .restart local v18    # "overflowWidth":I
    .restart local v19    # "nonOverflowCount":I
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v18

    move/from16 v5, v19

    const/16 v10, 0x8

    goto :goto_4

    .end local v18    # "overflowWidth":I
    .end local v19    # "nonOverflowCount":I
    .restart local v4    # "overflowWidth":I
    .restart local v5    # "nonOverflowCount":I
    :cond_a
    move/from16 v18, v4

    move/from16 v19, v5

    .line 521
    .end local v4    # "overflowWidth":I
    .end local v5    # "nonOverflowCount":I
    .end local v11    # "startRight":I
    .end local v12    # "i":I
    .restart local v18    # "overflowWidth":I
    .restart local v19    # "nonOverflowCount":I
    goto :goto_8

    .line 522
    .end local v18    # "overflowWidth":I
    .end local v19    # "nonOverflowCount":I
    .restart local v4    # "overflowWidth":I
    .restart local v5    # "nonOverflowCount":I
    :cond_b
    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "overflowWidth":I
    .end local v5    # "nonOverflowCount":I
    .restart local v18    # "overflowWidth":I
    .restart local v19    # "nonOverflowCount":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    .line 523
    .local v4, "startLeft":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    if-ge v5, v1, :cond_e

    .line 524
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 525
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 526
    .local v11, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_d

    iget-boolean v12, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v12, :cond_c

    .line 527
    goto :goto_7

    .line 530
    :cond_c
    iget v12, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v4, v12

    .line 531
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 532
    .local v12, "width":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 533
    .local v14, "height":I
    div-int/lit8 v15, v14, 0x2

    sub-int v15, v2, v15

    .line 534
    .local v15, "t":I
    add-int v13, v4, v12

    add-int v0, v15, v14

    invoke-virtual {v10, v4, v15, v13, v0}, Landroid/view/View;->layout(IIII)V

    .line 535
    iget v0, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v12

    add-int/2addr v0, v3

    add-int/2addr v4, v0

    .line 523
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v12    # "width":I
    .end local v14    # "height":I
    .end local v15    # "t":I
    :cond_d
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    .line 538
    .end local v4    # "startLeft":I
    .end local v5    # "i":I
    :cond_e
    :goto_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 148
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 149
    .local v0, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 151
    if-eq v0, v1, :cond_1

    .line 152
    iput v3, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 157
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 158
    .local v1, "widthSize":I
    iget-boolean v4, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v4, :cond_2

    iget v5, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v5, :cond_2

    .line 159
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 160
    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 163
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v2

    .line 164
    .local v2, "childCount":I
    iget-boolean v4, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_3

    if-lez v2, :cond_3

    .line 165
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_2

    .line 168
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 169
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 170
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 171
    .local v6, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iput v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 168
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 173
    .end local v4    # "i":I
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 175
    :goto_2
    return-void
.end method

.method public peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 1

    .line 680
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .line 754
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 755
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 670
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 671
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 672
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 142
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 143
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 552
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 553
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 554
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .line 576
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    .line 577
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 98
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 99
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 100
    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 106
    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0
    .param p1, "presenter"    # Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 123
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 124
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 125
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 689
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
