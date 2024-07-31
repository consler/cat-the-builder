.class public Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;
.super Landroid/app/Dialog;
.source "FormulaEditorIntroDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;
    }
.end annotation


# static fields
.field private static final NONE:I = -0x1


# instance fields
.field private formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

.field private introSlides:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;",
            ">;"
        }
    .end annotation
.end field

.field private introSummary:Landroid/widget/TextView;

.field private introTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;I)V
    .locals 1
    .param p1, "formulaEditorFragment"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
    .param p2, "style"    # I

    .line 54
    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 55
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 56
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->getIntroDialogSlides()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->introSlides:Ljava/util/Queue;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->introTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->introSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;)Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    return-object v0
.end method

.method private getIntroDialogSlides()Ljava/util/Queue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 185
    .local v0, "introSlides":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;>;"
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;

    const v2, 0x7f1203e2

    const v3, 0x7f1203d9

    const/4 v4, -0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;-><init>(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;III)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;

    const v2, 0x7f1203e4

    const v3, 0x7f1203db

    const v4, 0x7f0a0396

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;-><init>(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;III)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;

    const v2, 0x7f1203e5

    const v3, 0x7f1203dc

    const v4, 0x7f0a039e

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;-><init>(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;III)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;

    const v2, 0x7f1203df

    const v3, 0x7f1203d6

    const v4, 0x7f0a03a4

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;-><init>(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;III)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;

    const v2, 0x7f1203e7

    const v3, 0x7f1203de

    const v4, 0x7f0a03ae

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;-><init>(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;III)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;

    const v2, 0x7f1203e3

    const v3, 0x7f1203da

    const v4, 0x7f0a03a9

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;-><init>(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;III)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;

    const v2, 0x7f1203e6

    const v3, 0x7f1203dd

    const v4, 0x7f0a03ab

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;-><init>(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;III)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;

    const v2, 0x7f1203e1

    const v3, 0x7f1203d8

    const v4, 0x7f0a03b0

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;-><init>(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;III)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;

    const v2, 0x7f1203e0

    const v3, 0x7f1203d7

    const v4, 0x7f0a03a5

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;-><init>(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;III)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 229
    return-object v0
.end method

.method private nextSlide()V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->introSlides:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->onBackPressed()V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->introSlides:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->applySlide()V

    .line 104
    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 108
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 109
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/SnackbarUtil;->setHintShown(Landroid/app/Activity;Ljava/lang/String;)V

    .line 110
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 111
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->onBackPressed()V

    .line 89
    goto :goto_0

    .line 91
    :pswitch_1
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->nextSlide()V

    .line 92
    nop

    .line 96
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a03f3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    const v0, 0x7f0d012b

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 69
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 70
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 71
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 75
    const v1, 0x7f0a03f6

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->introTitle:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0a03f5

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->introSummary:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0a03f4

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f0a03f3

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->nextSlide()V

    .line 82
    return-void
.end method
