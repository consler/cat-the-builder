.class public Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;
.super Ljava/lang/Object;
.source "RegularExpressionAssistantDialog.java"


# static fields
.field static listOfFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionFeature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field context:Landroid/content/Context;

.field fragmentManager:Landroidx/fragment/app/FragmentManager;

.field namesOfFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 47
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->createListOfFeatures()V

    .line 48
    return-void
.end method

.method private buildListOfFeatures(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 5
    .param p1, "builder"    # Landroidx/appcompat/app/AlertDialog$Builder;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->namesOfFeatures:Ljava/util/List;

    .line 66
    sget-object v0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->listOfFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionFeature;

    .line 67
    .local v1, "rf":Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionFeature;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->namesOfFeatures:Ljava/util/List;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionFeature;->getTitleId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v1    # "rf":Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionFeature;
    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->namesOfFeatures:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/regexassistant/-$$Lambda$RegularExpressionAssistantDialog$YSHKa8c9CbKVDQT8Gv_b-xWz61c;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/-$$Lambda$RegularExpressionAssistantDialog$YSHKa8c9CbKVDQT8Gv_b-xWz61c;-><init>(Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 72
    return-void
.end method

.method private createListOfFeatures()V
    .locals 3

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->listOfFeatures:Ljava/util/List;

    .line 76
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->listOfFeatures:Ljava/util/List;

    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method


# virtual methods
.method public createAssistant()V
    .locals 3

    .line 51
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    const v1, 0x7f120366

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 54
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/regexassistant/-$$Lambda$RegularExpressionAssistantDialog$R3gD1Lx-aApDl3oo_dC7Ac0YLyQ;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/-$$Lambda$RegularExpressionAssistantDialog$R3gD1Lx-aApDl3oo_dC7Ac0YLyQ;-><init>(Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;)V

    const v2, 0x7f1204ca

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 55
    const v1, 0x7f1201b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 57
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->buildListOfFeatures(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 59
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 61
    .local v1, "dialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 62
    return-void
.end method

.method public synthetic lambda$buildListOfFeatures$1$RegularExpressionAssistantDialog(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "indexInList"    # I

    .line 71
    sget-object v0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->listOfFeatures:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionFeature;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionFeature;->openDialog(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$createAssistant$0$RegularExpressionAssistantDialog(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/catrobat/catroid/web/WebpageUtils;->openWikiPage(Landroid/content/Context;)V

    return-void
.end method
