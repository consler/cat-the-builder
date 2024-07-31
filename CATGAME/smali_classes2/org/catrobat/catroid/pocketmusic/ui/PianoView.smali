.class public Lorg/catrobat/catroid/pocketmusic/ui/PianoView;
.super Landroid/view/ViewGroup;
.source "PianoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;
    }
.end annotation


# static fields
.field private static final BLACK_KEY_COUNT:I = 0x5

.field private static final HEIGHT_DISTRIBUTION:[Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

.field private static final WHITE_KEY_COUNT:I = 0x8


# instance fields
.field private blackPianoKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private currentHeight:I

.field private margin:I

.field private whitePianoKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->oneAndAHalfButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->doubleButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->oneAndAHalfButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->oneAndAHalfButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->doubleButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->doubleButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->oneAndAHalfButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->singleButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->HEIGHT_DISTRIBUTION:[Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->blackPianoKeys:Ljava/util/List;

    .line 66
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->margin:I

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    const v2, 0x7f060153

    const/4 v3, 0x6

    const v4, 0x7f060154

    if-ge v0, v1, :cond_0

    .line 68
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v1, "whiteButton":Landroid/widget/TextView;
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 71
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 72
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    sget-object v2, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->WHITE_KEY_INDICES:[I

    aget v2, v2, v0

    invoke-static {v2}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getMidiValueForRow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->addView(Landroid/view/View;)V

    .line 67
    .end local v1    # "whiteButton":Landroid/widget/TextView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 79
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, "blackButton":Landroid/widget/TextView;
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 82
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 83
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    sget-object v5, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->BLACK_KEY_INDICES:[I

    aget v5, v5, v0

    invoke-static {v5}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getMidiValueForRow(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v5, p0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->blackPianoKeys:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->addView(Landroid/view/View;)V

    .line 78
    .end local v1    # "blackButton":Landroid/widget/TextView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    .line 90
    return-void
.end method

.method private round(F)I
    .locals 1
    .param p1, "floatValue"    # F

    .line 229
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private roundUp(F)I
    .locals 2
    .param p1, "floatValue"    # F

    .line 225
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getBlackPianoKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->blackPianoKeys:Ljava/util/List;

    return-object v0
.end method

.method public getWhitePianoKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 94
    move-object/from16 v0, p0

    if-eqz p1, :cond_7

    .line 96
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->margin:I

    mul-int/lit8 v3, v2, 0x1a

    sub-int/2addr v1, v3

    .line 97
    .local v1, "collectiveButtonHeight":I
    const/4 v3, 0x0

    .line 99
    .local v3, "currentButtonCount":F
    iput v2, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    .line 101
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->getMeasuredWidth()I

    move-result v2

    iget v4, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->margin:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v2, v4

    .line 103
    .local v2, "rightside":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x41500000    # 13.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-ge v4, v5, :cond_5

    .line 105
    int-to-float v5, v1

    sub-float/2addr v8, v3

    div-float/2addr v5, v8

    invoke-direct {v0, v5}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->round(F)I

    move-result v5

    .line 108
    .local v5, "singleButtonHeight":I
    int-to-float v8, v5

    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float/2addr v8, v12

    iget v13, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->margin:I

    int-to-float v14, v13

    add-float/2addr v8, v14

    .line 109
    .local v8, "oneAndAHalfButtonHeight":F
    mul-int/lit8 v14, v5, 0x2

    mul-int/2addr v13, v11

    add-int/2addr v14, v13

    .line 111
    .local v14, "doubleButtonHeight":I
    sget-object v13, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$1;->$SwitchMap$org$catrobat$catroid$pocketmusic$ui$PianoView$ButtonHeight:[I

    sget-object v15, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->HEIGHT_DISTRIBUTION:[Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    aget-object v15, v15, v4

    invoke-virtual {v15}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->ordinal()I

    move-result v15

    aget v13, v13, v15

    if-eq v13, v9, :cond_4

    const/4 v7, 0x3

    if-eq v13, v11, :cond_1

    if-eq v13, v7, :cond_0

    goto/16 :goto_2

    .line 144
    :cond_0
    iget-object v7, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget v9, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->margin:I

    iget v12, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    add-int v13, v12, v14

    invoke-virtual {v7, v9, v12, v2, v13}, Landroid/widget/TextView;->layout(IIII)V

    .line 150
    iget v7, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    add-int/2addr v7, v14

    iput v7, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    .line 151
    mul-int/lit8 v7, v5, 0x2

    sub-int/2addr v1, v7

    .line 152
    add-float/2addr v3, v6

    .line 153
    iget-object v6, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    div-int/lit8 v7, v14, 0x2

    iget-object v9, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    .line 154
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    invoke-direct {v0, v9}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->round(F)I

    move-result v9

    div-int/2addr v9, v11

    sub-int/2addr v7, v9

    .line 153
    invoke-virtual {v6, v10, v7, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_2

    .line 126
    :cond_1
    iget-object v6, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget v9, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->margin:I

    iget v13, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    .line 130
    invoke-direct {v0, v8}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->round(F)I

    move-result v15

    add-int/2addr v15, v13

    .line 126
    invoke-virtual {v6, v9, v13, v2, v15}, Landroid/widget/TextView;->layout(IIII)V

    .line 132
    iget v6, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    invoke-direct {v0, v8}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->round(F)I

    move-result v9

    add-int/2addr v6, v9

    iput v6, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    .line 133
    int-to-float v6, v5

    mul-float/2addr v6, v12

    invoke-direct {v0, v6}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->round(F)I

    move-result v6

    sub-int/2addr v1, v6

    .line 134
    add-float/2addr v3, v12

    .line 135
    if-eqz v4, :cond_3

    if-ne v4, v7, :cond_2

    goto :goto_1

    .line 139
    :cond_2
    iget-object v6, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->round(F)I

    move-result v9

    div-int/2addr v9, v7

    mul-int/2addr v9, v11

    iget-object v7, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    .line 140
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    invoke-direct {v0, v7}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->round(F)I

    move-result v7

    div-int/2addr v7, v11

    sub-int/2addr v9, v7

    .line 139
    invoke-virtual {v6, v10, v9, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 142
    goto :goto_2

    .line 136
    :cond_3
    :goto_1
    iget-object v6, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    div-int/lit8 v7, v5, 0x2

    iget-object v9, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    .line 137
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    invoke-direct {v0, v9}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->round(F)I

    move-result v9

    div-int/2addr v9, v11

    sub-int/2addr v7, v9

    .line 136
    invoke-virtual {v6, v10, v7, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 113
    :cond_4
    iget-object v6, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget v9, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->margin:I

    iget v12, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    add-int v13, v12, v5

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/widget/TextView;->layout(IIII)V

    .line 119
    iget v6, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    add-int/2addr v6, v5

    iput v6, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    .line 120
    int-to-float v6, v5

    invoke-direct {v0, v6}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->round(F)I

    move-result v6

    sub-int/2addr v1, v6

    .line 121
    add-float/2addr v3, v7

    .line 122
    iget-object v6, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    div-int/lit8 v7, v5, 0x2

    iget-object v9, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    .line 123
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    invoke-direct {v0, v9}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->round(F)I

    move-result v9

    div-int/2addr v9, v11

    sub-int/2addr v7, v9

    .line 122
    invoke-virtual {v6, v10, v7, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 124
    nop

    .line 157
    :goto_2
    iget v6, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    iget v7, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->margin:I

    mul-int/2addr v7, v11

    add-int/2addr v6, v7

    iput v6, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    .line 103
    .end local v5    # "singleButtonHeight":I
    .end local v8    # "oneAndAHalfButtonHeight":F
    .end local v14    # "doubleButtonHeight":I
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 160
    .end local v4    # "i":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->margin:I

    mul-int/lit8 v5, v5, 0x1a

    sub-int/2addr v4, v5

    .line 161
    .end local v1    # "collectiveButtonHeight":I
    .local v4, "collectiveButtonHeight":I
    int-to-float v1, v4

    div-float/2addr v1, v8

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->roundUp(F)I

    move-result v1

    .line 163
    .local v1, "singleButtonHeight":I
    sub-int/2addr v4, v1

    .line 164
    const/high16 v3, 0x3f800000    # 1.0f

    .line 166
    iget v5, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->margin:I

    add-int/2addr v5, v1

    iput v5, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    .line 168
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    const/4 v12, 0x5

    if-ge v5, v12, :cond_7

    .line 170
    int-to-float v12, v4

    sub-float v13, v8, v3

    div-float/2addr v12, v13

    invoke-direct {v0, v12}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->roundUp(F)I

    move-result v1

    .line 172
    iget-object v12, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->blackPianoKeys:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 173
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3ed70a3d    # 0.42f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    iget v14, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    add-int v15, v14, v1

    iget v8, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->margin:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v15, v8

    .line 172
    invoke-virtual {v12, v13, v14, v2, v15}, Landroid/widget/TextView;->layout(IIII)V

    .line 179
    iget-object v8, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->blackPianoKeys:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    div-int/lit8 v12, v1, 0x2

    iget-object v13, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->blackPianoKeys:Ljava/util/List;

    .line 180
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getTextSize()F

    move-result v13

    invoke-direct {v0, v13}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->round(F)I

    move-result v13

    div-int/2addr v13, v11

    sub-int/2addr v12, v13

    .line 179
    invoke-virtual {v8, v10, v12, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 182
    iget v8, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    mul-int/lit8 v12, v1, 0x2

    iget v13, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->margin:I

    mul-int/lit8 v14, v13, 0x4

    add-int/2addr v12, v14

    add-int/2addr v8, v12

    iput v8, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    .line 183
    mul-int/lit8 v12, v1, 0x2

    sub-int/2addr v4, v12

    .line 184
    add-float/2addr v3, v6

    .line 186
    if-ne v5, v9, :cond_6

    .line 187
    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v1

    add-int/2addr v8, v13

    iput v8, v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->currentHeight:I

    .line 188
    sub-int/2addr v4, v1

    .line 189
    add-float/2addr v3, v7

    .line 168
    :cond_6
    add-int/lit8 v5, v5, 0x1

    const/high16 v8, 0x41500000    # 13.0f

    goto :goto_3

    .line 193
    .end local v1    # "singleButtonHeight":I
    .end local v2    # "rightside":I
    .end local v3    # "currentButtonCount":F
    .end local v4    # "collectiveButtonHeight":I
    .end local v5    # "i":I
    :cond_7
    return-void
.end method

.method public setKeyColor(Lorg/catrobat/catroid/pocketmusic/note/NoteName;Z)V
    .locals 6
    .param p1, "note"    # Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .param p2, "active"    # Z

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xd

    if-gt v0, v1, :cond_1

    .line 198
    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getMidiValueForRow(I)I

    move-result v1

    invoke-static {v1}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v1

    .line 199
    .local v1, "tempNote":Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    invoke-virtual {p1, v1}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    goto :goto_1

    .line 197
    .end local v1    # "tempNote":Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    :goto_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 205
    .local v1, "isBlackKey":Ljava/lang/Boolean;
    sget-object v2, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->BLACK_KEY_INDICES:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    .line 206
    .local v2, "index":I
    if-gez v2, :cond_3

    .line 207
    sget-object v3, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->WHITE_KEY_INDICES:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    .line 208
    if-gez v2, :cond_2

    .line 209
    return-void

    .line 211
    :cond_2
    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->whitePianoKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .local v3, "noteView":Landroid/view/View;
    goto :goto_2

    .line 213
    .end local v3    # "noteView":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->blackPianoKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 214
    .restart local v3    # "noteView":Landroid/view/View;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 216
    :goto_2
    if-eqz p2, :cond_4

    .line 217
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06010a

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 219
    :cond_4
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 220
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    const v5, 0x7f060153

    goto :goto_3

    :cond_5
    const v5, 0x7f060154

    .line 219
    :goto_3
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 222
    :goto_4
    return-void
.end method
