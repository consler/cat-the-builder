.class public Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "BrickLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/BrickLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;
    }
.end annotation


# static fields
.field private static final NO_SPACING:I = -0x1


# instance fields
.field private editText:Z

.field private forceNewLine:Z

.field private horizontalSpacing:I

.field private newLine:Z

.field private positionX:I

.field private positionY:I

.field private verticalSpacing:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 603
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 587
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->horizontalSpacing:I

    .line 588
    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->verticalSpacing:I

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->newLine:Z

    .line 590
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->forceNewLine:Z

    .line 591
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->editText:Z

    .line 604
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 598
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 587
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->horizontalSpacing:I

    .line 588
    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->verticalSpacing:I

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->newLine:Z

    .line 590
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->forceNewLine:Z

    .line 591
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->editText:Z

    .line 599
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 600
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 607
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->horizontalSpacing:I

    .line 588
    iput v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->verticalSpacing:I

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->newLine:Z

    .line 590
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->forceNewLine:Z

    .line 591
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->editText:Z

    .line 608
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 582
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->newLine:Z

    return v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 582
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->forceNewLine:Z

    return v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 582
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->editText:Z

    return v0
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 582
    iget v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->horizontalSpacing:I

    return v0
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 582
    iget v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->verticalSpacing:I

    return v0
.end method

.method static synthetic access$500(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 582
    iget v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->positionX:I

    return v0
.end method

.method static synthetic access$600(Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    .line 582
    iget v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->positionY:I

    return v0
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 644
    sget-object v0, Lorg/catrobat/catroid/R$styleable;->BrickLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 648
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->horizontalSpacing:I

    .line 650
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->verticalSpacing:I

    .line 652
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->newLine:Z

    .line 653
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->forceNewLine:Z

    .line 654
    const/4 v1, 0x2

    .line 655
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->editText:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 659
    nop

    .line 660
    return-void

    .line 658
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 659
    throw v1
.end method


# virtual methods
.method public getNewLine()Z
    .locals 1

    .line 640
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->newLine:Z

    return v0
.end method

.method public horizontalSpacingSpecified()Z
    .locals 2

    .line 611
    iget v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->horizontalSpacing:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEditText(Z)V
    .locals 0
    .param p1, "editText"    # Z

    .line 632
    iput-boolean p1, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->editText:Z

    .line 633
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .param p1, "horizontalSpacing"    # I

    .line 624
    iput p1, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->horizontalSpacing:I

    .line 625
    return-void
.end method

.method public setNewLine(Z)V
    .locals 0
    .param p1, "newLine"    # Z

    .line 636
    iput-boolean p1, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->newLine:Z

    .line 637
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 619
    iput p1, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->positionX:I

    .line 620
    iput p2, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->positionY:I

    .line 621
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 628
    iput p1, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->width:I

    .line 629
    return-void
.end method

.method public verticalSpacingSpecified()Z
    .locals 2

    .line 615
    iget v0, p0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->verticalSpacing:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
