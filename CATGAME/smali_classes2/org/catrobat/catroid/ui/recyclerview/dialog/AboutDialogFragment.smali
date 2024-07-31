.class public Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AboutDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 16
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 46
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d012a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0a0345

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    .local v2, "developerUrlView":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 51
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "https://catrob.at/licenses"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 52
    const v6, 0x7f120265

    invoke-virtual {v0, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 51
    const v6, 0x7f120023

    invoke-virtual {v0, v6, v5}, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "developerUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v9, 0x7f0a0343

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 57
    .local v9, "aboutCatrobatView":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 59
    new-array v4, v4, [Ljava/lang/Object;

    const-string v10, "https://www.catrobat.org/"

    aput-object v10, v4, v7

    .line 60
    const v7, 0x7f120263

    invoke-virtual {v0, v7}, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    .line 59
    invoke-virtual {v0, v6, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "aboutCatrobatUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v6, 0x7f0a0346

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 65
    .local v6, "aboutVersionNameTextView":Landroid/widget/TextView;
    const-string v7, "catroid"

    const-string v8, "pocketCodeBeta"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "-90"

    goto :goto_0

    :cond_0
    const-string v7, ""

    .line 66
    .local v7, "versionCode":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f12004c

    invoke-virtual {v0, v10}, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x7f120267

    invoke-virtual {v0, v11}, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f12003e

    .line 67
    invoke-virtual {v0, v10}, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lorg/catrobat/catroid/utils/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "versionName":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v10, 0x7f0a0344

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 71
    .local v10, "aboutCatrobatVersionTextView":Landroid/widget/TextView;
    const-wide v11, 0x3ff1c28f5c28f5c3L    # 1.11

    .line 72
    .local v11, "catrobatVersion":D
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f120262

    .line 73
    invoke-virtual {v0, v14}, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 74
    .local v13, "catrobatVersionName":Ljava/lang/String;
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v14, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    invoke-direct {v14, v15}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v15, 0x7f120266

    .line 77
    invoke-virtual {v14, v15}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v14

    .line 78
    invoke-virtual {v14, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f1205ff

    .line 79
    invoke-virtual {v14, v15, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    .line 76
    return-object v3
.end method
