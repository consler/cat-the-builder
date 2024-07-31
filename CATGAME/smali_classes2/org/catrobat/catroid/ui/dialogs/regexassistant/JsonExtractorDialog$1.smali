.class Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog$1;
.super Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;
.source "JsonExtractorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;->createDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;

    .line 58
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog$1;->this$0:Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;

    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public validateInput(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method
