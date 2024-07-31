.class final Lorg/catrobat/catroid/stage/BrickDialogManager$createAskDialog$askDialog$1;
.super Ljava/lang/Object;
.source "BrickDialogManager.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/stage/BrickDialogManager;->createAskDialog(Lorg/catrobat/catroid/content/actions/AskAction;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $askAction:Lorg/catrobat/catroid/content/actions/AskAction;

.field final synthetic $editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/actions/AskAction;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/stage/BrickDialogManager$createAskDialog$askDialog$1;->$askAction:Lorg/catrobat/catroid/content/actions/AskAction;

    iput-object p2, p0, Lorg/catrobat/catroid/stage/BrickDialogManager$createAskDialog$askDialog$1;->$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .line 89
    iget-object v0, p0, Lorg/catrobat/catroid/stage/BrickDialogManager$createAskDialog$askDialog$1;->$askAction:Lorg/catrobat/catroid/content/actions/AskAction;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/BrickDialogManager$createAskDialog$askDialog$1;->$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/AskAction;->setAnswerText(Ljava/lang/String;)V

    .line 90
    return-void
.end method
