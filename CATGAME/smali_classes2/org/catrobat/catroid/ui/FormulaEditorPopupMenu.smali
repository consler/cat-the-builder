.class public Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;
.super Ljava/lang/Object;
.source "FormulaEditorPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$OnUpdateListener;
    }
.end annotation


# instance fields
.field private clipboard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation
.end field

.field private final copy:Landroid/view/View;

.field private final cut:Landroid/view/View;

.field private final formulaEditorEditText:Landroid/view/View;

.field private onUpdateListener:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$OnUpdateListener;

.field private final paste:Landroid/view/View;

.field private final popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formulaEditorEditText"    # Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->formulaEditorEditText:Landroid/view/View;

    .line 62
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 63
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0d0158

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "popupView":Landroid/view/View;
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    .line 66
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 67
    iget-object v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 69
    const v2, 0x7f0a032e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->cut:Landroid/view/View;

    .line 70
    const v2, 0x7f0a0327

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->copy:Landroid/view/View;

    .line 71
    const v2, 0x7f0a04a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->paste:Landroid/view/View;

    .line 73
    iget-object v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->cut:Landroid/view/View;

    new-instance v3, Lorg/catrobat/catroid/ui/-$$Lambda$FormulaEditorPopupMenu$xcTOPzVJq3gtdJ-r8l_kbDBHh5g;

    invoke-direct {v3, p0, p2}, Lorg/catrobat/catroid/ui/-$$Lambda$FormulaEditorPopupMenu$xcTOPzVJq3gtdJ-r8l_kbDBHh5g;-><init>(Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->copy:Landroid/view/View;

    new-instance v3, Lorg/catrobat/catroid/ui/-$$Lambda$FormulaEditorPopupMenu$KAbuu088kKFz0xfTNfiA7SZ0tII;

    invoke-direct {v3, p0, p2}, Lorg/catrobat/catroid/ui/-$$Lambda$FormulaEditorPopupMenu$KAbuu088kKFz0xfTNfiA7SZ0tII;-><init>(Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->paste:Landroid/view/View;

    new-instance v3, Lorg/catrobat/catroid/ui/-$$Lambda$FormulaEditorPopupMenu$Vf2jivrfua-e4Ce7aHGImrpppcg;

    invoke-direct {v3, p0, p2}, Lorg/catrobat/catroid/ui/-$$Lambda$FormulaEditorPopupMenu$Vf2jivrfua-e4Ce7aHGImrpppcg;-><init>(Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->getOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v2

    .line 98
    .local v2, "onTouchListener":Landroid/view/View$OnTouchListener;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->cut:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    iget-object v3, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->copy:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-object v3, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->paste:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    iget-object v3, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private cloneTokens(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 139
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "t":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 141
    .local v2, "token":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->deepCopy()Lorg/catrobat/catroid/formulaeditor/InternToken;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v2    # "token":Lorg/catrobat/catroid/formulaeditor/InternToken;
    goto :goto_0

    .line 143
    :cond_0
    return-object v0
.end method

.method private copyTokens(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->cloneTokens(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->clipboard:Ljava/util/List;

    .line 148
    return-void
.end method

.method private getOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 105
    new-instance v0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;-><init>(Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 188
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$FormulaEditorPopupMenu(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;Landroid/view/View;)V
    .locals 1
    .param p1, "formulaEditorEditText"    # Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 74
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getSelectedTokens()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->copyTokens(Ljava/util/List;)V

    .line 75
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->deleteSelection()V

    .line 76
    iget-object v0, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->onUpdateListener:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$OnUpdateListener;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$OnUpdateListener;->onUpdate()V

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 80
    return-void
.end method

.method public synthetic lambda$new$1$FormulaEditorPopupMenu(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;Landroid/view/View;)V
    .locals 1
    .param p1, "formulaEditorEditText"    # Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 83
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getSelectedTokens()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->copyTokens(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 85
    return-void
.end method

.method public synthetic lambda$new$2$FormulaEditorPopupMenu(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;Landroid/view/View;)V
    .locals 1
    .param p1, "formulaEditorEditText"    # Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->clipboard:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->clipboard:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->cloneTokens(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->addTokens(Ljava/util/List;)V

    .line 90
    iget-object v0, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->onUpdateListener:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$OnUpdateListener;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$OnUpdateListener;->onUpdate()V

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 95
    return-void
.end method

.method public setOnUpdateListener(Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$OnUpdateListener;)V
    .locals 0
    .param p1, "onUpdateListener"    # Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$OnUpdateListener;

    .line 151
    iput-object p1, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->onUpdateListener:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$OnUpdateListener;

    .line 152
    return-void
.end method

.method public show(IIZ)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isHighlighted"    # Z

    .line 155
    iget-object v0, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->clipboard:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 157
    .local v0, "isClipboardEmpty":Z
    :goto_1
    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    .line 158
    return-void

    .line 161
    :cond_2
    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 162
    iget-object v3, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->paste:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 164
    :cond_3
    iget-object v3, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->paste:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :goto_2
    if-eqz p3, :cond_4

    .line 168
    iget-object v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->copy:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->cut:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 171
    :cond_4
    iget-object v3, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->copy:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v3, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->cut:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :goto_3
    iget-object v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->formulaEditorEditText:Landroid/view/View;

    invoke-virtual {v2, v3, v1, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 176
    return-void
.end method
