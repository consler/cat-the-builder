.class public Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;
.super Ljava/lang/Object;
.source "SingleSeekBar.java"


# instance fields
.field private brickField:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

.field private formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

.field private seekBarTitleId:I

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;I)V
    .locals 0
    .param p1, "formulaBrick"    # Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    .param p2, "brickField"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .param p3, "seekBarTitleId"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    .line 46
    iput-object p2, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->brickField:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 47
    iput p3, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->seekBarTitleId:I

    .line 48
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->valueTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;)Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->brickField:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;)Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    return-object v0
.end method


# virtual methods
.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    const v0, 0x7f0d01d3

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 55
    const v1, 0x7f0a05b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, "seekBarTitle":Landroid/widget/TextView;
    iget v2, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->seekBarTitleId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    const v2, 0x7f0a05b9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->valueTextView:Landroid/widget/TextView;

    .line 59
    new-instance v3, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$SingleSeekBar$CS7-8LHjpHAz_GP9pG7zHgC5zB4;

    invoke-direct {v3, p0, p1}, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$SingleSeekBar$CS7-8LHjpHAz_GP9pG7zHgC5zB4;-><init>(Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v2, 0x7f0a05b7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 62
    .local v2, "seekBar":Landroid/widget/SeekBar;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    iget-object v4, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->brickField:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->getTrimmedFormulaString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "currentStringValue":Ljava/lang/String;
    const-string v4, ","

    const-string v5, "."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 64
    iget-object v4, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v4, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar$1;

    invoke-direct {v4, p0}, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar$1;-><init>(Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;)V

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 81
    return-object v0
.end method

.method public synthetic lambda$getView$0$SingleSeekBar(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view1"    # Landroid/view/View;

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->brickField:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-static {p1, v0, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    return-void
.end method
